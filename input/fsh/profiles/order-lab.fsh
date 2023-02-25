
//====== RuleSet =====================================

/* RuleSet: OrderCommonRules
* ^publisher = "HL7 Europe Project"
* ^copyright = "HL7 Europe Project"
* identifier 1..
* category 1.. 
* code 1..
* subject 1.. */


Profile: ServiceRequestLabXpandh
Parent: ServiceRequest
Id: ServiceRequest-lab-xpandh
Title: "ServiceRequest: Laboratory Order"
Description: "ServiceRequest used to represent a Laboratory Order for the scope of the HL7 Europe project."
// Clarify when to use ServiceRequest and RequestGroup
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."
// add binding for category and code
* identifier 1..
/* * category 1..  */
* code 1..
* code from LabOrderCodesXeH (preferred)
* subject 1..
* subject only Reference (PatientXpandh or Patient or Group or Location or Device)
* requisition ^short = "Composite Request ID." 
* specimen	only Reference (SpecimenXpandh)
  * ^short = "Must be present, if order is request for test" // Check....
  // add invariant ?
* insurance only Reference (Coverage)
