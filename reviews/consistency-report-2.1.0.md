# HL7 Europe Laboratory Report – Consistency Review for 2.1.0 (STU update)

- **Date:** 2026-10-04. First review of commit `a452eb5` on branch `release-2.1.0-published-dependencies` (PR #145, open), which is based on `2.1.0` at `c91e151`. Last updated after commit `8324450`. Items that have been fixed have been removed; they are listed under *Fixed since the first review* at the end of the report.
- **Scope:** FSH sources (`input/fsh`), examples, narrative pages (`input/pagecontent`, `input/includes`), configuration (`sushi-config.yaml`, `publication-request.json`, `ig.ini`), the IG Publisher QA output (`output/qa.*`), `input/ignoreWarnings.txt` and the repository contents. `changes.md` was compared with `git diff v2.0.0..a452eb5` and with the published `hl7.fhir.eu.laboratory#2.0.0` package.
- **Build status:**
  - SUSHI 3.20.1 reports 0 errors and 0 warnings.
  - The IG Publisher 2.3.4 run of 2026-10-04 16:16 (commit `35a4c31`) built `hl7.fhir.eu.laboratory#2.1.0`, status `active`, release label `trial-use`. Resolved dependencies: `hl7.fhir.eu.base` 2.0.1, `hl7.fhir.eu.extensions.r4` 1.3.1, `hl7.fhir.uv.ips` 2.0.1 (fetched from packages2.fhir.org, see *Fixed since the first review*), `hl7.fhir.uv.xver-r5.r4` 0.1.0, `hl7.fhir.uv.extensions.r4` 5.3.0, `hl7.terminology.r4` 7.4.0.
  - It reports **0 errors, 1 warning and 0 information messages**, plus 109 suppressed warnings and 136 suppressed hints. The warning is the outdated Jira spec file, which HL7/JIRA-Spec-Artifacts#1592 updates.
  - A run of commit `a452eb5` with an empty `ignoreWarnings.txt` reports 0 errors, 105 warnings and 128 information messages; §7 uses it to show what the suppressions hide.

Severity: **High** means fix before publication. **Medium** means it should be fixed for 2.1.0. **Low** means cleanup or editorial.

File references are relative to the repository root. FSH example paths are shortened: `lab_report/…` is `input/fsh/examples/lab_report/…` and `poc-ehdsi/…` is `input/fsh/examples/poc-ehdsi/…`.

Each open item has an id `<section>-<n>`. Ids are stable: fixed or accepted items keep their id when they move to *Won't fix (accepted)* or *Fixed since the first review*, and new items get the next free number.

---

## 1. Release blockers (High)

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 1-1 | High | `input/pagecontent/changes.md` | Final check of the change log, to be done at the very end of the release work. All fixes made for this report have to be reflected, and the listed changes must still match the FSH (see 1-2 and §6.5). | Re-check `changes.md` against the FSH just before publication. |

---

## 2. Configuration and publication

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 2-3 | Low | `sushi-config.yaml:131-134` | The `special-url` entries `information-recipient`, `composition-basedOn-order-or-requisition` and `http://example.org/lab-codes` are not defined by this IG and are not used. They date from the XpanDH import (`48bc9b6`); the basedOn extension was removed for FHIR-51567. | Remove `special-url`. |
| 2-4 | Low | `sushi-config.yaml:1, 12, 35-38, 57-60, 115-120, 140-173, 265-318, 443-458, 478-490` | Commented-out leftovers: the old id, the mCODE dependency template, the semantic-notes, overview and recommendations pages, unused parameters (l.159 "todo: remove and see4"), the ConceptMaps removed in 2.0.0, and the obligation resources and group. `license` (l.12) is commented out; SUSHI's CC0-1.0 default still applies. | Delete the leftovers and set `license: CC0-1.0` explicitly. |
| 2-5 | Low | `sushi-config.yaml` pages (l.53-111) vs menu (l.183-210) | Menu labels and page titles differ: "Known/Open Issues" / "Known Issues", "Download" / "Downloads", "Managing statuses" / "Managing Laboratory Report statuses", "Scenarios" / "Laboratory Report scenarios", "Design Choices" / "Design choices", "Authors and Contributors" / "Authors and contributors", "Expansion parameters" / "Expansion Parameters". | Align them. |
| 2-6 | Low | `ig.ini:5, 7, 13-54` | Leftovers: the old `…eu.eu-laboratory.json` IG path, `#template = openhie.fhir.template#current` and the template documentation block. | Remove them. |
| 2-7 | Low | `sushi-config.yaml:322-441` vs FSH `Title`/`Description` | The 2.1.0 examples have a title and a description both in FSH and in `sushi-config.yaml`, with different texts; `sushi-config.yaml` wins (e.g. `Specimen-collection-example`, FSH l.6-9 vs config l.330-332). Some titles are generic ("Composition: example", "Bundle: two sections", "Observation: ratio example"), and "conforming this guide" lacks "to". | Keep titles and descriptions in one place and make them descriptive. |

---

## 3. Profiles (FSH)

### 3.1 Structural consistency

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.1-5 | Low | `profiles/bundle-lab.fsh:60-61` | `entry[organization]` uses plain `Organization`, while every Organization target in Composition, DiagnosticReport and Observation is `OrganizationEuCore`. | Use `OrganizationEuCore`. |
| 3.1-6 | Low | `profiles/diagnosticReport-lab.fsh:79`; `serviceRequest-lab.fsh:22`; `specimen-lab.fsh:14, 19` | Plain types where EU Core or lab profiles exist: plain `Location` among the subject targets, plain `ServiceRequest` for `Specimen.request`, plain Practitioner/Organization for `ServiceRequest.requester`/`performer` and `Specimen.collection.collector`. | Use the EU Core or lab profiles. |
| 3.1-7 | Low | `profiles/device-measuring.fsh`, `device-specimen.fsh`, `patient-animal.fsh`; `observation-lab.fsh:78`; `specimen-lab.fsh:14` | Nothing references `DeviceMeasuringLabReportEu` or `DeviceSpecimenLabReportEu`: `Observation.device` and `Specimen.subject` use plain `Device`. Since FHIR-57547 nothing references `PatientAnimalEu` either. | Reference them, or say on their pages that they are standalone. |
| 3.1-8 | Low | `profiles/specimen-lab.fsh:46` | In `Reference(Substance or SpecimenAdditiveSubstance)`, `Substance` makes the profile pointless. | Keep one of the two. |
| 3.1-9 | Low | `profiles/quantity-lab.fsh:32, 36, 51, 55` vs `:12` | Ratio and Range require `code 1..1`, while `QuantityEuLab` says code and system are not mandatory. | Align them (see FHIR-53529). |
| 3.1-10 | Low | `bundle-lab.fsh:14-15, 140-148`; `composition-lab.fsh:51, 66, 82`; `serviceRequest-lab.fsh:17`; `observation-lab.fsh:44` | Constraints that repeat what already applies: `one-comp`/`one-dr` repeat the `1..1` type-discriminated slices; `title 1..`, `SectionCommonRules` and `section[annotations].text 1..` repeat `CompositionEuCore`; `ServiceRequest.subject 1..` and `Observation.category 1..*` repeat the parents. | Remove them, or keep the invariants only for their clearer message. |
| 3.1-11 | Low | `observation-lab.fsh:46`; `composition-lab.fsh:56` | `Observation.category` and `Composition.section` slice with the deprecated `#pattern` discriminator (suppressed, see 7-6), while DiagnosticReport and Composition `category` use `#value`. | Use `#value` throughout (see FHIR-58150). |

### 3.2 Invariants

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.2-4 | Low | `profiles/observation-lab.fsh:95, 100` | "other then" in `eu-lab-1` and `eu-lab-2`. | "other than". |
| 3.2-5 | Low | `bundle-lab.fsh:111-148`; `observation-lab.fsh:94-102` | The ids follow no common pattern (`one-comp`, `one-dr`, `dr-comp-*`, `eu-lab-n`). `one-dr` says "A laboratory report" where `one-comp` says "A laboratory report bundle". | Harmonise the texts; keep the published ids. |

All eight invariant expressions were checked (context, precedence of `implies`/`or`, behaviour on empty collections, the R5 extension URLs); apart from the items above they are correct.

### 3.3 Leftovers in FSH

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.3-1 | Low | `extensions-lab.fsh:37`; `rulesSet-lab.fsh:4-9`; `diagnosticReport-lab.fsh:93` | Open TODOs from the May list: the R6 backport for `SpecimenFocus`, the commented-out `ReportStatusRule` with its ConceptMap note, "docref instead of media". (The TODO on `DiagnosticReportCompositionR5` was resolved with 3.1-1.) | Resolve them, or move them to Jira and delete them. |
| 3.3-2 | Low | `composition-lab.fsh:23-25, 37, 72`; `serviceRequest-lab.fsh:30`; `rulesSet-lab.fsh:37`; `diagnosticReport-lab.fsh:61, 63` | Review notes in the source: "HK: …", "RH - should attester be 1.. or 0..?", "check if ..1 or ..*", "add invariant ?", "value set to be revised…", "add binding". | Delete them or move them to Jira. |
| 3.3-3 | Low | `diagnosticReport-lab.fsh:6-7, 26-40, 44, 46-49, 62-71, 84, 86`; `composition-lab.fsh:22, 26, 35`; `rulesSet-lab.fsh:13, 28, 36, 44`; `observation-lab.fsh:77`; `observation-results.fsh:5, 8-10`; `rulesSet-common.fsh:19, 60-61, 81-83`; `animal-specimen.fsh:8-9, 26-29`; `bundle-lab.fsh:113`; `device-*.fsh:7-8`; `quantity-lab.fsh:23`; value set files | Commented-out rules and blocks, including `obeys labRpt-*` for invariants that no longer exist and the old `dr-comp-enc` expression. `composition-lab.fsh:11-13`, which explains FHIR-51567, can stay. | Remove them. |
| 3.3-4 | Low | `rulesSet/rulesSet-common.fsh:12-63, 93-95, 103-108` | Unused rulesets: `SetFmmandStatusRuleInstance`, `SectionComRules`, `SectionEntrySliceComRules`, `SectionEntrySliceDefRules`, `NoSubSectionsRules`, `SectionElementsRules`, `ObligationElement`, `SliceElementWithDescription`. | Remove them. |
| 3.3-5 | Low | `alias-lab.fsh`; `alias-systems.fsh` | 48 of 83 aliases are unused, and 4 more are used only by unused rulesets. `$data-absent-reason` and `$data-absent-reason-cs` are duplicates (`alias-systems.fsh:8-9`). Unused placeholders: `$iccc3` "FAKE URL" (:14), `$medicalDevice-cs` and `$orpha` "to be checked" (:18, :23). `$Patient-eu-lab` (`alias-lab.fsh:11`) points to a profile that doesn't exist. | Delete the unused aliases. |
| 3.3-6 | Low | `bundle-lab.fsh:49`; `observation-lab.fsh:80-81`; `diagnosticReport-lab.fsh:110-111`; `alias-lab.fsh:22-23` | Stale texts: "PatientAnimalEuCore" exists in neither EU Base 2.0.0 nor 2.0.1; the rendered `hasMember` definition cites "Observation-results-laboratory-uv-ips"; `media.link.display` calls `alternate-reference` a "cross-version extension"; the EU extension aliases sit under the core-extensions heading. | Update them. |
| 3.3-7 | Low | `animal-specimen.fsh:14`; `patient-animal.fsh:11`; `diagnosticReport-lab.fsh:83-86` | Bare path rules with no effect: `* extension[recordedSexOrGender]`, `* performer`, `* resultsInterpreter`. | Remove them. |

### 3.4 Terminology

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.4-3 | Low | `lab-certifiedRefMaterial.fsh:6, 84, 86`; `rulesSet-common.fsh:85-87` | The value set also includes PEI and NIAID codes but has only the NIBSC copyright. `NIBSCCopyrightForVS` sets `experimental = true` as a side effect. | Extend the copyright; set `experimental` in the value set. |
| 3.4-4 | Low | `lab-species.fsh:7-9`; `lab-certifiedRefMaterial.fsh:7-8` | Two value sets stay FMM 1 / draft in a trial-use release; `knownIssues.md` covers only the CRM canonical URLs. | Confirm it is intended and list both in `knownIssues.md`. |
| 3.4-5 | Low | `rulesSet/rulesSet-common.fsh:70, 74` | The SNOMED CT text names IHTSDO; the LOINC copyright says "1995-2020". | "SNOMED International"; "1995+". |
| 3.4-6 | Low | `observation-lab.fsh:9` | Only `ObservationResultsLaboratoryEu` sets `experimental = false`; the other StructureDefinitions leave it unset, while every value set sets it. | Set it consistently. |
| 3.4-7 | Low | `extensions-lab.fsh:13-14, 47-87`; `lab-species.fsh:2` | The comparator value sets and extensions are new in 2.1.0 and their ids lack the `-eu-lab` suffix; `lab-speciesType-eu-vs` uses `-eu-vs`. | Harmonise the new ids now, before they are published. |
| 3.4-8 | Low | `lab-medicalDevice.fsh:3-4`; `lab-specimenType-lab.fsh:4`; `lab-orderCodes-lab.fsh:4` | Thin or faulty titles and descriptions: "Medical Device"/"Medical Device"; "Laboratory Specimen Types"; an unbalanced quote in "'Both."; the IPS value set is cited with a wrong title. | Improve them. |
| 3.4-9 | Low | `observation-lab.fsh:71-73`; `quantity-lab.fsh:6`; `composition-lab.fsh:43`; `rulesSet-lab.fsh:50`; `serviceRequest-lab.fsh:10` | Typos in rendered texts: "technigue", "hovewer", "measurment techique", "informaiton", "is is", "RealtedPerson", "classificion", "Laboratory Order composition." | Fix them. |

No value set is referenced but missing: every binding resolves to an IG value set, to core or to IPS 2.0.1.

---

## 4. Obligation profiles

The IG has no obligation profiles, and `obligations.md` says obligations are not formally specified in this version, so the coverage is consistent.

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 4-1 | Low | `rulesSet/rulesSet-obligations.fsh:1-20`; `rulesSet-common.fsh:89-95`; `alias-lab.fsh:5-7, 24-25`; `alias-systems.fsh:21` | Nothing uses `ObligationSet1-3`, `ObligationActorAndCode`, `ObligationElement` or the `$server`/`$creator`/`$consumer`/`$obligation`/`$obligation-cs` aliases. | Remove them until obligations return. |
| 4-2 | Low | `examples/actor/actors.fsh` | The three ActorDefinitions are published (`#example`, active) but nothing references them; the obligations group is commented out in `sushi-config.yaml:478-490`. Two descriptions read "Laboratory Report Report …". | Drop them, or mention them on `obligations.md`; fix the typo. |

---

## 5. Examples


No duplicate top-level ids were found. Every Bundle entry matches a `BundleLabReportEu` entry slice, all intra-Bundle references resolve, each Bundle has a single subject, and `dr-comp-identifier`, `dr-comp-type`, `dr-comp-subj` and `dr-comp-enc` hold in all five Bundles. The seven examples listed for 2.1.0 exist and use the new elements correctly.

The example findings 5-1 to 5-27 are tracked in GitHub issues #146 to #154 and are not part of the 2.1.0 release work; see *Won't fix (accepted)*.

---

## 6. Narrative pages

### 6.1 Language and editorial conventions

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 6.1-1 | Low | Spelling | The pages mostly use American spelling. British outliers: `index.md:36` "specialised" (l.37 "specialized"), `logicalmodels.md:8` "realise", `:11` "visualised", `scenarios.md:50` "analyser", `crossversionanalysis.md:3` "flavours". `status-mgmt.md:139,142` say "canceled", but the code is `cancelled`. `index.md:36` has "haematology" and "immunohematology". | American spelling throughout; keep "cancelled" to match the code. |
| 6.1-2 | Low | Typos and grammar | `StructureDefinition-DiagnosticReport-eu-lab-intro.xml:24` "consited"; `design-choice.md:26` "shall always refers a", `:29` "a mean", `:62` "choice it is not imposed… whishing… may used"; `background.md:8` "These services was", `:40` "co-lead", `:64` "relatioship"; `contributors.md:3` "multi  stakeholders", `:7` "picture provide"; `scenarios.md:9` "this guides", `:22`/`:30` "either" without a second option, `:30` ".**."; `status-mgmt.md:25` "is comprised from", `:153` "paragraph describe"; `knownIssues.md:7` "an non-exiting"; `changes.md:88` "maintainance". | Fix them. |
| 6.1-3 | Low | `status-mgmt.md:51, 53, 107` | l.51 and l.53 are the same sentence; l.107 ends with an unclosed "(See ". | Delete l.51; complete or delete the parenthesis. |
| 6.1-4 | Low | `status-mgmt.md:54` | The link `#hl7-fhir-r4-1` goes to the second "HL7 FHIR R4" heading (l.155), not to the table the text refers to (l.57, `#hl7-fhir-r4`). | Link to `#hl7-fhir-r4`. |
| 6.1-5 | Low | Markup | `<head>/<title>` inside the `<div>` fragment of `modelmap.xml:3-6` and all 8 `map-*.xml`; empty `<a> </a>` (`modelmap.xml:17,30,60,153`, every map page l.17-26) and `<p></p>` elements (`background.md`, `contributors.md:12`, `design-choice.md:37`, `index.md:60,72,80`, four map pages); `model-map-block` nested in itself (`modelmap.xml:2/8`); `<ul>`/`<ol>` inside `<p>` (`StructureDefinition-Observation-resultslab-eu-lab-intro.md:56-68`); duplicate anchor `pdf-and-images` (`StructureDefinition-ServiceRequest-eu-lab-intro.xml:5`); UTF-8 BOM in `map-ehdsattachment.xml`, `map-ehdsdevice.xml`, `map-ehdslaboratoryobservation.xml`. | Remove the leftovers, rename the anchor, strip the BOMs. |
| 6.1-6 | Low | 14 files | No trailing newline: `background.md`, `contributors.md`, `copyright.md`, `crossversionanalysis.md`, `dependencies.md`, `design-choice.md`, `knownIssues.md`, `obligations.md`, `scenarios.md`, `map-ehdsrelatedperson.xml`, `StructureDefinition-Composition-eu-lab-notes.md`, `StructureDefinition-Observation-resultslab-eu-lab-notes.md`, `StructureDefinition-Patient-animal-eu-lab-intro.md`, `StructureDefinition-Specimen-eu-lab-intro.md`. | Add one. |
| 6.1-7 | Low | `contributors.md:28, 51, 62, 65-76` | Stray "\|" after "**Participants**:", mixed commas and semicolons, "Keßler(mio42 DE)", "Johal,(NO)", no separator at the end of l.75; Spain as "SP" instead of ES; Samuel Danhardt listed as contributor and as participant. | Clean up the list. |
| 6.1-8 | Low | `index.md:3-14` | The banner's inline style keeps authoring comments ("adjust 340px to your ToC width", "uncomment/tweak…"), which are published; the fixed 340px margin squeezes the box on narrow screens. | Move the styling to a CSS class. |
| 6.1-9 | Low | `crm.md:19, 21, 25-28, 39` | URLs in parentheses are not rendered as links. | Use `<url>` or `[text](url)`. |
| 6.1-10 | Low | Names | `StructureDefinition-Patient-animal-eu-lab-intro.md:7,10,13` "hl7-base"; `index.md:16` alt text "XTEHR Logo"; "Xt-EHR joint action" vs "Xt-EHR Joint Action"; "E-EHRxF", "European EHRxF" (`index.md:46`) and "European-EHRxF" (`background.md:38`). | "HL7 Europe Base and Core", "Xt-EHR Joint Action", "E-EHRxF". |

### 6.2 Links

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 6.2-2 | Low | `modelmap.xml:109,120,131,142,222`; `map-ehdsmedicationadministration.xml:35`, `map-ehdsdevice.xml:43`, `map-ehdsrelatedperson.xml:35`, `map-ehdsattachment.xml:43` | Links to `https://hl7.org/fhir/<type>.html`, the current R5 spec, from an R4 IG. | Use `https://hl7.org/fhir/R4/…`. |


### 6.3 `knownIssues.md`

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 6.3-2 | Low | `knownIssues.md` | Missing: the mapping pages are based on Xt-EHR models 0.3.0 (preview), not 1.0.0 (see 6.4-3); `PatientAnimalEu` cannot be the subject, because Base 2.0.1 allows only `patient-eu-core` (FHIR-57547); the open DiagnosticReport supportingInfo question (FHIR-59111); obligations deferred; the two draft value sets (3.4-4). | Add them. |

### 6.4 Content currency

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 6.4-11 | Low | `obligations.md:7` | "In the previous version of this Implementation Guide" means 0.1.1; the previous version is now 2.0.0. | "In version 0.1.1". |
| 6.4-12 | Low | `StructureDefinition-Patient-animal-eu-lab-intro.md:1-13` | The note is correct but calls the package "hl7-base", doesn't say that since FHIR-57547 DiagnosticReport and ServiceRequest no longer name the profile, and repeats the heading "Implementation status". | Reword; drop the duplicate heading. |
| 6.4-13 | Low | `notes.md:9, 23` | l.9 defines reflex tests in a way that contradicts the Observation intro (l.47); l.23 names an "Observation.supportingInfo element", which in R4 is the `workflow-supportingInfo` extension. | Align the definition; name the extension. |
| 6.4-14 | Low | `StructureDefinition-DiagnosticReport-eu-lab-intro.xml:8-9` | The first sentence of the "Previous results" STU note is cut off ("…for conveying the previous."); the question is open as FHIR-59111. | Complete the sentence; reference FHIR-59111. |
| 6.4-15 | Low | `modelmap.xml:120`; `map-ehdsdevice.xml:42-44` | EHDSDevice is mapped to the base Device resource, although the IG defines `DeviceMeasuringLabReportEu` and `DeviceSpecimenLabReportEu`. | Name the profiles. |
| 6.4-16 | Low | `index.md:63-81` (`input/images-source/links-overview.plantuml:34`) | The diagram shows DiagnosticReport → "RelatedPerson: Animal", but no `DiagnosticReportLabEu` element targets RelatedPerson; the profile title is "RelatedPerson: AnimalSpecimen". | Fix the arrow and the label. |

### 6.5 `changes.md`

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 6.5-3 | Low | `changes.md` *Examples* | The comparator example (FHIR-55966, in `Bundle-SimpleChemistryReport`) is not listed under *Examples*. | List it. |
| 6.5-4 | Low | `changes.md:22` (FHIR-57051) | "whose context is `Procedure.bodySite`" is incomplete: the contexts are Condition.bodySite, Observation.bodySite, Procedure.bodySite, MedicationAdministration.dose and Dosage.site. | "whose contexts do not include Specimen". |
| 6.5-5 | Low | `changes.md:10` (FHIR-57208); `:31` (FHIR-57058) | The DiagnosticReport status note also lists `appended`. The FHIR-57058 entry describes a formatting change only, but Note 3 (virology may go to 18727-8) was dropped. | Mention both. |
| 6.5-6 | Low | `changes.md` | The new comparator value sets are not listed under *Terminology*; `hl7.fhir.uv.extensions.r4` (5.2.0 → 5.3.0) and `hl7.terminology.r4` (7.1.0 → 7.4.0) are not listed under *Dependencies*. | Add them. |
| 6.5-7 | Low | `changes.md:20, 51-99` | The 2.1.0 section uses "Technical corrections" as a category, although l.6 says this release is not a technical correction. The 2.0.0 section uses emoji headings and FSH file names, lists `DIagRptStatus-to-CompStatus-map.fsh` as updated and ConceptMaps as removed; l.98 has no closing period. | Rename the category to "Corrections"; optionally tidy the 2.0.0 section. |

---

## 7. QA output and `ignoreWarnings.txt`

This section is based on the IG Publisher 2.3.4 run of 2026-10-04 16:16, built as `2.1.0` / `active` / `trial-use`, and on a run of commit `a452eb5` with an empty `ignoreWarnings.txt`.

**Visible messages:** 0 errors, 1 warning, 0 information messages. The warning is the outdated Jira spec file; it goes once HL7/JIRA-Spec-Artifacts#1592 is merged.

**Publication request check:** no issues reported (version 2.1.0, milestone, trial-use, STU 2).

**Suppressed messages:** 109 warnings and 136 hints. Every entry matches at least once. Compared with commit `cf1c073`, the R5 document bundle entry matches five more DiagnosticReports, which are no longer referenced from their Composition (3.1-1), and the pinned-version entry matches eight more canonicals, from the uncertainty extensions on the quantities of Ratio and Range (3.1-3).

**Suppressions that hide fixable issues or carry a wrong justification:**

| ID | Lines | Entry (uses) | Fix |
|---|---|---|---|
| 7-2 | 6-7, 25-26 | "…no examples for this data type profile" (1) and "…no examples for this profile" (3). The comments name `HumanName-obl-eu-lab` and "an Obligation profile", but the IG has neither. They hide the missing examples for `Range-eu-lab`, `Device-measuring-eu-lab`, `Device-specimen-eu-lab` and `Substance-additive-eu-lab` (5-11). | Add the examples and delete the entries, or correct the comments. |
| 7-3 | 62-67 | Non-matching slices on `Address-eu` (11), `Composition-eu-lab` (9) and `DiagnosticReport-eu-lab` (10). The heading on l.62 has no entries, so all three carry the reason of l.64, "Bundle examples containing additional address extensions", which fits only `Address-eu`. Fixable causes: the censusTract extension (5-14), the `official` attesters (5-15) and the display-only performers (5-16). Expected causes, to be named in the comments: top-level sections against the single `annotations` slice, and `effectiveDateTime` against EU Core's single `effectivePeriod` slice. | Fix the examples, drop the `Address-eu` entry, and give the remaining entries their own justification. |
| 7-4 | 11, 23, 35, 73, 75, 76, 80, 83 | Single-use entries that hide example defects: v3 specimen type and 'Specimen Types' binding (IT-CDA2FHIR), 'Laboratory Code' (Hepatitis panel), 'Laboratory Order' (POC ServiceRequest), "isn't reachable" for the POC ServiceRequest (see 5-7; the entry is justified for the five DiagnosticReports it also covers), `cs-CZ` not in Common Languages (SimpleChemistry, use `cs`), `http://hospital.org/lis-order` (5-19). | Fix the examples (5-7, 5-17, 5-19, 5-20) and delete the entries. |
| 7-5 | 62, 70 | Two headings without entries: their text is replaced by the next heading, so they never show as a reason. | Remove them. |

The other entries are justified: the unknown code system and identifier system entries cover real national and external systems and the deliberately local hepatitis codes, the `it-IT`/`cs-CZ` display hints are expected for non-English documents, the cross-version "multiple matching profiles" entries and the deprecated-`pattern` entry (3.1-11) are tooling or R5-compatibility notes, and the 'Cow'/'Turkey' displays are chosen on purpose.

---

## 8. Repository hygiene

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 8-1 | Medium | `input/images/docker-compose.yaml` | A HAPI/Ember compose file with the local path `/mnt/c/work/ProdViewer/serverhome`. Everything in `input/images` is published; it is live at `hl7.eu/fhir/laboratory/2.0.0/docker-compose.yaml`. | Remove it. |
| 8-2 | Low | `_xtehr-0.3.0/` (59 files), `backup-for-later/` (4 FSH files), `src-models/` (3 files, 2.2 MB) | Not used by the build. `src-models/` holds the eHN lab guideline PDF (a third-party EC document), a macro-enabled `.xlsm` and a `.bat`. | Keep them out of the release branch, e.g. in a git-ignored `_attic`. |
| 8-3 | Low | `Requirements-fromNarrative.json` | Generated by the IG Publisher, tracked and not ignored. | `git rm` it and add it to `.gitignore`. |
| 8-4 | Low | `ig-template/**/.index.db`, `.index.json` (14 tracked) | Generated package-index caches; `.gitignore:37-42` lists 6 of the `.json` files, but they are still tracked, and the `.db` files are not ignored. `hl7eu-old.css` and `iso-eu-ps.css` are not referenced. | `git rm --cached` them, add `ig-template/**/.index.*`, drop the unused CSS. |
| 8-5 | Low | `input/pagecontent/overview.md`, `semantic-notes.md` | Not in `pages` and not published; `overview.md:4` says "NOT PART OF THE BALLOTED GUIDE". | Delete them or move them to `_attic`. |
| 8-6 | Low | `input/images/LabReportModel.png`, `lab-report-model.png`; `input/images-source/actors.plantuml` | Not referenced by any page; the images are published anyway. | Remove them. |
| 8-7 | Low | `.gitignore` | `.gitignore` is listed as a pattern four times (l.25, 29, 32, 34); l.14-24 cover nested `.gitignore` files that don't exist. `.idea/`, `.claude/`, `Requirements-fromNarrative.json` and `.index.db` are missing. | Clean up and add the missing entries. |
| 8-8 | Low | `README.md:2, 7-8, 14` | Says master documents STU 1 and that `2.0.0-xtehr-fixes` is for STU 1 errata, but 2.0.0 is STU 2; the branch build link returns 404; l.2 repeats the title. | Update for STU 2 / 2.1.0. |

---

## 9. Suggested order of work

2. The suppressions in §7 that do not depend on the example issues #146 to #154.
3. `docker-compose.yaml` (8-1).
4. Low items as time allows.
5. Last, just before publication: the final check of `changes.md` (1-1).

---

## Won't fix (accepted)

- **[3.4-1]** `LabPresenceAbsenceEuVs` stays unbound in 2.1.0. FHIR-59528 proposes to restore its additional binding and will be decided after the STU release; `knownIssues.md` documents the gap (commit `788642e`).
- **[5-1] to [5-27]** The example findings are corrections of example data that need time, so they are moved to GitHub issues and addressed after 2.1.0:
  - #146 `SimpleChemistryResultReport`: 5-1, 5-2, 5-3, 5-13 and parts of 5-12 and 5-20
  - #147 `IT-CDA2FHIR`: 5-4 and parts of 5-12 and 5-20
  - #148 reused UUIDs and document identifiers: 5-5, 5-6
  - #149 `BundleLabResultReportPOC`: 5-7, 5-18 and the POC parts of 5-8 and 5-17
  - #150 contradicting dates: 5-8
  - #151 unresolved patient reference in standalone Observations: 5-9
  - #152 status reason examples: 5-10, 5-27
  - #153 missing examples for four profiles: 5-11
  - #154 minor corrections (checklist): 5-14 to 5-17, 5-19, 5-21 to 5-26
- **[6.4-1]** `background.md` (MyHealth@EU wave 8, the timeline figure, the link to the EHDS proposal) is left unchanged for 2.1.0. A Liquid comment in the page records what has to be updated: MyHealth@EU has adopted this guide, and Regulation (EU) 2025/327 is in force (commit `09fcaa0`).
- **[3.1-4]** Missing Bundle entry slices for DocumentReference, RelatedPerson, Substance, BiologicallyDerivedProduct, Group and CareTeam: deferred to 2.2.0, because new slices change what the Bundle profile validates. `knownIssues.md` documents the gap (commit `3a36ac3`); a Jira issue for 2.2.0 is to be filed.

---

## Fixed since the first review

- **[1-2]** `changes.md`: the FHIR-56821 entry no longer claims that `eu-lab-1` and `eu-lab-2` rejected the R5 value extensions before. It states that `eu-lab-2` now requires a result in every component instead of in at least one, that instances valid under 2.0.0 can fail, and it moves to *Profiles and constraints*. Its examples are described as what they are, which also resolves the "every valid way" part of 6.5-3 (commit `f1a3795`).
- **[1-3]** `QuantityEuLab`, `RatioEuLab`, `RangeEuLab` and `SpecimenAdditiveSubstance` insert `SetFmmandStatusRule (2, trial-use)`; `changes.md` lists it under *Technical corrections* (commit `a45bd05`).
- **[1-4]** / **[7-1]** IPS 2.0.1: packages.fhir.org serves a faulty copy of the package (location `file:///web/publishing/work/task-89/draft/output`), packages2.fhir.org and hl7.org the correct one. Built with the correct package, the guide has no `file://` links. The suppression added in `a452eb5` is removed again, so a build with the faulty copy shows the problem in the QA (commit `fd8586f`). The publication build has to use the package from packages2.fhir.org or hl7.org.
- **[1-5]** `logicalmodels.md` links the published Xt-EHR models at `https://www.xt-ehr.eu/fhir/models/`; no CI build of the models exists any more (commit `cf1c073`).
- **[3.1-1]** FHIR-57335: the Composition profile no longer constrains the `diagnosticReport` extension inherited from Composition (EU core); the examples no longer carry it. `DiagnosticReport.extension:DiagnosticReportCompositionR5` stays `1..1`, and its TODO is replaced by a reference to FHIR-57335. `changes.md` lists it under *Technical corrections* (commit `4004344`).
- **[3.1-2]** FHIR-55560: `DiagnosticReport.media.link.extension:link` is `1..1`; `changes.md` lists it under *Profiles and constraints*, because media entries without a DocumentReference now fail (commit `5463fb1`).
- **[3.1-3]** The uncertainty extensions of `RatioEuLab` and `RangeEuLab` are on `numerator`/`denominator` and `low`/`high`, as intended in hl7-eu/laboratory#54; `changes.md` lists it under *Technical corrections* (commit `c8140cf`).
- **[6.2-1]** `design-choice.md` links the DiagnosticReportReference extension in EU Extensions (commit `4004344`).
- **[3.2-1]** FHIR-57053 resolved to compare system, code and version, so `dr-comp-type` is correct. The FSH comment that named a differing version as a false negative is corrected (commit `ca08b07`).
- **[2-1]** / **[2-2]** `desc` in `publication-request.json` names the removed attachment section, the required DocumentReference link in `DiagnosticReport.media`, the result required in every component and the new dependency versions. `descmd` is removed, so the history page shows `desc` (commit `a1c113f`).
- **[3.2-2]** / **[3.2-3]** The comments of `ReportEncounterRule`, `ReportSubjectRule` and `ReportTypeRule` state the rules as `dr-comp-enc`, `dr-comp-subj` (SHOULD) and `dr-comp-type` (system, version and code) check them, and point to the Bundle constraints. The texts of `dr-comp-enc` and `dr-comp-subj` say that they apply only when both resources carry a reference (commit `d8d89da`).
- **[6.5-1]** `changes.md` lists the lowered severity of `dr-comp-enc` and `dr-comp-subj` (FHIR-57052) and the changed comparison and condition of `dr-comp-identifier` (FHIR-57053) (commit `d8d89da`).
- **[3.4-2]** `LaboratoryResultStandardEuVs` carries the LOINC and the NPU copyright (commit `35a4c31`).
- **[6.4-3]** The mapping pages map the Xt-EHR models 1.0.0, and all model links point to 1.0.0. The four elements renamed since 0.3.0 (`header.intendedRecipient[x]`, `component.type`, `udi`, `dosage`) use the new names; types and cardinalities are unchanged. `changes.md` lists the update under *Guidance* (commit `a1dd64f`). The update is tracked in FHIR-59529, like FHIR-58742 for EU Base, and `changes.md` names it (commit `51e20a6`).
- **[6.4-2]** `logicalmodels.md` describes the models as published (1.0.0, end-of-project release) and developed from the eHN guidelines; the second heading is "Supported models". The callout on the ten model pages states the mapped version and that the models may change with the EHDS implementing acts (commit `a1dd64f`).
- **[6.5-2]** The FHIR-57048 entry in `changes.md` says which removed bindings were covered by the basic binding and that `LabPresenceAbsenceEuVs` was not; FHIR-59528 proposes to restore its binding (commits `894e01e`, `89d3f3c`).
- **[6.3-1]** The outdated known issue on the R5 element links (FHIR-43200, FHIR-43199) and the unused `Specimen.feature` aliases are removed (commit `c365231`).
- **[6.4-4]** The legend for the yellow rows no longer mentions a ballot publication and appears on exactly the five mapping pages that have yellow rows (commit `53ebdbe`).
- **[6.4-5]** The related person mapping page no longer says "RelatedPerson (HDR)", and the laboratory report page no longer refers to patient summary mapping pages (commit `53ebdbe`).
- **[6.4-6]** / **[6.4-7]** The specimen mapping uses `collection.bodySite.extension:bodySite` and names the `alternate-reference` extension for the collector (related-to, as an organisation has no direct R4 target). `accreditationStatus` maps to `Observation.extension:accredited`. `changes.md` lists the corrected mappings under *Guidance* (commit `53ebdbe`).
- **[6.4-8]** `scenarios.md` and `status-mgmt.md` name the `statusReason` extension, say that the five statuses SHOULD carry a reason and link the two examples; the FHIR-57208 entry in `changes.md` names `appended` for the report (commit `238743c`).
- **[6.4-9]** / **[6.4-10]** The cross-version page no longer claims an R5 flavour, and the scope on the home page refers to the Xt-EHR EHDS logical information models, which were developed from the eHN guidelines (commit `8324450`).
