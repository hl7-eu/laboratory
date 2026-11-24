### Scope

This page describes how microbiological results are represented in this
guide. They follow the conventions of the HL7 Europe Laboratory Semantic
Workgroup — the white paper *Conventions for FHIR based Microbiology Result
Reporting* and its terminology workbook — and are organised along the
microbiology workflow. Microscopy, culture, the identification of the organism
the targeted detection of a target, the susceptibility, the resistance and
the quantification are profiled. Serology and organism properties are not
profiled yet; their sections record the state of the
workgroup's conventions.

### Workflow

The diagram shows a typical microbiology laboratory workflow, adapted from
figure 1 of the white paper. The real workflow of a laboratory may vary.

<p>{% include microbiology-workflow.svg %}</p>

The colours say what a step produces:

* **Light blue:** a status message, e.g. that the specimen was received or the
  order rejected. These steps are not profiled here.
* **Green:** a preliminary or final result that is reported, together with a
  status message.
* **White:** an internal step of the laboratory that is not reported on its
  own, such as inoculation and staining. The culture is internal as well, but
  its results can also be reported.

Each reported step has a section of its own:

| Workflow step | Section | Profiles |
|---|---|---|
| Specimen check, sampling, collection | [Specimen and pre-analytics](#specimen-and-pre-analytics) | [Specimen: microbiology](StructureDefinition-Specimen-microbiology-eu-lab.html) |
| Inoculation, culture | [Culture](#culture) | [general culture](StructureDefinition-Observation-cultureGeneral-eu-lab.html), [specific culture](StructureDefinition-Observation-cultureSpecific-eu-lab.html) |
| Identification | [Identification](#identification) | [organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html) |
| Susceptibility | [Susceptibility](#susceptibility) | [antimicrobial susceptibility](StructureDefinition-Observation-susceptibility-eu-lab.html), [antibiogram](StructureDefinition-Observation-susceptibilityPanel-eu-lab.html) |
| Resistance genes, resistance mechanisms | [Resistance](#resistance) | [resistance](StructureDefinition-Observation-resistance-eu-lab.html) |
| Organism properties | [Organism properties](#organism-properties) | not profiled yet |
| Staining, microscopy | [Microscopy](#microscopy) | [general microscopy](StructureDefinition-Observation-microscopyGeneral-eu-lab.html), [specific microscopy](StructureDefinition-Observation-microscopySpecific-eu-lab.html) |
| Direct identification (PCR, antigen detection) | [Direct identification](#direct-identification) | [targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html), [Ct value](StructureDefinition-Observation-ctValue-eu-lab.html) |
| Quantification | [Quantification](#quantification) | [pathogen load](StructureDefinition-Observation-pathogenLoad-eu-lab.html) |
| Indirect identification (antibody detection) | [Serology](#serology) | not profiled yet |

### Core principles

The microbiology profiles apply the principles the workgroup states for the
whole domain:

* **The LOINC code says what was tested.** Its component names the target as
  precisely as the use case needs; a broad test gets a broad code
  (`41852-5 |Microorganism or agent identified in Specimen|`).
* **Specimen and method are post-coordinated.** Codes that leave the specimen
  and the method open are preferred. The specimen is always an explicit
  `Specimen` resource with its type in `Specimen.type`; the technique is always
  given in `Observation.method`, also where an accepted code pre-coordinates
  the specimen or a broad method category. Both are required in every
  microbiology profile. Where the technique is not known, the most general
  concept of the method value set is used, e.g. `702658000 |Microbial
  culture|`; where the value set has none, the data-absent-reason extension
  says that the method is unknown.
* **Pre-coordinated codes are accepted where the workgroup admits them.** The
  code of a profile is bound extensibly to all admitted codes; the preferred
  codes are named in an additional binding. A laboratory that cannot yet
  post-coordinate uses a pre-coordinated code and still represents specimen and
  method explicitly.
* **SNOMED CT carries the nominal answers,** the specimen, the staining and
  the method.
* **An indeterminate result is not a value.** An examination that was
  performed but yielded no usable statement carries
  `82334004 |Indeterminate|` in `dataAbsentReason`.
* **The workflow stays visible.** A later step points back at the step that
  caused it through `triggeredBy`; several results of one examination are
  grouped through `hasMember`; a result read from another result points at it
  through `derivedFrom`.

{% capture op_text %}
The white paper recommends giving specimen and method explicitly. This guide makes both required (`Observation.method` 1..1, `Specimen.type` 1..1), also where an accepted code pre-coordinates them. For an unknown identification or susceptibility method, which have no general technique, it uses the data-absent-reason extension. The antibiogram, which groups susceptibility results without a result of its own, has an optional method: its members can combine techniques, and each states its own.
{% endcapture %}
{% include open-item.html issue=189 typ="interim" title="Method and specimen type required" text=op_text %}

### Profiles

A profile is defined by the question asked and the type of its answer, not by
the technique used.

| Question | Profile | `Observation.code` | `Observation.value[x]` |
|---|---|---|---|
| Does anything grow? | [Observation Results: general culture](StructureDefinition-Observation-cultureGeneral-eu-lab.html) | `11475-1` | *no growth* / *organism growth* |
| Was the target found in culture? | [Observation Results: specific culture](StructureDefinition-Observation-cultureSpecific-eu-lab.html) | a LOINC code naming the target, method *Organism specific culture*, property `PrThr` or `PrId` | *detected* / *not detected*; for `PrId` also the organism found |
| Which organism is it? | [Observation Results: organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html) | `41852-5` or a sequencing code | the organism, or *not detected* |
| How susceptible is the isolate to an antimicrobial? | [Observation Results: antimicrobial susceptibility](StructureDefinition-Observation-susceptibility-eu-lab.html) | a LOINC code naming the antimicrobial, property `Susc`, preferably without a method | the MIC or zone diameter, or the category; the category in `interpretation` |
| Which antimicrobials were tested on the isolate? | [Observation Results: antibiogram](StructureDefinition-Observation-susceptibilityPanel-eu-lab.html) | `29576-6` | none; the results are members |
| Is a resistance mechanism or gene present? | [Observation Results: resistance](StructureDefinition-Observation-resistance-eu-lab.html) | a LOINC code naming the mechanism, enzyme or gene, property `PrThr` | *detected* / *not detected* |
| What is there to see? | [Observation Results: general microscopy](StructureDefinition-Observation-microscopyGeneral-eu-lab.html) | `105059-0` | the finding: a morphology, an organism, host cells, or *not detected* |
| Was the target seen? | [Observation Results: specific microscopy](StructureDefinition-Observation-microscopySpecific-eu-lab.html) | a LOINC code naming the target, method microscopy, property `PrId` or `PrThr` | *detected* / *not detected*; for `PrId` also the organism seen |
| Is the target present? | [Observation Results: targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html) | a LOINC code naming the target, property `PrThr` | *detected* / *not detected* |
| At which cycle did the real-time PCR reach its threshold? | [Observation Results: Ct value](StructureDefinition-Observation-ctValue-eu-lab.html) | a LOINC code naming the target, property `ThreshNum` | the Ct value |
| How much of the pathogen is in the specimen? | [Observation Results: pathogen load](StructureDefinition-Observation-pathogenLoad-eu-lab.html) | a LOINC code naming the pathogen, property `ACnc` or `NCnc` | the load in IU/mL or copies/mL, or *not detected* |

The specimen of all of them is a
[Specimen: microbiology](StructureDefinition-Specimen-microbiology-eu-lab.html).

**The names follow the workgroup's terms.** *General* and *specific* microscopy are
the workgroup's pair for the open and the targeted microscopic examination
(the workbook's "Profile 1" and "Profile 2"); general and specific culture
follow the same pair. *Targeted detection* is the
profile for the molecular and immunological detection of a target; the
workflow step it serves is called *direct identification*. *Specific* and
*targeted* mean the same: aimed at a target named in the code.

{% capture op_text %}
The workgroup is asked to confirm the names *general microscopy*, *specific microscopy* and *targeted detection*, and whether the white paper should rename its *Data model for specific identification*.
{% endcapture %}
{% include open-item.html issue=182 typ="interim" title="Profile names" text=op_text %}

### Specimen and pre-analytics

This section covers the specimen examined in microbiology and the steps of the
workflow before the examination: checking the specimen and the order,
sampling, and the appointment of a specimen collection.

#### Pre-analytical steps

The white paper's workflow starts with a specimen received for a known order,
or with an order for which no specimen has been received yet:

* **Check the specimen quality and its fit for the order.** The laboratory
  reports whether it accepts or rejects the order, with the reason.
* **Specimen sampling** and **appointment of a specimen collection**, where the
  order is known but the specimen is still missing.
* **Blood sample** for the indirect identification by antibody detection (see
  [Serology](#serology)).

These steps produce status messages, not results. They are not profiled for
microbiology; the general approach of this guide to statuses is described in
[Managing statuses](status-mgmt.html).

#### The microbiology specimen

Every microbiological observation references its specimen explicitly, also
where the test code names the material. The specimen is a
[Specimen: microbiology](StructureDefinition-Specimen-microbiology-eu-lab.html),
which adds two things to the laboratory specimen:

**The staining is specimen processing.** A Gram stain, an acid-fast stain or a
Giemsa stain prepares the material for microscopy. It is given in
`Specimen.processing.procedure`, coded with a descendant of
`37926009 |Microbial stain method|`, and kept apart from the microscopy
technique in `Observation.method`.

**Derived specimens point at their origin.** Material taken from a positive
blood culture, or an isolate grown from a specimen, is a specimen of its own.
It references the primary specimen through `Specimen.parent`. The type of such
a specimen is, for instance, `878861003 |Blood specimen in blood culture
bottle|` or `119303007 |Microbial isolate|`.

```
Specimen: sputum (primary)
  ← parent  Specimen: microbial isolate, Gram stained
               ← specimen  Observation: Gram stain of the isolate
               ← specimen  Observation: identification by MALDI-TOF
```

#### Specimen examples

| Specimen | Instance |
|---|---|
| mid-stream urine, Gram stained | [spec-micro-urine](Specimen-spec-micro-urine.html) |
| blood, Giemsa stained | [spec-micro-blood-smear](Specimen-spec-micro-blood-smear.html), [spec-micro-blood-smear-negative](Specimen-spec-micro-blood-smear-negative.html), [spec-micro-blood-smear-babesia](Specimen-spec-micro-blood-smear-babesia.html) |
| stool | [spec-micro-stool](Specimen-spec-micro-stool.html) |
| sputum, auramine stained | [spec-micro-sputum-afb](Specimen-spec-micro-sputum-afb.html) |
| blood in blood culture bottles, aerobic and anaerobic | [spec-micro-blood-culture](Specimen-spec-micro-blood-culture.html), [spec-micro-blood-culture-anaerobic](Specimen-spec-micro-blood-culture-anaerobic.html) |
| material from the positive blood culture, derived | [spec-micro-blood-culture-derived](Specimen-spec-micro-blood-culture-derived.html) |
| sputum, and the isolate derived from it | [spec-micro-sputum](Specimen-spec-micro-sputum.html), [spec-micro-isolate](Specimen-spec-micro-isolate.html) |
| nasopharyngeal swab | [spec-micro-nasopharyngeal-swab](Specimen-spec-micro-nasopharyngeal-swab.html) |
| tissue biopsy | [spec-micro-tissue](Specimen-spec-micro-tissue.html) |
| anterior nares swab, and the isolate from its MRSA screening culture | [spec-micro-nares-swab](Specimen-spec-micro-nares-swab.html), [spec-micro-nares-isolate](Specimen-spec-micro-nares-isolate.html) |
| conjunctival swab | [spec-micro-conjunctival-swab](Specimen-spec-micro-conjunctival-swab.html) |

### Culture

Culture is the growing of microorganisms from a specimen: the specimen is
inoculated onto media and incubated. A positive culture yields one or more
isolates, which are then identified (see
[Identification](#identification)). Inoculation is an
internal step of the laboratory and is not reported on its own.

The general culture is reported with
[Observation Results: general culture](StructureDefinition-Observation-cultureGeneral-eu-lab.html),
the specific culture with
[Observation Results: specific culture](StructureDefinition-Observation-cultureSpecific-eu-lab.html).

#### Culture and identification

The white paper (chapter *Culture and Detection by Culture*, principle 1)
separates the culture from the identification:

* **The culture** describes the culture strategy — general or specific, with
  the target if there is one — and its result is growth or no growth.
* **The identification** takes the isolate as input and names the organism,
  with its own method.

A laboratory that reports the whole pathway with a culture code and the
organism as its value splits the result into a culture observation and an
identification observation. Where the culture step itself is not of interest,
only the identification may be reported. The identification points back at
the culture whose growth it names through `triggeredBy`.

#### General culture

General culture uses media and conditions that detect a broad range of
pathogens, e.g. the aerobic and anaerobic blood culture. It answers *does
anything grow?*

| Aspect | Element | Coding |
|---|---|---|
| the question | `Observation.code` | LOINC `11475-1` *Microorganism identified in Specimen by Culture* ([General Culture Codes](ValueSet-micro-cultureGeneralCode-eu-lab.html)) |
| the result | `Observation.value[x]` | SNOMED CT `264868006` *No growth*, `365698005` *Organism growth* ([Culture Growth](ValueSet-micro-cultureGrowth-eu-lab.html)) |
| the culture technique | `Observation.method` | SNOMED CT `703750006` *Aerobic culture*, `703751005` *Anaerobic culture*, or `702658000` *Microbial culture* where the condition is not known or not meaningful ([General Culture Techniques](ValueSet-micro-cultureGeneralTechnique-eu-lab.html)) |
| no result | `Observation.dataAbsentReason` | `82334004` *Indeterminate* and the FHIR data-absent-reason codes |

{% capture op_text %}
The workbook prefers `41852-5 |Microorganism or agent identified in Specimen|` for the general culture and allows `11475-1`. This guide uses `11475-1` only, so that culture and identification keep distinct codes (white paper, principle 1); `41852-5` stays the code of the identification. The result is bound required, as the workbook asks (sheet Culture General, H27). Normal flora, which neither the workbook nor the white paper mention, is the value of the identification, not of the culture. Open as well: whether an interpretation is needed, and whether a general culture code with the property `PrThr`, as requested in Berlin, would replace `11475-1`.
{% endcapture %}
{% include open-item.html issue=188 typ="interim" title="Code of the general culture" text=op_text %}

**The organism is not the value of the culture.** *Organism growth* says that
something grew. The organism is named by the identification that follows.
The result is bound required: growth or no growth is a closed choice. The
amount of growth belongs to the [Quantification](#quantification), an
indeterminate culture to `dataAbsentReason`; local codes may be sent as
additional codings.

**Normal flora is reported by the identification.** A culture that grew only
normal flora reports *Organism growth*; `23506009` *Normal flora*, a SNOMED CT
finding, is the value of the identification that follows.

**One observation per culture condition.** `Observation.method` holds one code.
A blood culture set with an aerobic and an anaerobic bottle gives two
observations, each with its bottle as specimen.

**Not coded:** media, temperature and incubation time. The workbook has
postponed the incubation duration; the white paper advises against coding
specimen-specific procedures (*respiratory culture*, *urine culture*), because
they are not standardised across laboratories.

#### General culture examples

| Example | Instances |
|---|---|
| blood culture set, aerobic bottle with growth | [obs-micro-blood-culture-positive](Observation-obs-micro-blood-culture-positive.html) on [spec-micro-blood-culture](Specimen-spec-micro-blood-culture.html) |
| the anaerobic bottle of the same set, no growth | [obs-micro-blood-culture-anaerobic-negative](Observation-obs-micro-blood-culture-anaerobic-negative.html) on [spec-micro-blood-culture-anaerobic](Specimen-spec-micro-blood-culture-anaerobic.html) |
| sputum culture followed by an identification | [obs-micro-sputum-culture-positive](Observation-obs-micro-sputum-culture-positive.html), identified by [obs-ident-maldi-kpneumoniae](Observation-obs-ident-maldi-kpneumoniae.html) |

#### Specific culture

A specific (taxon-targeted) culture tailors media and incubation to a target,
e.g. MRSA, *Mycobacterium*, *Nocardia* or *Streptococcus agalactiae* in
pregnancy. Its target is in the component of the code. It is reported with
[Observation Results: specific culture](StructureDefinition-Observation-cultureSpecific-eu-lab.html).

| Aspect | Element | Coding |
|---|---|---|
| the question | `Observation.code` | LOINC, method *Organism specific culture*, system `XXX` or `Isolate`, property `PrThr` or `PrId`, active ([Specific Culture Codes](ValueSet-micro-cultureSpecificCode-eu-lab.html)); preferred with system `XXX` ([preferred](ValueSet-micro-cultureSpecificCodePreferred-eu-lab.html)); with an `Isolate` code the isolate is also given as `Specimen.type` |
| the result | `Observation.value[x]` | SNOMED CT: [Specific Examination Results](ValueSet-micro-specificResult-eu-lab.html) |
| the technique | `Observation.method` | SNOMED CT `703752003` *Organism specific culture* |
| unexpected growth (`PrThr`) | `Observation.hasMember` | a general culture with *Organism growth* |

Codes for missing targets are to be requested from Regenstrief (minutes,
approach 1; [Issue #193](https://github.com/hl7-eu/laboratory/issues/193)).

**Three use cases.** The workgroup discussed them on 2026-11-06. How they are
represented depends on the property of the code:

| Use case | `PrThr`, e.g. `13317-3` *MRSA [Presence] … by Organism specific culture* | `PrId`, e.g. `9782-4` *Adenovirus sp identified … by Organism specific culture* |
|---|---|---|
| detected / not detected | *Detected* / *Not detected* | *Detected* / *Not detected* |
| sub typing | not in this observation; the typing is an observation of its own that points back at the culture through `triggeredBy` | the subtype is the value, e.g. `46957004` *Human adenovirus 8* |
| unexpected growth, before the identification | a general culture with *Organism growth*, referenced through `hasMember` | a broad group as value in a preliminary result, e.g. `409822003` *Domain Bacteria* |
| unexpected growth, identified | an identification that points back at the growth through `triggeredBy` | the organism as value in the final result |

A preliminary and a final result are versions of the same observation, told
apart by `Observation.status`; they are not linked with `triggeredBy`.

```
Observation: MRSA [Presence] by Organism specific culture (13317-3): Not detected
  hasMember → Observation: Microorganism identified by Culture (11475-1): Organism growth
                ↑ triggeredBy (reflex)
              Observation: Microorganism or agent identified (41852-5): Staphylococcus epidermidis
```

`triggeredBy` links a step to the step that caused it: the identification is
made because something grew. The growth itself is not caused by the result of
the specific culture; both are readings of the same culture, which is why
`hasMember` links them.

{% capture op_text %}
Whether the specific culture codes have the property `PrThr`, `PrId` or both is under discussion in the workgroup. Until it decides, this guide admits both and follows the discussion of 2026-11-06: *Detected* and *Not detected* rather than growth (workbook), and unexpected growth with a `PrThr` code as a general culture of its own. The white paper says that a specific culture shall be reported as such, not as a general culture; the reference through `hasMember` keeps the growth tied to the specific culture.

Preferred are the codes with system `XXX`, with the specimen in `Specimen.type`, as the minutes recommend for post-coordinating the specimen. Open is whether the workgroup wants LOINC codes with system `{Specimen}` for culture. LOINC has them only with the method `{Molgen}`; their list of permitted specimens contains both *Specimen* and *Isolate*, so one such code could replace the `XXX` and the `Isolate` code of a target.
{% endcapture %}
{% include open-item.html issue=186 typ="interim" title="Property and result of the specific culture" text=op_text %}

**Unexpected growth** follows the rule proposed for the specific microscopy ([Issue #168](#op-issue-168)). White paper example 2 of the specific culture reports *Staphylococcus epidermidis* as the value of the `PrThr` code `100897-8` and would change.

#### Specific culture examples

| Example | Instances |
|---|---|
| MRSA not detected, unexpected growth identified | [obs-micro-mrsa-culture](Observation-obs-micro-mrsa-culture.html) with [obs-micro-mrsa-culture-growth](Observation-obs-micro-mrsa-culture-growth.html), identified by [obs-ident-mrsa-culture-sepidermidis](Observation-obs-ident-mrsa-culture-sepidermidis.html) on [spec-micro-nares-isolate](Specimen-spec-micro-nares-isolate.html) |
| adenovirus culture with the subtype as value | [obs-micro-adenovirus-culture](Observation-obs-micro-adenovirus-culture.html) on [spec-micro-conjunctival-swab](Specimen-spec-micro-conjunctival-swab.html) |

### Identification

This section covers the identification of a microorganism without a predefined
target, answering the open question *which organism is it?* It is reported
with
[Observation Results: organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html).
The detection of a predefined target is covered by
[Direct identification](#direct-identification) and by the
specific microscopy in the [Microscopy](#microscopy) section.

#### Separate from the culture

The culture answers *does anything grow?*; the identification takes the
isolate as input and names the organism. Keeping them apart lets the
identification method be stated (MALDI-TOF is not a culture technique) and
resolves the unexpected finding — a targeted culture that grows something else.
The identification points back at the culture whose growth it names through
`triggeredBy`.

Laboratories that report the whole pathway with one culture code and the
organism as its value should split such a result into a culture observation
(growth) and an identification observation (the organism). Where the method
of the identification is not known, the data-absent-reason extension on
`Observation.method` says so.

Identification may also be performed on a direct specimen without a culture
step: 16S or 18S rRNA sequencing on a biopsy, malaria microscopy on blood.

#### Representation of the identification

| Aspect | Element | Coding |
|---|---|---|
| the question | `Observation.code` | LOINC: [Organism Identification Codes](ValueSet-micro-organismIdentificationCode-eu-lab.html) |
| the organism | `Observation.value[x]` | SNOMED CT: [Organism Identification Results](ValueSet-micro-organismIdentificationResult-eu-lab.html) |
| the technique | `Observation.method` | SNOMED CT: [Organism Identification Techniques](ValueSet-micro-organismIdentificationTechnique-eu-lab.html) |

**The code is `41852-5 |Microorganism or agent identified in Specimen|`**
whatever the technique. The kingdom-level codes (*Bacteria*, *Fungus*, *Virus
identified in Specimen*) are not used. LOINC has no code for *Parasite
identified in Specimen*; parasites are reported with `41852-5`.

{% capture op_text %}
`23667-9`, `42805-2` and `41461-5` (*Bacteria*, *Fungus*, *Virus identified in Specimen*) are removed from the identification codes. Are they needed for sequencing?
{% endcapture %}
{% include open-item.html issue=175 typ="interim" title="Kingdom-level codes" text=op_text %}

**The result is the organism** from the SNOMED CT organism hierarchies, or
`260415000 |Not detected|` when the examination was performed and nothing was
identified. A culture that grew only normal flora is identified as `23506009`
*Normal flora*, a finding rather than an organism ([Issue #188](#op-issue-188)).

#### Phenotypic identification

The phenotypic techniques are MALDI-TOF mass spectrometry
(`83581000052107`), microscopy (`278289002` and its descendants), visual
estimation (`258083009`) and automated biochemical identification such as VITEK
(`53465007` *Microbial identification, automated and semiautomated methods*).

{% capture op_text %}
SNOMED CT has no technique for automated biochemical identification, but the procedure `53465007` *Microbial identification, automated and semiautomated methods*. FHIR admits procedures as methods, so this guide uses it instead of requesting a new technique; the other methods are techniques. Whether a mix of techniques and procedures is acceptable is open.
{% endcapture %}
{% include open-item.html issue=202 typ="interim" title="Procedure concepts as methods" text=op_text %}

#### Identification by sequencing

Sequencing reads the genetic material instead of targeting a known sequence.
It answers the same open question with the same result, so it uses the same
profile with `1304162005 |Nucleic acid sequencing technique|` as method:

* **16S and 18S rRNA sequencing** use the codes naming the sequencing target,
  `66885-5 |Bacteria identified based on 16S rRNA gene [Identifier] in
  Specimen by Sequencing|` and `101534-6 |Fungal 18s rRNA gene [Identifier] in
  Specimen by Sequencing|`.
* **Whole genome sequencing** uses `41852-5` with the sequencing technique as
  method until a LOINC code for the whole genome exists
  ([Issue #191](https://github.com/hl7-eu/laboratory/issues/191)).

The reporting of nucleotide sequences and metagenomic sequencing are out of
scope.

#### Identification examples

| Example | Instances |
|---|---|
| identification by MALDI-TOF after culture | [obs-ident-maldi-kpneumoniae](Observation-obs-ident-maldi-kpneumoniae.html) triggered by [obs-micro-sputum-culture-positive](Observation-obs-micro-sputum-culture-positive.html) |
| identification by 16S sequencing on a biopsy | [obs-ident-16s-sequencing](Observation-obs-ident-16s-sequencing.html), [obs-ident-not-detected](Observation-obs-ident-not-detected.html) |

### Susceptibility

After the identification of a bacterial pathogen, its susceptibility to
antimicrobials is tested: by disk diffusion, gradient strips, or manual or
automated microdilution. The results are mostly quantitative and are
interpreted against a standard such as EUCAST or CLSI. Molecular resistance
testing is covered by [Resistance](#resistance).

Each antimicrobial tested is an observation of its own, reported with
[Observation Results: antimicrobial susceptibility](StructureDefinition-Observation-susceptibility-eu-lab.html).
The results of one isolate are grouped by an
[Observation Results: antibiogram](StructureDefinition-Observation-susceptibilityPanel-eu-lab.html).

#### Representation of the susceptibility

| Aspect | Element | Coding |
|---|---|---|
| the antimicrobial | `Observation.code` | LOINC, property `Susc`, class `ABXBACT` ([Susceptibility Codes](ValueSet-micro-susceptibilityCode-eu-lab.html)); preferred without a method ([preferred](ValueSet-micro-susceptibilityCodePreferred-eu-lab.html)), e.g. `18943-1` *Meropenem [Susceptibility]* |
| the result | `Observation.value[x]` | the MIC or the zone diameter with UCUM ([Susceptibility Units](ValueSet-micro-susceptibilityUnit-eu-lab.html)), preferred; or the category ([Susceptibility Categories](ValueSet-micro-susceptibilityInterpretation-eu-lab.html)) |
| the category | `Observation.interpretation` | [Susceptibility Categories](ValueSet-micro-susceptibilityInterpretation-eu-lab.html), with the extension [Interpretation standard](StructureDefinition-observation-interpretationStandard.html) |
| the technique | `Observation.method` | [Susceptibility Techniques](ValueSet-micro-susceptibilityTechnique-eu-lab.html) |
| the isolate | `Observation.specimen` | a Specimen with the type `119303007` *Microbial isolate* |
| no result | `Observation.dataAbsentReason` | `82334004` *Indeterminate* and the FHIR data-absent-reason codes |

**The quantitative result is preferred.** The MIC is given in mg/L (EUCAST) or
ug/mL (CLSI), the zone diameter in mm.

**A value outside the tested range carries the comparator.** An isolate
inhibited at the lowest concentration tested has an MIC of `<=` that
concentration, one growing at the highest an MIC of `>` it. Without
`Quantity.comparator` the value reads as exact: with a breakpoint R > 8 mg/L,
an MIC of > 8 is R, while an exact 8 is not.

**The category is the interpretation.** Where only the category is available,
it is the value as well, coded with the same code and repeated in
`interpretation` (invariant `eu-lab-susc-1`). A quantitative result should be
interpreted (invariant `eu-lab-susc-2`).

**Every interpretation states its standard.** The extension
*Interpretation standard* gives the standard, e.g. EUCAST, and preferably the
version of its breakpoint table, e.g. 15.0: a category is valid only for the
breakpoint table it was read from. It applies to a coded value as well, which
repeats the interpretation. Each susceptibility observation carries its own,
since the standard can differ per antimicrobial.

#### Susceptibility principles in the workbook

The workbook (sheet Phenotypic susceptibility) records these principles as
agreed:

* **The result is quantitative or coded:** a minimum inhibitory concentration
  (MIC) or an inhibition zone diameter, or a coded susceptibility (S, I, R).
* **Susceptibility is an interpretation** of the result.
* **The interpretation standard** is given in the Observation extension
  *context*. For it, the workbook lists the descendants of `1306540001
  |European Committee on Antimicrobial Susceptibility Testing category 2019|`,
  which are the EUCAST 2019 categories S, I and R, and asks for a CLSI
  counterpart. This guide proposes the standard itself instead, see the box
  below; concepts for the standards are requested
  ([Issue #200](https://github.com/hl7-eu/laboratory/issues/200)).
* **If the result is S, I or R only,** the interpretation shall be given as
  well.

{% capture op_text %}
FHIR binds `Observation.interpretation` extensibly to the HL7 v3 interpretation codes, whose definitions follow CLSI. Their *I* means *intermediate*. Since 2019 the EUCAST category *I* means *susceptible, increased exposure*, and no v3 code covers it. As in the workbook, this guide proposes:

| Category | `Observation.interpretation` |
|---|---|
| S | v3 `S` |
| R | v3 `R` |
| I (CLSI, intermediate) | v3 `I` |
| I (EUCAST, susceptible, increased exposure) | SNOMED CT `1306583007` *I (Susceptible, increased exposure) EUCAST category 2019* |

The white paper codes S and R with SNOMED CT only, although the v3 codes fit; a SNOMED CT coding may be added beside the v3 code. A coded result in `value[x]` uses the same codes and is repeated in `interpretation`, as in the workbook; the white paper's SNOMED CT values, repeated in `interpretation`, would not conform to the extensible binding of the FHIR core specification.

The interpretation standard: the workbook puts it into an Observation extension *context* and lists the descendants of `1306540001 |EUCAST category 2019|`, which are the categories S, I and R themselves, not the standard. The white paper puts it into an extension of `Observation.interpretation`, with the codes EUCAST, CLSI and Other. This guide proposes an extension of `Observation.interpretation`, at most once per interpretation, with the standard and the version of the breakpoint table, e.g. EUCAST 15.0. It applies to a coded value as well, which repeats the interpretation, and the susceptibility profile requires it on every interpretation. Until SNOMED CT concepts for the standards exist ([Issue #200](https://github.com/hl7-eu/laboratory/issues/200)), the standard is coded with a code system of this guide (EUCAST, CLSI, other).
{% endcapture %}
{% include open-item.html issue=183 typ="interim" title="Interpretation codes" text=op_text %}

{% capture op_text %}
A quantitative result is given in `valueQuantity` with UCUM, in the units of the white paper (`mg/L`, `ug/mL`, `mm`, `[arb'U]/mL`, `1/mL`). A value outside the tested range SHALL be given with `Quantity.comparator`: `<=` below the lowest, `>` above the highest tested concentration, e.g. an MIC of `> 8` mg/L. Without it the value reads as exact; with a breakpoint R > 8 mg/L, an exact 8 is not R. Neither source says how to represent such values.
{% endcapture %}
{% include open-item.html issue=205 typ="interim" title="Quantitative result" text=op_text %}

#### Susceptibility codes

The preferred binding is the LOINC codes with the property `Susc`, class
`ABXBACT` and no method; the susceptibility method is post-coordinated. This
makes it easy to query all susceptibility results. The codes `106843-6` and
`103673-0` belong to this class as well; their class is to be corrected
([Issue #192](https://github.com/hl7-eu/laboratory/issues/192)).

{% capture op_text %}
The workbook admits all codes with the property `Susc` and the class `ABXBACT`. This guide excludes the 97 codes with the method *Genotype*, e.g. `30287-7 |Abacavir [Susceptibility] by Genotype method|` or `89488-1 |Isoniazid [Susceptibility] by Genotype method|`: they infer the susceptibility from resistance mutations and belong to molecular resistance testing, see [Resistance](#resistance). The codes with the method *Phenotype* remain. Open: where genotypic susceptibility results are reported.
{% endcapture %}
{% include open-item.html issue=206 typ="interim" title="Genotype methods" text=op_text %}

#### Susceptibility methods

The method corresponds to the method axis of LOINC, so that a methodless code
with `Observation.method` means the same as the code that pre-coordinates the
method.

| Technique | `Observation.method` | LOINC method |
|---|---|---|
| MIC by dilution, manual or automated | `708073008` *Minimum inhibitory concentration susceptibility test technique* and its descendants | MIC |
| Gradient strip | `703442003` *Gradient strip susceptibility test technique* | Gradient strip |
| Disk diffusion | `1303975003` *Disk diffusion technique* | Disk diffusion (KB) |
| minimum bactericidal concentration, serum bactericidal titer, slow-growing mycobacteria | procedures under `14788002` *Antimicrobial susceptibility test*, e.g. `1035002`, `104235002`, `84787003` | MLC, Serum bactericidal titer, Method for slow-growing mycobacteria |

Where the technique is not known, the data-absent-reason extension states that
the method is unknown; there is no general technique for susceptibility
testing ([Issue #189](#op-issue-189)). The workbook lists `263696007` *Broth
dilution* and two techniques of the Dutch edition of SNOMED CT instead of
`708073008`:

{% capture op_text %}
`260111000146108` and `260101000146106` exist only in the Dutch edition of SNOMED CT, not in the International Edition. Both are children of `708073008 |Minimum inhibitory concentration susceptibility test technique|`, which this guide proposes instead; a Dutch laboratory adds its concept as a second coding. Open as well: in the International Edition, `708073008` subsumes neither `263696007` *Broth dilution* nor the gradient strip, so a broth microdilution could be coded in two ways.
{% endcapture %}
{% include open-item.html issue=185 typ="interim" title="Methods from the Dutch extension" text=op_text %}

{% capture op_text %}
The workbook lists techniques, the white paper procedures under `14788002 |Antimicrobial susceptibility test|`. This guide proposes techniques for the three main LOINC methods, so that a methodless code with `Observation.method` means the same as the code that pre-coordinates the method: `708073008` and its descendants for every MIC by dilution, manual or automated; `703442003` for the gradient strip; `1303975003` for disk diffusion. Procedures under `14788002` are used where no technique exists: the MBC and MLC tests, the serum bactericidal titer and the methods for slow-growing mycobacteria. `263696007` *Broth dilution* and `258087005` *Agar dilution* are left out, because a dilution yields an MIC. An unknown method is given with the data-absent-reason extension.
{% endcapture %}
{% include open-item.html issue=204 typ="interim" title="Techniques or procedures" text=op_text %}

#### Antibiogram

The white paper reports one observation per antimicrobial tested. An
[Observation Results: antibiogram](StructureDefinition-Observation-susceptibilityPanel-eu-lab.html)
with the code `29576-6 |Bacterial susceptibility panel|` groups them through
`hasMember` and points back at the identification of the tested organism
through `triggeredBy`. It has no value and no interpretation of its own. Its
method is optional: the members can combine techniques, and each states its
own.

```
Observation: Bacterial susceptibility panel (29576-6), specimen: the isolate
  triggeredBy → Observation: Microorganism or agent identified (41852-5): Klebsiella pneumoniae
  hasMember → Observation: Meropenem [Susceptibility] (18943-1): > 8 mg/L, method MIC
                interpretation R, EUCAST 15.0
  hasMember → Observation: Cefepime [Susceptibility] (18879-7): 2 mg/L, method MIC
                interpretation 1306583007 (I, susceptible, increased exposure), EUCAST 15.0
  hasMember → Observation: Trimethoprim+Sulfamethoxazole [Susceptibility] (18998-5): R, method disk diffusion
                interpretation R, EUCAST 15.0
```

#### Susceptibility examples

| Example | Instances |
|---|---|
| antibiogram of *Klebsiella pneumoniae*, following the identification by MALDI-TOF | [obs-micro-ast-panel-kpneumoniae](Observation-obs-micro-ast-panel-kpneumoniae.html) on [spec-micro-isolate-kpneumoniae](Specimen-spec-micro-isolate-kpneumoniae.html), triggered by [obs-ident-maldi-kpneumoniae](Observation-obs-ident-maldi-kpneumoniae.html) |
| MIC above the tested range, with comparator | [obs-micro-ast-meropenem](Observation-obs-micro-ast-meropenem.html) |
| EUCAST category I, susceptible, increased exposure | [obs-micro-ast-cefepime](Observation-obs-micro-ast-cefepime.html) |
| MIC below the tested range, with comparator | [obs-micro-ast-amikacin](Observation-obs-micro-ast-amikacin.html) |
| category only, repeated in the interpretation | [obs-micro-ast-sxt](Observation-obs-micro-ast-sxt.html) |

### Resistance

Besides the phenotypic susceptibility (see
[Susceptibility](#susceptibility)), the resistance of an
isolate is determined by detecting a resistance mechanism, e.g. an
extended-spectrum beta-lactamase or a carbapenemase, or a resistance gene,
e.g. *mecA*. The question is whether a named mechanism or gene is present, and
the result is `260373001 |Detected|` or `260415000 |Not detected|`.
Mechanisms and genes are reported with one profile,
[Observation Results: resistance](StructureDefinition-Observation-resistance-eu-lab.html);
the technique is given in `Observation.method`.

#### Representation of the resistance

| Aspect | Element | Coding |
|---|---|---|
| the mechanism, enzyme or gene | `Observation.code` | LOINC, property `PrThr` ([Resistance Codes](ValueSet-micro-resistanceCode-eu-lab.html)); preferred are the codes that fix neither material nor technique ([preferred](ValueSet-micro-resistanceCodePreferred-eu-lab.html)) |
| the result | `Observation.value[x]` | SNOMED CT `260373001` *Detected*, `260415000` *Not detected* |
| the technique | `Observation.method` | [Resistance Techniques](ValueSet-micro-resistanceTechnique-eu-lab.html): PCR and the other techniques of the targeted detection, sequencing, rapid immunoassay, mCIM, the techniques of susceptibility testing, biochemical tests |
| the specimen | `Observation.specimen` | the isolate, `119303007` *Microbial isolate*, or for a detection directly from a specimen the primary specimen |
| no result | `Observation.dataAbsentReason` | `82334004` *Indeterminate* and the FHIR data-absent-reason codes |

**One observation per target.** A test kit with several targets gives one
observation per target, so that the report shows which targets were tested
(white paper).

**No interpretation.** *Detected* or *not detected* is the result itself.

**A mechanism read from a test is reported with the technique of that test.**
The ESBL confirmation by combination disk and the D-test for inducible
clindamycin resistance use `1303975003` *Disk diffusion technique*, the expert
rule of an automated susceptibility system `708073008`, the carbapenem
inactivation method `782518009` *Modified carbapenem inactivation technique*.

**Relations.** A resistance test points back at what caused it through
`triggeredBy`: the identification of the organism, or a susceptibility result,
e.g. a carbapenemase test after an elevated meropenem MIC. The antibiogram
groups susceptibility results only. A multiplex panel tested directly from a
specimen groups its targets through `hasMember`, as in the
[targeted detection](#direct-identification).

```
Observation: Meropenem [Susceptibility] (18943-1): > 8 mg/L, R
  ↑ triggeredBy (reflex)
Observation: OXA-48-like carbapenemase [Presence] … by Rapid immunoassay (101674-0): Detected
  ↑ triggeredBy (reflex)
Observation: Carbapenem resistance bla OXA-48-like gene [Presence] (85827-4): Detected, method real-time PCR
```

{% capture op_text %}
This guide reports resistance mechanisms and genes with one profile, without an interpretation. The white paper repeats the result in the interpretation with the SNOMED CT codes; the FHIR core specification binds the interpretation extensibly to the v3 codes, among which `DET` and `ND` fit. A mechanism read from a phenotypic test is reported with the technique of that test. Open: whether a derived resistance category status (MRSA, VRE, multidrug resistance) is needed, as the German core data set module microbiology defines it, and how a multiplex panel from a specimen states which organism carries a gene.
{% endcapture %}
{% include open-item.html issue=210 typ="interim" title="Data model of resistance" text=op_text %}

#### Phenotypic resistance mechanisms

The workbook (sheet Phenotypic resistence) selects these LOINC codes:

| Code | Name |
|---|---|
| `104864-4` | Beta lactamase.extended spectrum [Presence] |
| `101673-2` | KPC carbapenemase [Presence] in Isolate by Rapid immunoassay |
| `101675-7` | IMP Carbapenemase [Presence] in Isolate by Rapid immunoassay |
| `101677-3` | NDM Carbapenemase [Presence] in Isolate by Rapid immunoassay |
| `101676-5` | VIM Carbapenemase [Presence] in Isolate by Rapid immunoassay |
| `101674-0` | OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay |
| `105037-6` | OXA-23 carbapenemase [Presence] by Rapid immunoassay |
| `105038-4` | OXA-40 and OXA-58 carbapenemase [Presence] by Rapid immunoassay |
| `86930-5` | Carbapenemase [Presence] in Isolate |

Method-neutral codes for inducible clindamycin resistance, cefoxitin
resistance, the PBP2a protein and AmpC are to be requested from Regenstrief ([Issue #195](https://github.com/hl7-eu/laboratory/issues/195)). The
techniques are those of phenotypic susceptibility testing, plus
`708099001 |Rapid immunoassay|`. For biochemical rapid tests the workbook asks
for a new technique; SNOMED CT has procedures that fit, `61836004 |Beta
lactamase susceptibility test|` and its children, e.g. `12736005 |Beta
lactamase, acidimetric susceptibility test|` for Carba NP
([Issue #202](https://github.com/hl7-eu/laboratory/issues/202)).

{% capture op_text %}
The carbapenemase codes pre-coordinate the method *Rapid immunoassay*. In direct identification the technique is post-coordinated in `Observation.method`. LOINC has no method-neutral codes for these enzymes yet; only the groups (`86930-5` carbapenemase, `104864-4` extended-spectrum beta-lactamase) have them. This guide prefers method-neutral codes and requests them ([Issue #197](https://github.com/hl7-eu/laboratory/issues/197)); until they exist, the `IA.rapid` codes are preferred as well, and the technique is given in `Observation.method` with them too.
{% endcapture %}
{% include open-item.html issue=184 typ="interim" title="Rapid immunoassay codes" text=op_text %}

#### Resistance genes

The white paper recommends one observation per target of a test kit, with a
code naming the single gene or gene group and the property `PrThr`, rather
than one `PrId` code with the gene found as value: only then can the report
show which targets the kit tested. The data model follows the
[targeted detection](#direct-identification).

The workbook (sheet Molecular resistance) proposes as preferred codes those
with a resistance component, property `PrThr` and system `XXX` or
`{Specimen}`, not deprecated. They follow the pattern of
`115376-6 |Methicillin resistance mecA+mecC genes [Presence] in Specimen by
Molgen|`, with system `{Specimen}` and method `{Molgen}`. Codes with any system
and method are allowed. The methods are those of the
[targeted detection](#detection-methods), with sequencing for genotypic
resistance.

{% capture op_text %}
The workbook prefers `system:(XXX or specimen)`; Stan answers that LOINC would follow the pattern `in {Specimen} by {Molgen}` of `115376-6 |Methicillin resistance mecA+mecC genes [Presence] in Specimen by Molgen|`. As in the direct identification, this pattern is the target, and the missing codes are requested ([Issue #209](https://github.com/hl7-eu/laboratory/issues/209)). Until they exist, the 110 codes with system `Isolate/Specimen` and method `Molgen`, which fix neither material nor technique either, e.g. `105016-0 |Bacterial Carbapenem resistance blaKPC-18 gene [Presence] by Molecular method|`, are preferred as well; codes with a fixed material or a specific method are allowed. Open: how resistance determined by sequencing is reported.
{% endcapture %}
{% include open-item.html issue=208 typ="interim" title="Codes of molecular resistance" text=op_text %}

#### Resistance examples

| Example | Instances |
|---|---|
| carbapenemase by rapid immunoassay, triggered by the meropenem MIC | [obs-micro-res-oxa48-rapid](Observation-obs-micro-res-oxa48-rapid.html), triggered by [obs-micro-ast-meropenem](Observation-obs-micro-ast-meropenem.html) |
| the gene confirmed by real-time PCR | [obs-micro-res-oxa48-pcr](Observation-obs-micro-res-oxa48-pcr.html) |
| ESBL confirmation by combination disk, reported with disk diffusion | [obs-micro-res-esbl](Observation-obs-micro-res-esbl.html), triggered by [obs-micro-ast-cefepime](Observation-obs-micro-ast-cefepime.html) |
| *mecA*/*mecC* directly from a nares swab, code in `{Specimen}` by `{Molgen}` | [obs-micro-res-meca-nares](Observation-obs-micro-res-meca-nares.html) on [spec-micro-nares-swab](Specimen-spec-micro-nares-swab.html) |

### Organism properties

**Not profiled yet.** This section records the state of the workgroup's
conventions for further properties of an identified organism.

After the identification, or after a direct identification, further
properties of the organism may be determined and reported:

* the serotype, clade or variant;
* the genotype, e.g. the strain type for outbreak typing by whole genome
  sequencing;
* virulence factors;
* toxins produced by the organism.

Resistance mechanisms and resistance genes are properties of the organism as
well; they are covered by [Resistance](#resistance).

The workgroup has put the clarification of these properties on its agenda; it
has not yet discussed them. The workbook has no sheet for them yet.

### Microscopy

This section covers the staining and the microscopic examination of a specimen,
of material from a positive culture or of an isolate. Staining is an internal
step of the laboratory; it is represented on the specimen. The microscopic
result is reported with one of two profiles:

* [Observation Results: general microscopy](StructureDefinition-Observation-microscopyGeneral-eu-lab.html)
  answers the open question *what is there to see?* (workbook, "Profile 1").
* [Observation Results: specific microscopy](StructureDefinition-Observation-microscopySpecific-eu-lab.html)
  answers whether a target named in the code was seen (workbook, "Profile 2").

The code decides the profile. `105059-0 |Microscopic observation [Identifier]
in Specimen|` asks the open question; a code naming the target, such as
`32206-5 |Plasmodium sp identified in Blood by Light microscopy|`, asks the
targeted one.

#### Representation of microscopy

The microscopic result describes what is observed. Its aspects are
represented separately:

| Aspect | Element | Coding |
|---|---|---|
| the question | `Observation.code` | LOINC: `105059-0` (general), or a code naming the target (specific) |
| the result | `Observation.value[x]` | SNOMED CT: [Microscopic Findings](ValueSet-micro-microscopyFinding-eu-lab.html) (general), [Specific Examination Results](ValueSet-micro-specificResult-eu-lab.html) (specific) |
| the microscopy technique | `Observation.method` | SNOMED CT: [Microscopy Techniques](ValueSet-micro-microscopyTechnique-eu-lab.html), `278289002` or a descendant |
| the staining | `Specimen.processing.procedure` | SNOMED CT: [Microbial Stain Methods](ValueSet-micro-stainMethod-eu-lab.html), `< 37926009` |
| the amount | `Observation.component` with code `103392008` | SNOMED CT: [Semi-quantitative Microscopy Grades](ValueSet-micro-semiquantitative-eu-lab.html) |

{% capture op_text %}
The root concept `278289002 |Microscopy technique|` is admitted as a method, standing for *microscopy, technique not specified*. The workbook admits its descendants only.
{% endcapture %}
{% include open-item.html issue=180 typ="interim" title="Microscopy technique: root concept" text=op_text %}

**Staining is specimen processing,** not the observation method. Light
microscopy may be applied to a Gram-stained and to an auramine-stained
preparation of the same material; representing the two aspects separately
keeps both readable. The stain is not pre-coordinated in the code: codes such
as `664-3 |Microscopic observation [Identifier] in Specimen by Gram stain|` are
not part of the value sets.

**The amount is a component.** *Few Gram-negative bacilli* is two statements:
the finding and its amount. `value[x]` carries the finding, the component with
the code `103392008 |Semi-quantitative value|` carries the amount. The
workbook proposes a LOINC code for the component ([Issue #190](https://github.com/hl7-eu/laboratory/issues/190)); it
would replace the SNOMED CT code.

{% capture op_text %}
The grades follow the workbook. Should `263865001 |Scanty|` be added? Grading schemes for acid-fast bacilli use it below *few*.
{% endcapture %}
{% include open-item.html issue=178 typ="interim" title="Semi-quantitative grades" text=op_text %}

**Microscopy after culture references the derived material.** The Gram stain
of a positive blood culture or of an isolate references a specimen that points
at the primary specimen through `Specimen.parent`, and the observation points
at the culture that triggered it through `triggeredBy`.

#### General microscopy

The code is `105059-0`. The result is what was seen:

* a morphological finding the white paper lists, e.g.
  `70003006 |Gram-positive cocci in clusters|`;
* an organism, or a morphological group that SNOMED CT holds in the organism
  hierarchy, e.g. `87172008 |Gram-negative bacillus|`,
  `243365003 |Acid-fast bacillus|`, a *Plasmodium* species;
* host cells, e.g. `52501007 |Leukocyte|`;
* `260415000 |Not detected|` if nothing was found. The observation is not
  omitted.

{% capture op_text %}
The findings are limited to the scope of the white paper: its eight morphologies, leukocytes, the organisms and *Not detected*. A broader list is expected from the workgroup. Further findings, such as erythrocytes, epithelial cells or clue cells, remain possible through the extensible binding.
{% endcapture %}
{% include open-item.html issue=176 typ="interim" title="Scope of the findings" text=op_text %}

**Several findings of one examination are several observations.** A Gram
stain may show Gram-negative rods and leukocytes. Each finding is its own
observation; the examination is an observation with the same code, method and
specimen, no value of its own, and `hasMember` references to the findings.

```
Observation: Microscopic observation (105059-0), method light microscopy, no value
  hasMember → Observation: Gram-negative bacillus, component Few
  hasMember → Observation: Leukocyte, component Numerous
```

**Host cells and acid-fast bacilli are findings.** They are reported as the
value of a general microscopy, not with the LOINC codes that name them
(`72163-9 |Leukocytes [Presence] in Specimen by Gram stain|`,
`87243-2 |Microscopic observation [Presence] in Specimen by Auramine
fluorochrome stain|`), which no workgroup filter admits.

{% capture op_text %}
Host cells and acid-fast bacilli are reported as findings of the general microscopy only; the LOINC codes `72163-9`, `72162-1`, `72161-3` and `87243-2` are not used.
{% endcapture %}
{% include open-item.html issue=177 typ="interim" title="Host cells and acid-fast bacilli" text=op_text %}

#### Specific microscopy

The code names the target: LOINC class `MICRO`, property `PrId` or `PrThr`,
method *Microscopy*, *Microscopy.light* or *Microscopy.electron*, active
([Specific Microscopy Codes](ValueSet-micro-microscopySpecificCode-eu-lab.html)).
Preferred are the codes with system `XXX`, which leave the specimen to
`Specimen.type`, e.g. `673-4 |Ova and parasites identified in Specimen by
Light microscopy|`
([Specific Microscopy Codes, preferred](ValueSet-micro-microscopySpecificCodePreferred-eu-lab.html)).
Codes with the component *Microscopic observation* name no target and are
excluded. The target are codes with system `{Specimen}`; LOINC has none for
microscopy yet, so the codes with system `XXX` are preferred until it provides
them.

{% capture op_text %}
`PrId` and `PrThr` are both admitted. Should one of them be preferred?
{% endcapture %}
{% include open-item.html issue=166 typ="interim" title="Property of the specific codes" text=op_text %}

{% capture op_text %}
The *Microscopic observation* codes are excluded from the specific microscopy, because they answer the open question. As the general microscopy admits `105059-0` only, stain pre-coordinated codes such as `664-3 |Microscopic observation [Identifier] in Specimen by Gram stain|` are not admitted at all, although they are widely used.
{% endcapture %}
{% include open-item.html issue=170 typ="interim" title="Codes without a named target" text=op_text %}

**The result depends on the property of the code.**

| Property | Target not found | Found as named | Found more specifically | Something else found |
|---|---|---|---|---|
| `PrId` | `260415000` *Not detected* | `260373001` *Detected* | the organism, e.g. `30020004` *Plasmodium falciparum* for *Plasmodium sp* | the organism found |
| `PrThr` | `260415000` *Not detected* | `260373001` *Detected* | `260373001` *Detected* | an observation of its own |

The more specific result is the usual case for codes naming a genus or a
group: malaria microscopy differentiates the species, and an examination for
*ova and parasites* reports the parasite found. For codes naming a species,
*Detected* or *Not detected* is the natural answer.

{% capture op_text %}
The organism is the value where it is more specific than the target or other than the target. A result under a *Plasmodium* code may then name *Babesia*; is that acceptable for queries?
{% endcapture %}
{% include open-item.html issue=167 typ="interim" title="Result of a PrId code" text=op_text %}

**An unexpected finding with a `PrThr` code is an observation of its own.**
The scale of a `PrThr` code admits presence or absence only. A blood film
examined for *Plasmodium* that shows *Babesia microti* gives two observations:
the specific microscopy says *Not detected* and references the finding through
`hasMember`, so that it stays tied to the examination in which it was made.

```
Observation: Plasmodium sp [Presence] in Blood (51587-4): Not detected, method light microscopy
  hasMember → Observation: Microscopic observation (105059-0): Babesia microti
```

**Target and another organism both found:** each is reported in an
observation of its own with the same code.

{% capture op_text %}
With a `PrThr` code an unexpected organism is an observation of its own, which the targeted observation references through `hasMember`; with a `PrId` code it is the value. Target and another organism found together give one observation each, with the same code. The same rule is proposed for the specific culture and the direct identification.
{% endcapture %}
{% include open-item.html issue=168 typ="interim" title="Unexpected finding" text=op_text %}

#### Microscopy examples

| Example | Instances |
|---|---|
| White paper 1 — direct microscopy of a urine specimen | [obs-micro-urine-gram-gnb](Observation-obs-micro-urine-gram-gnb.html), [spec-micro-urine](Specimen-spec-micro-urine.html) |
| White paper 2 — multiple findings from direct microscopy | [obs-micro-urine-gram-group](Observation-obs-micro-urine-gram-group.html) with [obs-micro-urine-gram-gnr](Observation-obs-micro-urine-gram-gnr.html) and [obs-micro-urine-gram-leukocytes](Observation-obs-micro-urine-gram-leukocytes.html) |
| White paper 3 — direct microscopy for Plasmodium | [obs-micro-blood-plasmodium](Observation-obs-micro-blood-plasmodium.html), [obs-micro-blood-plasmodium-negative](Observation-obs-micro-blood-plasmodium-negative.html) |
| White paper 4 — direct microscopy for parasites | [obs-micro-stool-giardia](Observation-obs-micro-stool-giardia.html) |
| White paper 5 — microscopy following culture | [obs-micro-blood-culture-gram](Observation-obs-micro-blood-culture-gram.html) triggered by [obs-micro-blood-culture-positive](Observation-obs-micro-blood-culture-positive.html), on [spec-micro-blood-culture-derived](Specimen-spec-micro-blood-culture-derived.html) |
| White paper 6 — microscopy of an isolate | [obs-micro-isolate-gram](Observation-obs-micro-isolate-gram.html) on [spec-micro-isolate](Specimen-spec-micro-isolate.html) |
| acid-fast bacilli in an auramine stain | [obs-micro-sputum-afb](Observation-obs-micro-sputum-afb.html) on [spec-micro-sputum-afb](Specimen-spec-micro-sputum-afb.html) |
| specific microscopy, `PrId`, more specific than the target | [obs-micro-spec-blood-plasmodium](Observation-obs-micro-spec-blood-plasmodium.html) |
| specific microscopy, `PrId`, preferred code | [obs-micro-spec-stool-op](Observation-obs-micro-spec-stool-op.html) |
| specific microscopy, `PrThr`, unexpected finding | [obs-micro-spec-blood-plasmodium-presence](Observation-obs-micro-spec-blood-plasmodium-presence.html) with [obs-micro-blood-babesia](Observation-obs-micro-blood-babesia.html) |

White paper examples 3 and 4 use the general code `105059-0`. The same
examinations reported with a code naming the target are specific microscopies;
both representations are valid, and the code decides the profile.

{% capture op_text %}
The scenarios of white paper examples 3 and 4 describe a targeted examination but use the general code. Should they be reworded, or a targeted variant be added?
{% endcapture %}
{% include open-item.html issue=169 typ="interim" title="White paper examples 3 and 4" text=op_text %}

### Direct identification

*Direct identification* is the workflow step that detects a predefined target
in a specimen without a culture: by nucleic acid amplification (PCR) or by
antigen detection. The result says whether the target is present. It is
reported with
[Observation Results: targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html).

The profile is named after its question, not after the workflow step: it
answers *is the target present?*, and it applies to isolates as well. Two
cases of the workflow step use other profiles:

* **Sequencing directly on a specimen** (16S or 18S rRNA on a biopsy) names the
  organism. It is an [identification](#identification).
* **Microscopy aimed at a named target** is a specific microscopy, see
  [Microscopy](#microscopy).

#### Representation of the detection

| Aspect | Element | Coding |
|---|---|---|
| the question | `Observation.code` | LOINC, class `MICRO`, property `PrThr`: [Targeted Detection Codes](ValueSet-micro-targetedDetectionCode-eu-lab.html), preferred [Targeted Detection Codes, preferred](ValueSet-micro-targetedDetectionCodePreferred-eu-lab.html) |
| the result | `Observation.value[x]` | SNOMED CT: [Detected and Not Detected](ValueSet-micro-detectedNotDetected-eu-lab.html) |
| no result | `Observation.dataAbsentReason` | [Microbiology Data Absent Reasons](ValueSet-micro-dataAbsentReason-eu-lab.html) |
| the technique | `Observation.method` | SNOMED CT: [Targeted Detection Techniques](ValueSet-micro-targetedDetectionTechnique-eu-lab.html) |

#### Detection codes

The target is in the LOINC component — the nucleic acid of an organism or an
antigen — and the property is `PrThr`.

{% capture op_text %}
Antibody codes detect the patient's antibodies; they belong to [serology](#serology) and are not used with the targeted detection. The filters for `IF`, `IA` and `Aggl` and the codes without method still catch them, e.g. `105055-8 |Rubella virus IgG Ab [Presence] in Specimen|`: LOINC has no property that tells antibodies from antigens. Regenstrief is to be asked for `{Specimen}` codes that keep them apart ([Issue #194](https://github.com/hl7-eu/laboratory/issues/194)).
{% endcapture %}
{% include open-item.html issue=181 typ="interim" title="Antibody codes" text=op_text %}

**The workgroup's target definition** is the system `{Specimen}` with one of
the methods `{Molgen}`, `IF`, `IA` or `Aggl`. The curly braces mean that
specimen and method are given elsewhere: the specimen in `Specimen.type`, the
technique in `Observation.method`. An example is `105875-9 |Bordetella
pertussis DNA [Presence] in Specimen by Molgen|`. For the serological and
immunological methods the minutes ask LOINC for a new method in curly braces,
analogous to `{Molgen}`, or for codes without a method
([Issue #194](https://github.com/hl7-eu/laboratory/issues/194)); once it
exists, it takes the place of `IF`, `IA` and `Aggl` in the target definition.

**Interim codes.** LOINC has `{Specimen}` codes for `{Molgen}` only, so far
about a thousand. Until it has them for the immunological methods, the
preferred codes also contain:

* the codes with system `XXX` and method `IF`, `IA` or `Aggl`;
* the codes with system `XXX` and no method, e.g. `105066-5 |SARS-CoV+SARS-CoV-2
  (COVID-19) Ag [Presence] in Specimen|` or `105904-7 |Vancomycin resistant
  enterococcus [Presence] in Specimen|`;
* `35492-8 |Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence]
  in Specimen by NAA with probe detection|`, which LOINC files under the wrong
  class.

These additions are dropped once the `{Specimen}` codes exist.

{% capture op_text %}
The target definition is taken from the workgroup minutes of 2026-11-06. The codes with system `XXX` are an interim of this guide until LOINC provides `{Specimen}` codes for the immunological methods, through a new method in curly braces analogous to `{Molgen}` or as codes without a method. Open: which methods the new method covers, and whether it is requested separately for antigens and antibodies. The list of permitted methods of `{Molgen}` already names `IA`, *Immune stain* and *Flow cytometry*; the workgroup is asked whether `{Molgen}` is meant to cover the immunological methods.
{% endcapture %}
{% include open-item.html issue=171 typ="interim" title="Preferred codes" text=op_text %}

**Pre-coordinated codes are accepted.** The workgroup allows pre- and
post-coordination of specimen and method and prefers post-coordination. A
laboratory that cannot post-coordinate uses a code that pre-coordinates the
specimen or the method: `Probe.amp.tar`, `Non-probe.amp.tar`, `Probe.amp`,
`Probe.amp.sig`, `Molgen`, `IF`, `IA` or `Aggl`. The code is bound extensibly
to all of them; the preferred codes are named in an additional binding.

**Not accepted** are the culture codes — a targeted culture is reported with
the [culture](#culture) — and the rapid immunoassay codes
(`IA.rapid`).

#### Detection result

The result is `260373001 |Detected|` or `260415000 |Not detected|`. An organism
other than the target is reported in an observation of its own, not as the
value ([interim position](#op-issue-168)). An indeterminate result — an inhibited PCR, insufficient material — is
not a value: it is given in `dataAbsentReason` as `82334004 |Indeterminate|`.

{% capture op_text %}
An indeterminate result is a `dataAbsentReason`, as in the workbook. The white paper tables *Data model for specific culture* and *Data model for specific identification* list `82334004 |Indeterminate|` as a value.
{% endcapture %}
{% include open-item.html issue=179 typ="interim" title="Indeterminate" text=op_text %}

A qualitative result read from a Ct value points at the observation with the
Ct value through `derivedFrom` (see [Ct value](#ct-value)).

#### Ct value

The Ct value of a qualitative real-time PCR — the number of cycles until the
signal threshold is reached — is a proxy for the amount of target (white paper:
"a second loinc with treshnum property"). Where it is reported, it is an
observation of its own,
[Observation Results: Ct value](StructureDefinition-Observation-ctValue-eu-lab.html),
and the qualitative result read from it points at it through `derivedFrom`.

| Aspect | Element | Coding |
|---|---|---|
| the target | `Observation.code` | LOINC, property `ThreshNum` ([Ct Value Codes](ValueSet-micro-ctValueCode-eu-lab.html)); preferred with system `XXX` ([preferred](ValueSet-micro-ctValueCodePreferred-eu-lab.html)) |
| the Ct value | `Observation.value[x]` | `valueQuantity` with UCUM `1`, e.g. 28.4 |
| the technique | `Observation.method` | fixed: `70601000052104` *Real-time polymerase chain reaction technique* |

```
Observation: Bordetella pertussis DNA [Presence] in Specimen by Molgen (105875-9): Detected
  derivedFrom → Observation: B. pertussis+bronchiseptica+holmesii IS481 DNA [Cycle Threshold #] (85799-5): 28.4
```

Only real-time PCR yields a Ct value, not digital PCR or isothermal techniques.
A negative PCR has no Ct value; only the qualitative result is reported. A Ct
value is reported only where the manufacturer of the assay provides for it; it
is not comparable between assays and is not a load (see
[Quantification](#quantification)). The white paper gives
`Observation.valueDecimal`, which FHIR R4 does not have.

Example: [obs-micro-ct-pertussis](Observation-obs-micro-ct-pertussis.html), the Ct value of [obs-detect-pertussis-pcr](Observation-obs-detect-pertussis-pcr.html).

#### Detection methods

The technique is always given in `Observation.method`:

* **Nucleic acid amplification:** real-time PCR (`70601000052104`), digital PCR
  (`1303992007`), LAMP (`1259932009`), TMA (`1304048000`).
  `1156878000 |Molecular nucleic acid amplification technique|` is the
  fallback where the amplification technique is not known. A SNOMED CT concept
  for NEAR is to be requested ([Issue #199](https://github.com/hl7-eu/laboratory/issues/199)).
* **Immunological techniques:** immunoassay (`726449005`), rapid immunoassay
  (`708099001`), rapid antigen detection immunoassay (`1156860005`),
  immunofluorescence (`703444002`), agglutination (`708104000`).

**The generic *PCR* is not recommended.** It does not distinguish real-time
from classic gel-based PCR and does not cover the isothermal techniques.
SNOMED CT holds `258066000 |Polymerase chain reaction technique|` beside, not
below, `1156878000`, so the method value set is enumerated.

{% capture op_text %}
Generic PCR (`258066000`), multiplex PCR (`1303998006`), probe with target amplification (`702675006`) and sequencing (`1304162005`) are not admitted; `1156878000` is the fallback. The white paper's table *Data model for specific identification* still lists them.
{% endcapture %}
{% include open-item.html issue=172 typ="interim" title="Methods" text=op_text %}

**A rapid antigen test** uses the method-neutral antigen code with
`708099001 |Rapid immunoassay|` or
`1156860005 |Rapid antigen detection immunoassay technique|` as method.

{% capture op_text %}
The `IA.rapid` codes are not admitted; the method-neutral code with the rapid technique as method is used instead.
{% endcapture %}
{% include open-item.html issue=173 typ="interim" title="Rapid antigen tests" text=op_text %}

**A panel is not a method.** A multiplex panel tests several targets in one
run. Each target is an observation of its own with the actual technique; an
observation with the panel code groups them through `hasMember`.

```
Observation: respiratory pathogen panel, no value
  hasMember → Observation: Influenza virus A RNA [Presence]: Not detected, method real-time PCR
  hasMember → Observation: SARS-CoV-2 RNA [Presence]: Detected, method real-time PCR
```

{% capture op_text %}
`703752003 |Organism specific culture technique|` is not a detection method; a targeted culture is reported with the [culture](#culture).
{% endcapture %}
{% include open-item.html issue=174 typ="interim" title="Organism specific culture technique" text=op_text %}

#### Detection examples

| Example | Instances |
|---|---|
| molecular detection with a preferred code | [obs-detect-pertussis-pcr](Observation-obs-detect-pertussis-pcr.html) |
| indeterminate result | [obs-detect-pertussis-pcr-indeterminate](Observation-obs-detect-pertussis-pcr-indeterminate.html) |
| rapid antigen test | [obs-detect-sarscov2-ag-rapid](Observation-obs-detect-sarscov2-ag-rapid.html) |

### Quantification

Quantitative nucleic acid amplification measures the load of a pathogen, e.g.
the cytomegalovirus load in plasma in IU/mL or copies/mL (white paper, chapter
*Molecular Microbiology Genetic Testing*, category 2). It is reported with
[Observation Results: pathogen load](StructureDefinition-Observation-pathogenLoad-eu-lab.html).
The Ct value of a qualitative real-time PCR is not a load; it belongs to the
qualitative detection, see [Ct value](#ct-value).

#### Representation of the load

| Aspect | Element | Coding |
|---|---|---|
| the pathogen and the quantity | `Observation.code` | LOINC, DNA or RNA, property `ACnc` (IU/mL) or `NCnc` (copies/mL) ([Pathogen Load Codes](ValueSet-micro-pathogenLoadCode-eu-lab.html)); preferred with system `XXX` or `{Specimen}` ([preferred](ValueSet-micro-pathogenLoadCodePreferred-eu-lab.html)), e.g. `34720-3` *Cytomegalovirus DNA [Units/volume] (viral load) in Specimen by NAA with probe detection* |
| the load | `Observation.value[x]` | `valueQuantity` with UCUM `[IU]/mL` or `{copies}/mL` ([Pathogen Load Units](ValueSet-micro-pathogenLoadUnit-eu-lab.html)); `valueCodeableConcept` `260415000` *Not detected* |
| the technique | `Observation.method` | [Pathogen Load Techniques](ValueSet-micro-pathogenLoadTechnique-eu-lab.html): real-time PCR, digital PCR, TMA |
| the specimen | `Observation.specimen` | the primary specimen, e.g. plasma, blood, cerebrospinal fluid |
| no result | `Observation.dataAbsentReason` | `82334004` *Indeterminate* and the FHIR data-absent-reason codes |

**Four kinds of result.**

```
not detected:                 valueCodeableConcept = 260415000 Not detected
below the limit of quantif.:  valueQuantity = < 35 [IU]/mL
within the measuring range:   valueQuantity = 12400 [IU]/mL
above the measuring range:    valueQuantity = > 100000000 [IU]/mL
```

A value outside the measuring range SHALL carry `Quantity.comparator`, as for
the susceptibility ([Issue #205](#op-issue-205)): a target detected but not
quantifiable is a load with `<`, not *Not detected*.

**Codes.** Preferred are the codes with system `XXX`, which leave the specimen to
`Specimen.type`; codes with a fixed material, e.g. in serum or plasma, are
accepted, as the white paper finds pre-coordination practical for viral loads.
Log-transformed results need other codes and are not covered in this edition.

**Relations.** A quantification that follows a positive qualitative detection
points back at it through `triggeredBy`. A load ordered directly, e.g. for
monitoring, stands on its own.

{% capture op_text %}
The workbook groups load and Ct value in one block, *Quantification Procedure*; this guide has two profiles, as the white paper puts the Ct value with the qualitative detection and their rules differ: a load is a concentration measured by real-time PCR, digital PCR or transcription-mediated amplification, a Ct value a unitless value of real-time PCR only. Widely used quantitative assays run on transcription-mediated amplification, although the white paper counts isothermal techniques as qualitative only. LOINC has two load codes without method and none with `{Specimen}`; whether such codes are to be requested from Regenstrief is open. In the minutes Stan asks what is being quantified; the example below answers it.
{% endcapture %}
{% include open-item.html issue=211 typ="interim" title="Pathogen load and Ct value" text=op_text %}

#### Quantification examples

| Example | Instances |
|---|---|
| cytomegalovirus load within the measuring range | [obs-micro-load-cmv](Observation-obs-micro-load-cmv.html) on [spec-micro-plasma-1](Specimen-spec-micro-plasma-1.html) |
| detected below the limit of quantification, with comparator | [obs-micro-load-cmv-below-loq](Observation-obs-micro-load-cmv-below-loq.html) |
| not detected | [obs-micro-load-cmv-not-detected](Observation-obs-micro-load-cmv-not-detected.html) |

### Serology

**Not profiled yet.** This section records the state of the workgroup's
conventions for serology.

Serology identifies an infection indirectly, by detecting the antibodies the
patient has formed against a pathogen. In the workflow it starts from a blood
sample and is separate from the direct identification, which detects the
pathogen itself or its antigens (see
[Direct identification](#direct-identification)).

The workgroup's work on serology is ongoing; the workbook sheet *Serology
techniques* is still empty.

**Antibody codes.** The LOINC filters of the targeted detection also catch antibody codes, e.g. `105055-8 |Rubella virus IgG Ab [Presence] in Specimen|` and `105911-2 |SARS-CoV-2 (COVID-19) IgG Ab [Presence] in Specimen|`. They belong to this chapter and are not used with the targeted detection, although its value sets cannot exclude them yet ([Issue #181](#op-issue-181)).

### Open points

The questions below are tracked as issues for the Laboratory Semantic
Workgroup. Where this page follows an interim position, a box marks it at the
affected place. Interim positions are positions of this draft, not decisions
of the workgroup.

| Issue | Question | Section |
|---|---|---|
| [#166](https://github.com/hl7-eu/laboratory/issues/166) | Property of the specific microscopy codes: `PrId`, `PrThr` or both | [Microscopy](#op-issue-166) |
| [#167](https://github.com/hl7-eu/laboratory/issues/167) | Result of a specific `PrId` code | [Microscopy](#op-issue-167) |
| [#168](https://github.com/hl7-eu/laboratory/issues/168) | Unexpected finding outside the target | [Microscopy, Culture](#op-issue-168) |
| [#169](https://github.com/hl7-eu/laboratory/issues/169) | White paper microscopy examples 3 and 4 | [Microscopy](#op-issue-169) |
| [#170](https://github.com/hl7-eu/laboratory/issues/170) | Codes without a named target; stain pre-coordinated codes | [Microscopy](#op-issue-170) |
| [#171](https://github.com/hl7-eu/laboratory/issues/171) | Preferred codes of the direct identification | [Direct identification](#op-issue-171) |
| [#172](https://github.com/hl7-eu/laboratory/issues/172) | Methods of the targeted detection | [Direct identification](#op-issue-172) |
| [#173](https://github.com/hl7-eu/laboratory/issues/173) | Rapid antigen tests | [Direct identification](#op-issue-173) |
| [#174](https://github.com/hl7-eu/laboratory/issues/174) | Organism specific culture technique as a detection method | [Direct identification](#op-issue-174) |
| [#175](https://github.com/hl7-eu/laboratory/issues/175) | Kingdom-level identification codes | [Identification](#op-issue-175) |
| [#176](https://github.com/hl7-eu/laboratory/issues/176) | Scope of the microscopic findings | [Microscopy](#op-issue-176) |
| [#177](https://github.com/hl7-eu/laboratory/issues/177) | Host cells and acid-fast bacilli | [Microscopy](#op-issue-177) |
| [#178](https://github.com/hl7-eu/laboratory/issues/178) | Semi-quantitative grades: *Scanty* | [Microscopy](#op-issue-178) |
| [#179](https://github.com/hl7-eu/laboratory/issues/179) | *Indeterminate*: value or `dataAbsentReason` | [Direct identification](#op-issue-179) |
| [#180](https://github.com/hl7-eu/laboratory/issues/180) | Microscopy technique: root concept | [Microscopy](#op-issue-180) |
| [#181](https://github.com/hl7-eu/laboratory/issues/181) | Antibody codes in the direct identification | [Direct identification, Serology](#op-issue-181) |
| [#182](https://github.com/hl7-eu/laboratory/issues/182) | Profile names | [Profiles](#op-issue-182) |
| [#183](https://github.com/hl7-eu/laboratory/issues/183) | Susceptibility interpretation codes | [Susceptibility](#op-issue-183) |
| [#184](https://github.com/hl7-eu/laboratory/issues/184) | Rapid immunoassay codes for resistance mechanisms | [Resistance](#op-issue-184) |
| [#185](https://github.com/hl7-eu/laboratory/issues/185) | Susceptibility methods from the Dutch extension | [Susceptibility](#op-issue-185) |
| [#186](https://github.com/hl7-eu/laboratory/issues/186) | Specific culture: property of the codes and result | [Culture](#op-issue-186) |
| [#188](https://github.com/hl7-eu/laboratory/issues/188) | General culture: code and result | [Culture](#op-issue-188) |
| [#189](https://github.com/hl7-eu/laboratory/issues/189) | Method and specimen type required | [Core principles](#op-issue-189) |
| [#202](https://github.com/hl7-eu/laboratory/issues/202) | Procedure concepts as methods | [Identification](#op-issue-202) |
| [#204](https://github.com/hl7-eu/laboratory/issues/204) | Susceptibility methods: techniques or procedures | [Susceptibility](#op-issue-204) |
| [#205](https://github.com/hl7-eu/laboratory/issues/205) | Susceptibility: quantitative result | [Susceptibility](#op-issue-205) |
| [#206](https://github.com/hl7-eu/laboratory/issues/206) | Susceptibility codes: genotype methods | [Susceptibility](#op-issue-206) |
| [#208](https://github.com/hl7-eu/laboratory/issues/208) | Molecular resistance: codes | [Resistance](#op-issue-208) |
| [#210](https://github.com/hl7-eu/laboratory/issues/210) | Resistance: data model | [Resistance](#op-issue-210) |
| [#211](https://github.com/hl7-eu/laboratory/issues/211) | Quantification: pathogen load and Ct value | [Quantification](#op-issue-211) |

**Codes requested** and not yet available. Each request is tracked as an issue with its origin and the status of submission and availability; submitting is up to the workgroup.

| Issue | Code system | Request | Origin |
|---|---|---|---|
| [#190](https://github.com/hl7-eu/laboratory/issues/190) | LOINC | semi-quantitative value of a microscopy finding (component code) | workbook; prepared for the workgroup, not yet discussed |
| [#191](https://github.com/hl7-eu/laboratory/issues/191) | LOINC | whole genome and sequence identification; fungal ITS identification | workbook; prepared for the workgroup, not yet discussed |
| [#192](https://github.com/hl7-eu/laboratory/issues/192) | LOINC | class correction of `35492-8`, `106843-6` and `103673-0` | decided by the workgroup |
| [#193](https://github.com/hl7-eu/laboratory/issues/193) | LOINC | organism specific culture codes for missing targets | decided by the workgroup |
| [#194](https://github.com/hl7-eu/laboratory/issues/194) | LOINC | method in curly braces for the serological and immunological methods, with system `{Specimen}` | decided by the workgroup; separation of antigens and antibodies proposed in this guide |
| [#195](https://github.com/hl7-eu/laboratory/issues/195) | LOINC | inducible clindamycin resistance, cefoxitin resistance, PBP2a, AmpC | decided by the workgroup; AmpC proposed in this guide (white paper) |
| [#196](https://github.com/hl7-eu/laboratory/issues/196) | LOINC | general culture code with the property `PrThr` | Berlin workshop |
| [#197](https://github.com/hl7-eu/laboratory/issues/197) | LOINC | method-neutral carbapenemase codes | proposed in this guide |
| [#199](https://github.com/hl7-eu/laboratory/issues/199) | SNOMED CT | nicking enzyme amplification reaction (NEAR) | white paper; workbook |
| [#200](https://github.com/hl7-eu/laboratory/issues/200) | SNOMED CT | concepts for the interpretation standards EUCAST and CLSI | workbook; white paper; proposed in this guide |
| [#201](https://github.com/hl7-eu/laboratory/issues/201) | SNOMED CT | promotion of two Dutch MIC techniques to the International Edition | proposed in this guide |
| [#209](https://github.com/hl7-eu/laboratory/issues/209) | LOINC | resistance gene codes in `{Specimen}` by `{Molgen}` | workbook; Stan offers them in the minutes; proposed in this guide |
