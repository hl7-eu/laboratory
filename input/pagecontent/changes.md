This page summarizes the main changes applied to this version of the guide.


### From 2.0.0 to 2.1.0

Version 2.1.0 is an STU update of the 2.0.0 release. Alongside the corrections listed below it adds capability the published version does not offer, which is why it is an update rather than a technical correction.

* Profiles and constraints
  * FHIR-57444: Removed the `Composition.section:attachment` slice, following the resolution of FHIR-53138. Additional data such as images or diagrams is conveyed through `DiagnosticReport.media`, whose definition and short description were clarified.
  * FHIR-57208: Added an optional `statusReason` extension to `ObservationResultsLaboratoryEu` and `DiagnosticReportLabEu`, together with a note on `status` that the statuses amended, corrected, cancelled and entered-in-error, and for the report also appended, should be accompanied by the reason for that status.
  * FHIR-55966: Added the optional `lowComparator` and `highComparator` modifier extensions on `Observation.referenceRange`, pre-adopting the R6 solution for exclusive or explicitly inclusive bounds.
  * FHIR-57055: Added `Substance` and `BiologicallyDerivedProduct` to the reference targets of `Observation.focus`, now that the EU core profile allows them.
  * FHIR-57050: Added `Patient` and `BiologicallyDerivedProduct` to the reference targets of the `SpecimenFocus` extension. The Specimen profile no longer narrows those targets a second time.
  * FHIR-57901: Allowed a patient or a related person as the specimen collector, through the `alternate-reference` extension on `Specimen.collection.collector`.
  * FHIR-57547: Removed the enumerated subject target types. `DiagnosticReportLabEu` and `ServiceRequestLabEu` now name exactly what the base resource allows, with the patient pinned to `patient-eu-core`. The animal patient profile is no longer named as a possible subject; the profile itself stays.
  * FHIR-57895: Removed the `1..` constraint on `Specimen.type`.
  * FHIR-57043: Removed the definition of the Laboratory Accredited extension. It is defined in the HL7 Europe Extensions IG from now on, under the unchanged canonical `http://hl7.eu/fhir/StructureDefinition/laboratory-accredited`. The profiles keep referencing it, so nothing changes for implementers.
  * FHIR-56821: Changed `eu-lab-2` to require a result in every component. It used to require a `value[x]`, the R5 `component.value[x]` cross-version extension or a `dataAbsentReason` in at least one component; now each `Observation.component` has to carry one of them, unless the Observation is `registered` or `cancelled`. Instances in which only some components carry a result were valid under 2.0.0 and fail now. The texts of `eu-lab-1` and `eu-lab-2` now name the R5 value extensions, which both invariants already accepted, and examples were added for results conveyed through those extensions and for a component without a result. Removed the pinned version from the extension canonicals in the aliases.
  * FHIR-55560: Set `DiagnosticReport.media.link.extension:link` to `1..1`. The profile already required the fixed `display` text stating that a DocumentReference is linked through this extension, but not the extension itself. Instances that carry a `media` entry without a DocumentReference were valid under 2.0.0 and fail now.

* Technical corrections
  * Set maturity level 2 and standards status `trial-use` on `QuantityEuLab`, `RatioEuLab`, `RangeEuLab` and `SpecimenAdditiveSubstance`, which carried neither, like every other profile of this guide.
  * FHIR-57051: Replaced the extension used on `Specimen.collection.bodySite`. The profile used `http://hl7.org/fhir/StructureDefinition/bodySite`, whose context is `Procedure.bodySite` and which was therefore never allowed here. It is replaced by the cross-version extension `extension-Specimen.collection.bodySite`, which declares the matching context and, carrying the reference half of what became a `CodeableReference` in R5, is nested under the `bodySite` element rather than under `collection`. Instances that use the old extension have to be migrated.
  * FHIR-58773: Set `Specimen.container.extension:device` to `1..1`. The R5 cross-version extension defines its own root as `1..1` while the profile constrained the slice to `0..1` — a mismatch no tooling reports, because the cardinality of a `contains` rule is only checked against the base element. `Specimen.container` itself stays `0..*`, so the constraint applies only where a container is present.
  * FHIR-57047: Removed the closed slicing on `Observation.value[x]` and `Observation.component.value[x]`, so that no data type of `value[x]` is excluded any more. As the IG Publisher treats slicing by type as closed in any case, the profile adds slices without further constraints for `valueBoolean`, `valueInteger` and `valueSampledData`, the three types that had no slice. The constraints on the other slices are unchanged.
  * FHIR-57048: Removed the additional bindings on `Observation.value[x]:valueCodeableConcept` and `Observation.component.value[x]:valueCodeableConcept`. The blood group and microorganism bindings pointed to subsets of the value set bound to the element. The presence/absence binding pointed to `LabPresenceAbsenceEuVs`, which is not contained in it: 13 of its 38 codes, such as Normal, Reactive and Equivocal, are not in the bound value set. The guide therefore no longer recommends these codes; FHIR-59528 proposes to restore that binding.
  * FHIR-57057: Changed `eu-lab-1` and `eu-lab-2` to test `hasValue()` instead of `exists()`, so that an element carrying an extension but no value no longer satisfies the invariant.
  * FHIR-57052: Restricted `dr-comp-enc` and `dr-comp-subj` to comparing `Reference.reference`, and only where both references are present. Comparing the whole `Reference` reported a difference in display text or identifier as an error. Both invariants are now warnings: DiagnosticReport and Composition SHOULD, rather than SHALL, have the same encounter and subject.
  * FHIR-57335: Removed the constraints on `Composition.extension:diagnosticReport`, which required a reference from the Composition to the DiagnosticReport. The guide pre-adopts the R5 rules for document bundles, under which the DiagnosticReport is part of the document through its own reference to the Composition. The extension stays available as inherited from `Composition (EU core)`, so instances that carry it remain valid. The examples no longer carry it.
  * Moved the `iso21090-uncertainty` and `iso21090-uncertaintyType` extensions in `RatioEuLab` and `RangeEuLab` from the data type root to `numerator` and `denominator` and to `low` and `high`. Both extensions are defined for Quantity only, so they could not be used where the profiles placed them ([#54](https://github.com/hl7-eu/laboratory/issues/54)).
  * FHIR-57053: Changed `dr-comp-type` to compare system, version and code rather than the whole coding. Changed `dr-comp-identifier` to compare system and value rather than the whole identifier. It now applies only when the DiagnosticReport has an identifier; before, it also failed when only the Composition had one. Removed `dr-comp-category` together with its `obeys` rule: the two categories need not be the same, one classifies the document and the other the medical discipline of the report.

* Terminology
  * Added the NPU copyright to `LaboratoryResultStandardEuVs`, which includes NPU codes but carried only the LOINC copyright.
  * FHIR-57058: Reworked the description of `LabStudyTypesEuVs`. Markdown collapses single line breaks, so the notes were rendered as a single paragraph, and their labels had no space after the colon.

* Guidance
  * FHIR-56397: Added guidance on the resource types most commonly expected in `ServiceRequest.supportingInfo`, while keeping its target types open.
  * FHIR-57046: Kept the guidance that `Composition.identifier` has to equal one of the `DiagnosticReport.identifier` and pointed it at the invariant that enforces it, `dr-comp-identifier` in the constraints section of the Bundle profile.
  * FHIR-59529: Mapped the Xt-EHR EHDS logical models 1.0.0 instead of 0.3.0. Four model elements were renamed in 1.0.0: `intendedRecipient[x]` of the laboratory report became `header.intendedRecipient[x]`, `component.code` of the laboratory observation became `component.type`, `udiCarrier` of the device became `udi` and `dosageInstructions` of the medication administration became `dosage`. Apart from the new names, this does not change the mappings. The logical models page and the mapping pages no longer describe the models as under development.
  * Corrected three mappings of the logical models: `collection.bodySite` and `collection.performer[x]` of the specimen now map to the extensions introduced for FHIR-57051 and FHIR-57901, and `accreditationStatus` of the laboratory observation maps to the Laboratory Accredited extension on the Observation.
  * FHIR-57208: The scenarios and the status management page now say that the statuses amended, corrected, appended, cancelled and entered-in-error SHOULD carry their reason in the statusReason extension, and link the status reason examples.

* Examples
  * FHIR-58773: Added `Specimen-container-device-example`, a blood specimen collected into an evacuated tube whose container is described by a contained `Device` referenced through the extension.
  * FHIR-57051 / FHIR-57901: Added `Specimen-collection-example`, a capillary blood specimen the patient collected themselves, with the collection body site conveyed through the R5 cross-version extension and the collector through the `alternate-reference` extension.
  * FHIR-57050: Added `Specimen-focus-bdp-example`, a sample drawn from a red blood cell unit, where the entity the specimen was collected from is a `BiologicallyDerivedProduct` and the subject of record is the patient.
  * FHIR-57055: Added `obs-focus-substance-example` and `obs-focus-bdp-example`, results about a substance and about a blood unit rather than about the patient directly.
  * FHIR-57208: Added `obs-status-reason-example`, a cancelled result carrying the reason for that status.
  * FHIR-57208 / FHIR-57444: Added `dr-status-reason-media-example`, a corrected report carrying the reason for that status and the additional data in `DiagnosticReport.media`, together with the result it is issued for.

* Dependencies
  * Updated `hl7.fhir.eu.base` from 2.0.0 to 2.0.1 and `hl7.fhir.eu.extensions.r4` from 1.3.0 to 1.3.1. Base 2.0.1 provides the `Observation.focus` targets added for FHIR-57055, and Extensions 1.3.1 defines the Laboratory Accredited extension moved for FHIR-57043.
  * Restored the dependency on `hl7.fhir.uv.ips` 2.0.1. Version 2.0.0 was published without it, neither directly nor through another dependency, although its result profile binds to an IPS value set and `LabOrderCodesEuVs` is built on another, so a validator working from the 2.0.0 package could not resolve them.

### From 0.1.1 to 2.0.0

#### 🔧 Model Alignment and Refactoring

* Aligned model maps with the **Xt-EHR model** (FHIR-53126).
* Added attachments section (FHIR-53138).
* Updated dependencies, including fix to `hl7.fhir.eu.extensions.r4` (FHIR-53210).
* Updated `bodyStructure` references (FHIR-44969).
* Updated resource references to align with revised base profile names (FHIR-44969).
* Updated `DIagRptStatus-to-CompStatus-map.fsh` (FHIR-53126).
* Added terminology expansion parameter support and documentation updates (`sct-expansion-params.fsh`, index updates).

#### 🧹 Scope Reduction and Cleanup

* Removed ConceptMaps and associated diagrams (FHIR-53126).
* Removed logical models based on the eHN guidelines (FHIR-53126).
* Cleaned up obsolete or unused configuration elements (FHIR-53210, FHIR-53224).

#### 🧪 Profiles, Bundles, and Examples

* Updated lab-related profiles:

  * `bundle.fsh`
  * `bundle-lab.fsh`
  * `composition-lab.fsh`
  * `diagnosticReport-lab.fsh`
  * `observation-lab.fsh`
  (FHIR-44969, FHIR-53224, FHIR-53529, FHIR-53584, FHIR-55624, FHIR-56181)
* Updated animal/device related profile handling (FHIR-50157, FHIR-53530, FHIR-56314).
* Added dedicated device profiles and related value sets for laboratory reporting (FHIR-53530).
* Added and aligned laboratory accreditation extension usage across Observation/ServiceRequest and examples (FHIR-53127, FHIR-53224).
* Added cross-version support for `DiagnosticReport.media.link` mapping.
* Added missing-data guidance and alignment of animal examples to `RelatedPerson`-based representation (FHIR-56314, FHIR-55624).
* Updated bundle definitions:

  * `Bundle-MicroCultureSuscLabResultDetailed.fsh`
  * `Bundle-IT-CDA2FHIR.fsh`
  * `Bundle-HepatitisPanel.fsh`
  (FHIR-53224, FHIR-55624, FHIR-56181)
* Created and refined `NPU-microbiology-example.fsh` (maintainance update, no dedicated FHIR tracker).
* Updated example definitions and references (`Examples.fsh`) (FHIR-55624, FHIR-56314).
* Updated alias definitions (`alias-systems.fsh`, `alias-lab.fsh`) (FHIR-46043, FHIR-53210, FHIR-53224, FHIR-53529).
* Added guidance on result ordering/grouping and section modeling variants in lab report narrative.
* Added guidance on MTR/LTR, panels, and reflex tests.

#### 🛠 Build and Infrastructure

* Updated `sushi-config.yaml` and aliases (FHIR-53210, FHIR-53224).
* Fixed QA errors (FHIR-53224).
* Added new supporting scripts
* Updated documentation (`README.md`, `index.md`) (FHIR-53126).

### From 0.1.0 to 0.1.1

* Obligation codes fixed.
* Obligation URL fixed.
* Invariant `pat-cnt-2or3-char` error fixed.
* Fixed typos.
* Fixed `ConceptMap.sourceUri` and `ConceptMap.targetUri` errors.
* Changed pattern discriminator to value.
* Implemented a workaround to fix the issue with polymorphic element for R5 extension.
* Bundle profile: changed the cardinality of the Patient slice to `..*` (fix).
* Added missing example binding for `Patient.animal`.
* Updated some non-required value sets (Body Structure site laterality; site Qualifier; Specimen Types; Lab Technique) (FHIR-46043).
