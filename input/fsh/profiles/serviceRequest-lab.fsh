
//====== RuleSet =====================================

/* RuleSet: OrderCommonRules
* ^publisher = "HL7 Europe"
* ^copyright = "HL7 Europe"
* identifier 1..
* category 1..
* code 1..
* subject 1.. */


Profile: ServiceRequestLabEu
Parent: ServiceRequest
Id: ServiceRequest-eu-lab
Title: "ServiceRequest: Laboratory Order"
Description: """This profile defines how to represent an laboratory orders using the HL7 FHIR ServiceRequest for the purpose of this guide."""
// Clarify when to use ServiceRequest and RequestGroup
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 1, draft )
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."
// add binding for category and code
* identifier 1..
/* * category 1..  */
/* * code 1.. */
* code from LabOrderCodesEuVs (preferred)
* subject 1..
* subject only Reference (PatientEuLab or PatientAnimalEu or Group or Location or Device)
* requisition ^short = "Composite Request ID."
* specimen	only Reference (SpecimenEu)
  * ^short = "Specimens to be used by the laboratory procedure"
  * ^comment = """If the specimen information are known when the order is created then the ServiceRequest.specimen should be used.
If the ServiceRequest can be updated when the specimen is collected then the ServiceRequest.specimen or the Specimen.request could be used.
Otherwise the relationship is recorded in the Specimen.request element"""
  // add invariant ?
* insurance only Reference (Coverage)
* authoredOn ^short = "When the order was placed"
