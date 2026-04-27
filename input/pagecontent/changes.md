This page summarizes the main changes applied to this version of the guide.


### From 0.1.1 to current version

#### 🔧 Model Alignment and Refactoring

* Aligned model maps with the **Xt-EHR model** (FHIR-53126).
* Added attachments section (FHIR-53138).
* Updated dependencies, including fix to `hl7.fhir.eu.extensions.r4`.
* Updated `bodyStructure` references.
* Updated resource references to align with revised base profile names.
* Updated `DIagRptStatus-to-CompStatus-map.fsh`.

#### 🧹 Scope Reduction and Cleanup

* Removed ConceptMaps and associated diagrams (FHIR-53126).
* Removed logical models based on the eHN guidelines (FHIR-53126).
* Cleaned up obsolete or unused configuration elements.

#### 🧪 Profiles, Bundles, and Examples

* Updated lab-related profiles:

  * `bundle.fsh`
  * `bundle-lab.fsh`
  * `composition-lab.fsh`
  * `diagnosticReport-lab.fsh`
  * `observation-lab.fsh`
* Updated bundle definitions:

  * `Bundle-MicroCultureSuscLabResultDetailed.fsh`
  * `Bundle-IT-CDA2FHIR.fsh`
  * `Bundle-HepatitisPanel.fsh`
* Created and refined `NPU-microbiology-example.fsh`.
* Updated example definitions and references (`Examples.fsh`).
* Updated alias definitions (`alias-systems.fsh`, `alias-lab.fsh`).

#### 🛠 Build and Infrastructure

* Updated `sushi-config.yaml` and aliases.
* Fixed QA errors.
* Added new supporting scripts.
* Updated documentation (`README.md`, `index.md`).

### From 0.1.0 to 0.1.1

* Obligation codes fixed
* Obligation URL fixed
* Invariant pat-cnt-2or3-char error fixed
* Fixed typos
* Fixed ConceptMap.sourceUri and ConceptMap.targetUri errors
* Changed pattern discriminator to value
* Implemented a workaround to fix the issue with polymorphic element for R5 extension
* Bundle profile: changed the cardinality of the Patient slice to ..* (fix)
* Added missing example binding for Patient.animal
* Updated some non-required value sets (Body Structure site laterality; site Qualifier; Specimen Types; Lab Technique )