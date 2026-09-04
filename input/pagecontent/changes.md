This page summarizes the main changes applied to this version of the guide.


### From 2.0.0 to 2.0.1

* Profiles and constraints
  * FHIR-57444: Removed the `Composition.section:attachment` slice, following the resolution of FHIR-53138. Additional data such as images or diagrams is conveyed through `DiagnosticReport.media`, whose definition and short description were clarified.
  * FHIR-57208: Added an optional `statusReason` extension to `ObservationResultsLaboratoryEu` and `DiagnosticReportLabEu`, together with a note on `status` that the statuses amended, corrected, cancelled and entered-in-error should be accompanied by the reason for that status.
  * FHIR-55966: Added the optional `lowComparator` and `highComparator` modifier extensions on `Observation.referenceRange`, pre-adopting the R6 solution for exclusive or explicitly inclusive bounds.
  * FHIR-57055: Added `Substance` and `BiologicallyDerivedProduct` to the reference targets of `Observation.focus`, now that the EU core profile allows them.
  * FHIR-57050: Added `Patient` and `BiologicallyDerivedProduct` to the reference targets of the `SpecimenFocus` extension. The Specimen profile no longer narrows those targets a second time.
  * FHIR-57901: Allowed a patient or a related person as the specimen collector, through the `alternate-reference` extension on `Specimen.collection.collector`.
  * FHIR-57547: Removed the enumerated subject target types. `DiagnosticReportLabEu` and `ServiceRequestLabEu` now name exactly what the base resource allows, with the patient pinned to `patient-eu-core`. The animal patient profile is no longer named as a possible subject; the profile itself stays.
  * FHIR-57895: Removed the `1..` constraint on `Specimen.type`.
  * FHIR-57043: Removed the definition of the Laboratory Accredited extension. It is defined in the HL7 Europe Extensions IG from now on, under the unchanged canonical `http://hl7.eu/fhir/StructureDefinition/laboratory-accredited`. The profiles keep referencing it, so nothing changes for implementers.

* Technical corrections
  * FHIR-57051: Replaced the extension used on `Specimen.collection.bodySite`. The profile used `http://hl7.org/fhir/StructureDefinition/bodySite`, whose context is `Procedure.bodySite` and which was therefore never allowed here. It is replaced by the cross-version extension `extension-Specimen.collection.bodySite`, which declares the matching context and, carrying the reference half of what became a `CodeableReference` in R5, is nested under the `bodySite` element rather than under `collection`. Instances that use the old extension have to be migrated.
  * FHIR-58773: Set `Specimen.container.extension:device` to `1..1`. The R5 cross-version extension defines its own root as `1..1` while the profile constrained the slice to `0..1` — a mismatch no tooling reports, because the cardinality of a `contains` rule is only checked against the base element. `Specimen.container` itself stays `0..*`, so the constraint applies only where a container is present.
  * FHIR-57047: Removed the closed slicing on `Observation.value[x]` and `Observation.component.value[x]`. The parent profile `medicalTestResult-eu-core` already defines the same discriminator with an open slicing, so data types beyond the listed slices are no longer prohibited. The listed slices and their constraints are unchanged.
  * FHIR-57048: Removed the additional bindings on `Observation.value[x]:valueCodeableConcept` and `Observation.component.value[x]:valueCodeableConcept`. The value set bound to the element already composes the IPS blood group, presence/absence, microorganism and pathology value sets, so the additional bindings covered ground the basic binding covers.
  * FHIR-56821: Updated the `eu-lab-1` and `eu-lab-2` invariants to recognise the R5 `value[x]` and `component.value[x]` cross-version extensions, which they rejected before, and added examples covering every valid way a laboratory result value may be expressed. Removed the pinned version from the extension canonicals in the aliases.
  * FHIR-57057: Changed `eu-lab-1` and `eu-lab-2` to test `hasValue()` instead of `exists()`, so that an element carrying an extension but no value no longer satisfies the invariant.
  * FHIR-57052: Restricted `dr-comp-enc` and `dr-comp-subj` to comparing `Reference.reference`, and only where both references are present. Comparing the whole `Reference` reported a difference in display text or identifier as an error.
  * FHIR-57053: Changed `dr-comp-type` to compare system, version and code rather than the whole coding, and removed `dr-comp-category` together with its `obeys` rule: the two categories need not be the same, one classifies the document and the other the medical discipline of the report.

* Terminology
  * FHIR-57058: Reworked the description of `LabStudyTypesEuVs`. Markdown collapses single line breaks, so the notes were rendered as a single paragraph, and their labels had no space after the colon.

* Guidance
  * FHIR-56397: Added guidance on the resource types most commonly expected in `ServiceRequest.supportingInfo`, while keeping its target types open.
  * FHIR-57046: Kept the guidance that `Composition.identifier` has to equal one of the `DiagnosticReport.identifier` and pointed it at the invariant that enforces it, `dr-comp-identifier` in the constraints section of the Bundle profile.

* Examples
  * FHIR-58773: Added `Specimen-container-device-example`, a blood specimen collected into an evacuated tube whose container is described by a contained `Device` referenced through the extension.

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
