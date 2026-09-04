Profile: ServiceRequestLabEu
Parent: ServiceRequest
Id: ServiceRequest-eu-lab
Title: "ServiceRequest: Laboratory Order"
Description: """This profile defines how to represent an laboratory orders using the HL7 FHIR ServiceRequest for the purpose of this guide."""

* insert SetFmmandStatusRule ( 2, trial-use)

* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."
* extension contains $laboratory-accredited named accreditedLab 0..1
* extension[accreditedLab]
  * ^short = "Accredited laboratory requested"
  * ^definition = "Indicates that the request shall be fulfilled by an accredited laboratory."
* identifier 1..
* code from LabOrderCodesEuVs (preferred)
* subject 1..
// Based on the resolution of the Jira issue FHIR-57547 the target types are no longer narrowed:
// the list below is the one of the base resource, with the Patient pinned to the EU core profile.
// The requested open slicing is not possible, as FHIR only allows slicing on repeating or choice
// elements and subject is 1..1.
* subject only Reference(PatientEuCore or Group or Location or Device)
  * ^short = "The patient the laboratory order is for"
* requisition ^short = "Composite Request ID."
* specimen	only Reference (SpecimenEu)
  * ^short = "Specimens to be used by the laboratory procedure"
  * ^comment = """If the specimen information are known when the order is created then the ServiceRequest.specimen should be used.
If the ServiceRequest can be updated when the specimen is collected then the ServiceRequest.specimen or the Specimen.request could be used.
Otherwise the relationship is recorded in the Specimen.request element"""
  // add invariant ?
* insurance only Reference (Coverage)
* supportingInfo ^short = "Additional information: e.g AOEs and prior results. Most common resource types expected are: Observation, Condition, QuestionnaireResponse, MedicationStatement, MedicationRequest."
* authoredOn ^short = "When the order was placed"
