This page summarizes the main changes applied to this version of the guide.


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
