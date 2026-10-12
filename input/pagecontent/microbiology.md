### Scope

This page describes how microscopy and the identification of microorganisms
are represented in this guide. It follows the conventions of the HL7 Europe
Laboratory Semantic Workgroup — the white paper *Conventions for FHIR based
Microbiology Result Reporting* and its terminology workbook — and profiles the
parts of them that concern microscopy and the naming of the organism. Culture,
susceptibility testing, serology and quantitative molecular results are not
covered yet.

### Core principles

The microbiology profiles apply the principles the workgroup states for the
whole domain:

* **The LOINC code says what was tested.** Its component names the target as
  precisely as the use case needs; a broad test gets a broad code
  (`41852-5 |Microorganism or agent identified in Specimen|`).
* **Specimen and method are post-coordinated.** Codes with system `XXX` and
  without a method are preferred. The specimen is always an explicit
  `Specimen` resource with its type in `Specimen.type`; the technique is always
  given in `Observation.method`, also where the code pre-coordinates a broad
  method category.
* **Pre-coordinated codes are not excluded by design.** A laboratory that
  cannot yet post-coordinate uses the accepted pre-coordinated code and still
  represents specimen and method explicitly.
* **SNOMED CT carries the nominal answers,** the specimen, the staining and
  the method.
* **The workflow stays visible.** A later step points back at the step that
  caused it through `triggeredBy`; several findings of one examination are
  grouped through `hasMember`; a result read from another result points at it
  through `derivedFrom`.

### Three questions, three profiles

A profile is defined by the question asked and the type of its answer, not by
the technique used. Microscopy and identification ask three questions:

| Question | Profile | `Observation.code` | `Observation.value[x]` |
|---|---|---|---|
| What is there to see? | [Observation Results: microscopy](StructureDefinition-Observation-microscopy-eu-lab.html) | `105059-0` | the finding: a morphology, an organism seen, host cells, or *not detected* |
| Which organism is it? | [Observation Results: organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html) | `41852-5` | the organism, or *not detected* |
| Is X present? | [Observation Results: targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html) | a LOINC code naming X, property `PrThr` | *detected* / *not detected* |

The first two are open questions; the third is targeted. The targeted
question has one answer space whatever the technique, so one profile serves
nucleic acid amplification, sequencing, immunoassays, agglutination and the
microscopic search for an object named in the code (acid-fast bacilli,
leukocytes) alike. The technique is read from `Observation.method`.

The workbook calls the open and the targeted microscopy "Profile 1" and
"Profile 2" of microscopy. Here the targeted microscopy is part of the targeted
detection, because it asks the targeted question; it keeps the
semi-quantitative component the open microscopy has.

The specimen of all three is a
[Specimen: microbiology](StructureDefinition-Specimen-microbiology-eu-lab.html).

### Microscopy

The microscopic result describes what is observed. Four aspects influence it
and are represented separately:

| Aspect | Element | Coding |
|---|---|---|
| the question | `Observation.code` | LOINC, preferably `105059-0` |
| the finding | `Observation.value[x]` | SNOMED CT: [Microscopic Findings](ValueSet-micro-microscopyFinding-eu-lab.html) |
| the microscopy technique | `Observation.method` | SNOMED CT `< 278289002 |Microscopy technique|` |
| the staining | `Specimen.processing.procedure` | SNOMED CT `< 37926009 |Microbial stain method|` |
| the amount | `Observation.component` with code `103392008` | SNOMED CT: [Semi-quantitative Microscopy Grades](ValueSet-micro-semiquantitative-eu-lab.html) |

**Staining is specimen processing,** not the observation method. Light
microscopy may be applied to a Gram-stained and to an auramine-stained
preparation of the same material; representing the two aspects separately keeps
both readable.

**The amount is a component.** *Few Gram-negative bacilli* is two statements:
the finding and its amount. `value[x]` carries the finding, the component with
the code `103392008 |Semi-quantitative value|` carries the amount. The
workgroup has requested a LOINC code for the component; it replaces the SNOMED
CT code once it exists.

**Several findings of one examination are several observations.** A Gram
stain may show Gram-negative rods and leukocytes. Each finding is its own
observation; the examination is an observation with the same code, method and
specimen, no value of its own, and `hasMember` references to the findings.

```
Observation: Microscopic observation (105059-0), method light microscopy, no value
  hasMember → Observation: Gram-negative bacillus, component Few
  hasMember → Observation: Leukocyte, component Numerous
```

**An organism seen is a finding.** Where microscopy recognises the organism —
a *Plasmodium* species in a blood film, *Giardia lamblia* in stool — the
organism is the value of the microscopic observation, with its amount in the
component. If nothing is found, the observation carries *not detected* rather
than being omitted.

**Microscopy after culture references the derived material.** The Gram stain
of a positive blood culture or of an isolate references a specimen that points
at the primary specimen through `Specimen.parent`, and the observation points
at the culture that triggered it through `triggeredBy`.

### Organism identification

Culture and identification are separate steps with distinct code sets. The
culture answers *does anything grow?*; the identification takes the isolate as
input and names the organism. Keeping them apart lets the identification method
be stated (MALDI-TOF is not a culture technique) and resolves the unexpected
finding — a targeted culture that grows something else.

The identification is coded with `41852-5 |Microorganism or agent identified in
Specimen|` whatever the technique; the technique is in `Observation.method`:
MALDI-TOF mass spectrometry, microscopy, sequencing, visual estimation. The
result is the organism from the SNOMED CT organism hierarchies, or
`260415000 |Not detected|` when nothing was identified.

Identification may also be performed on a direct specimen without a culture
step: 16S or 18S rRNA sequencing on a biopsy, malaria microscopy on blood. The
sequencing codes `66885-5` and `101534-6` carry the sequencing target in the
component and the result in the same organism value set.

Laboratories that report the whole pathway with one culture code and the
organism as its value should split such a result into a culture observation
(growth) and an identification observation (the organism), leaving the method
of the identification empty where it is not known.

### Targeted detection

The target is in the LOINC component, the property is `PrThr`, and the
preferred code leaves specimen and method out: `105875-9 |Bordetella pertussis
DNA [Presence] in Specimen|` with the specimen in `Specimen.type` and
`70601000052104 |Real-time polymerase chain reaction technique|` in
`Observation.method`. A laboratory that cannot post-coordinate the method uses
a code pre-coordinating the broad category (`Probe.amp.tar`, `Molgen`, `IA`).

The result is `Detected` or `Not detected`. An indeterminate result — an
inhibited PCR, insufficient material — is not a value: it is given in
`dataAbsentReason` as `82334004 |Indeterminate|`.

The generic method *polymerase chain reaction technique* is discouraged
because it does not distinguish real-time from classic gel-based PCR; real-time
PCR, LAMP and TMA are preferred. A rapid antigen test is a method-neutral
antigen code with `1156860005 |Rapid antigen detection immunoassay technique|`
as the method.

A targeted culture — *Vancomycin resistant enterococcus [Presence] in Specimen
by Organism specific culture* — is a culture step with growth as its result and
is not represented with this profile.

### Examples

| White paper example | Instances |
|---|---|
| 1 — direct microscopy of a urine specimen | [obs-micro-urine-gram-gnb](Observation-obs-micro-urine-gram-gnb.html), [spec-micro-urine](Specimen-spec-micro-urine.html) |
| 2 — multiple findings from direct microscopy | [obs-micro-urine-gram-group](Observation-obs-micro-urine-gram-group.html) with [obs-micro-urine-gram-gnr](Observation-obs-micro-urine-gram-gnr.html) and [obs-micro-urine-gram-leukocytes](Observation-obs-micro-urine-gram-leukocytes.html) |
| 3 — direct microscopy for Plasmodium | [obs-micro-blood-plasmodium](Observation-obs-micro-blood-plasmodium.html), [obs-micro-blood-plasmodium-negative](Observation-obs-micro-blood-plasmodium-negative.html) |
| 4 — direct microscopy for parasites | [obs-micro-stool-giardia](Observation-obs-micro-stool-giardia.html) |
| 5 — microscopy following culture | [obs-micro-blood-culture-gram](Observation-obs-micro-blood-culture-gram.html) triggered by [obs-micro-blood-culture-positive](Observation-obs-micro-blood-culture-positive.html), on [spec-micro-blood-culture-derived](Specimen-spec-micro-blood-culture-derived.html) |
| 6 — microscopy of an isolate | [obs-micro-isolate-gram](Observation-obs-micro-isolate-gram.html) on [spec-micro-isolate](Specimen-spec-micro-isolate.html) |
| identification by MALDI-TOF | [obs-ident-maldi-kpneumoniae](Observation-obs-ident-maldi-kpneumoniae.html) |
| identification by 16S sequencing | [obs-ident-16s-sequencing](Observation-obs-ident-16s-sequencing.html), [obs-ident-not-detected](Observation-obs-ident-not-detected.html) |
| targeted molecular detection | [obs-detect-pertussis-pcr](Observation-obs-detect-pertussis-pcr.html), [obs-detect-pertussis-pcr-indeterminate](Observation-obs-detect-pertussis-pcr-indeterminate.html) |
| rapid antigen test | [obs-detect-sarscov2-ag-rapid](Observation-obs-detect-sarscov2-ag-rapid.html) |
| targeted microscopy (workbook Profile 2) | [obs-detect-afb-auramine](Observation-obs-detect-afb-auramine.html), [obs-detect-leukocytes-gram](Observation-obs-detect-leukocytes-gram.html) |

### Open points

These points are decided here in one way where the source material leaves a
choice or contradicts itself; they are listed for the workgroup.

* **Targeted microscopy** is modelled as targeted detection, not as a second
  microscopy profile.
* **Indeterminate** is a `dataAbsentReason`, as the workbook has it, not a
  value, as the white paper's table for specific identification has it.
* **Host cells** in a Gram stain can be reported as a finding of the open
  microscopic observation (white paper example 2) or as a targeted detection
  with the LOINC code naming them (`72163-9`). Both are shown; one should be
  recommended.
* **Rapid immunoassay codes** are excluded from the targeted detection codes,
  following the workbook's filter; the technique is post-coordinated instead.
* **The microscopy technique value set** takes the descendants of
  `278289002`, as the workbook writes it, so the root itself is not a valid
  method.
* **Codes requested** and not yet available: a LOINC code for the
  semi-quantitative component, *Parasite identified in Specimen*, a general
  sequencing identification code; SNOMED CT concepts for automated biochemical
  identification, NEAR and non-probe amplification.
