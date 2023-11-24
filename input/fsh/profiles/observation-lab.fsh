Profile: ObservationResultsLaboratoryEu
// Parent: ObservationResultsEu
Parent: Observation
Id: Observation-resultslab-eu-lab
Title:    "Observation Results: laboratory"
Description: """This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies for the  HL7 Europe project.
This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study, in the comment element; and references the atomic results of the study as "has-member" child observations.
"""
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 1, draft )
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent a laboratory in vitro diagnostic test or panel/study. In case of a panel/study, the results of the panel appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the panel or study.  The top-level observation may carry a conclusion in the value element and or a global interpretation by the producer of the study, in the comment element."
* insert ObservationResultsEu
* obeys eu-lab-1
* obeys eu-lab-2
* . ^short = "Laboratory result for a simple test or for a panel/study"
* . ^definition = "This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and references the atomic results of the study as \"has-member\" child observations"
* . ^comment = "Represents either a lab simple observation or the group of observations produced by a laboratory study."
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
* category contains laboratory 1..1
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from LabStudyTypesEuVs
* category[studyType] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from LabSpecialtyEuVs
* category[specialty] ^short = "The way of grouping of the test results into clinically meaningful groups (e.g. liver test; minerals; glucose profiles)"

* code
//* code from $results-laboratory-observations-uv-ips (preferred)
* code from LaboratoryResultStandardEuVs (preferred)  // new binding to EU test codes VS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".  In this profile this code represents either a simple laboratory test or a laboratory study with multiple child observations"
* code ^comment = "In the context of this Observation-laboratory-uv-ips profile, when the observation plays the role of a grouper of member sub-observations, the code represent the group (for instance a panel code). In case no code is available, at least a text shall be provided."
* performer 1..
* performer only Reference(PractitionerRoleEu or PractitionerEu or $Organization-uv-ips or CareTeam or PatientEuLab or RelatedPerson)


* performer.extension contains $event-performerFunction named performerFunction 0..*
* performer.extension[performerFunction]
// * performer.extension[performerFunction] ^meaningWhenMissing = """The Performer Function is Participant"""

* dataAbsentReason ^short = "Provides a reason why the expected value is missing."
* insert ObservationResultsValueEu
/*
* value[x]
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* valueString only string
// * valueString MS
* valueString ^sliceName = "valueString"
//* valueRange only $Range-uv-ips
* valueRange only Range-eu-lab
* valueRange ^sliceName = "valueRange"
//* valueRatio only $Ratio-uv-ips
* valueRatio only Ratio-eu-lab
* valueRatio ^sliceName = "valueRatio"
* valueTime only time
* valueTime ^sliceName = "valueTime"
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"
* valuePeriod only Period
* valuePeriod ^sliceName = "valuePeriod"
// * valueQuantity only $Quantity-uv-ips
* valueQuantity only Quantity-eu-lab
// * valueQuantity MS
* valueQuantity ^sliceName = "valueQuantity"
* valueCodeableConcept only $CodeableConcept-uv-ips
// * valueCodeableConcept MS
* valueCodeableConcept from $results-coded-values-laboratory-uv-ips (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a blood group findings value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a presence and absence findings (qualifier values) value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a microorganisms value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
*/
* interpretation only $CodeableConcept-uv-ips
* method ^definition = "Laboratory technigue that has been used"
* method ^comment = "Laboratory technique (method of measurement) are integral parts of the test specification of some laboratory test coding systems (e.g. NPU), in LOINC hovewer measurement principle is not always present in the test definition. In some cases however knowledge of the used measurment techique is important for proper interpretation of the test result.
That's why it is important to explicitly include informaiton about measurement method is such cases."
* method only $CodeableConcept-uv-ips
* method from LabTechniqueEuVs (preferred) // added binding to an agreed eu lab measurement method value set
* specimen only Reference(SpecimenEu)
// * hasMember only Reference(ObservationResultsLaboratoryEu or ObservationResultsEu)
* hasMember only Reference(ObservationResultsLaboratoryEu)
* hasMember ^definition = "A reference to another Observation profiled by Observation-results-laboratory-uv-ips. The target observation (for instance an individual test member of a panel) is considered as a sub-observation of the current one, which plays the role of a grouper."
* hasMember ^comment = "This element is used in the context of international patient summary when there is a need to group a collection of observations, because they belong to the same panel, or because they share a common interpretation comment, or a common media attachment (illustrative image or graph). In these cases, the current observation is the grouper, and its set of sub-observations are related observations using the type \"has-member\".  For a discussion on the ways Observations can be assembled in groups together see [Observation Grouping](http://hl7.org/fhir/observation.html#obsgrouping)."

//* component obeys eu-lab-2
* component
  * code only $CodeableConcept-uv-ips
  * code from $results-laboratory-observations-uv-ips (preferred)
  * insert ObservationResultsValueEu

Invariant: eu-lab-1
Description: "If observation status is other then \"registered\" or \"cancelled\", at least one of these Observation elements shall be provided:  \"value\", \"dataAbsentReason\", \"hasMember\" or \"component\""
Severity: #error
Expression: "(status in ('registered'|'cancelled')) or value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"

Invariant: eu-lab-2
Description: "If observation has components and observation status is other then \"registered\" or \"cancelled\", at least one of these Observation.component elements shall be provided:  \"value\" or \"dataAbsentReason\""
Severity: #error
Expression: "component.exists() implies (status in ('registered'|'cancelled')) or component.value.exists() or component.dataAbsentReason.exists()"
