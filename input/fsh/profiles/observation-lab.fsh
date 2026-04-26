Profile: ObservationResultsLaboratoryEu
Parent: MedicalTestResultEuCore
Id: Observation-resultslab-eu-lab
Title:    "Observation Results: laboratory"
Description: """This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies for the  HL7 Europe project.
This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study, in the comment element; and references the atomic results of the study as "has-member" child observations.
"""
* insert SetFmmandStatusRule (2, trial-use)
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent a laboratory in vitro diagnostic test or panel/study. In case of a panel/study, the results of the panel appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the panel or study.  The top-level observation may carry a conclusion in the value element and or a global interpretation by the producer of the study, in the comment element."
* obeys eu-lab-1
* obeys eu-lab-2
* . ^short = "Laboratory result for a simple test or for a panel/study"
* . ^definition = "This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and references the atomic results of the study as \"has-member\" child observations"
* . ^comment = "Represents either a lab simple observation or the group of observations produced by a laboratory study."

* extension contains
  $workflow-supportingInfo named supportingInfo 0..* and
  DeviceLabTestKit named labTestKit 0..* and
  ObservationCertifiedRefMaterialCodeable named certifiedRefMaterialCodeable 0..* and
  ObservationCertifiedRefMaterialIdentifer named certifiedRefMaterialIdentifer 0..* and
  $laboratory-accredited named accredited 0..1 

* extension[labTestKit]
  * ^short = "Laboratory Test Kit"
  * ^definition = "The laboratory test kit used for this test."
* extension[accredited]
  * ^short = "Accredited test"
  * ^definition = "Indicates that this laboratory test was/is accredited."

* status ^short = "Status of this observation (e.g. preliminary, final,...)"

* category 1..*
* category 
  * insert SliceElement (#pattern, $this)
  * ^definition = "A code that classifies the general type of observation being made."
  * ^comment = "\"laboratory\" includes laboratory medicine and pathology"

* category contains
  laboratory 1..1 and
  studyType 0..* and
  specialty 0..*
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[studyType] from LabStudyTypesEuVs
* category[studyType] ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
* category[specialty] from LabSpecialtyEuVs
* category[specialty] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
 
* code from LaboratoryResultStandardEuVs (preferred)  // new binding to EU test codes VS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".  In this profile this code represents either a simple laboratory test or a laboratory study with multiple child observations"
* code ^comment = "In the context of this Observation-laboratory profile, when the observation plays the role of a grouper of member sub-observations, the code represent the group (for instance a panel code). In case no code is available, at least a text shall be provided."

* focus only Reference(AnimalSpecimenEuLab)  // If the observation belongs to a human patient but specimen is collected from an animal, then the focus of the observation is the animal specimen.

* performer 1..
* dataAbsentReason ^short = "Provides a reason why the expected value is missing."
* insert ObservationResultsValueEu
* method ^definition = "Laboratory technigue that has been used"
* method ^comment = "Laboratory technique (method of measurement) are integral parts of the test specification of some laboratory test coding systems (e.g. NPU), in LOINC hovewer measurement principle is not always present in the test definition. In some cases however knowledge of the used measurment techique is important for proper interpretation of the test result.
That's why it is important to explicitly include informaiton about measurement method is such cases."
* method from LabTechniqueEuVs (preferred) // added binding to an agreed eu lab measurement method value set
* specimen only Reference(SpecimenEu)
  * ^comment = "When the specimen is applicable and known it shall be documented"
// * hasMember only Reference(ObservationResultsLaboratoryEu or ObservationResultsEu)
* device ^short = "Measuring instrument"
* hasMember only Reference(ObservationResultsLaboratoryEu)
* hasMember ^definition = "A reference to another Observation profiled by Observation-results-laboratory-uv-ips. The target observation (for instance an individual test member of a panel) is considered as a sub-observation of the current one, which plays the role of a grouper."
* hasMember ^comment = "This element is used in the context of international patient summary when there is a need to group a collection of observations, because they belong to the same panel, or because they share a common interpretation comment, or a common media attachment (illustrative image or graph). In these cases, the current observation is the grouper, and its set of sub-observations are related observations using the type \"has-member\".  For a discussion on the ways Observations can be assembled in groups together see [Observation Grouping](http://hl7.org/fhir/observation.html#obsgrouping)."
* issued ^short = "Date/Time this result was made available"

* component ^short = "Laboratory result"
  * code from LaboratoryResultStandardEuVs (preferred)
  * insert ObservationResultsValueEu

Invariant: eu-lab-1
Description: "If observation status is other then \"registered\" or \"cancelled\", at least one of these Observation elements shall be provided:  \"value\", \"dataAbsentReason\", \"hasMember\" or \"component\""
Severity: #error
Expression: "(status in ('registered'|'cancelled')) or value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"

Invariant: eu-lab-2
Description: "If observation has components and observation status is other then \"registered\" or \"cancelled\", at least one of these Observation.component elements shall be provided:  \"value\" or \"dataAbsentReason\""
Severity: #error
Expression: "component.exists() implies (status in ('registered'|'cancelled')) or component.value.exists() or component.dataAbsentReason.exists()"
