Profile: BundleLabReportEu
Parent: Bundle
Id: Bundle-eu-lab
Title: "Bundle: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report for the scope of the HL7 Europe project."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
* . ^short = "Laboratory Report bundle"
* . ^definition = "Laboratory Report bundle."
* identifier ^short = "Business identifier for this Laboratory Report"
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* signature ^short = "Digital Signature of this report"

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CompositionLabReportEu

* entry contains diagnosticReport 1..1
* entry[diagnosticReport].resource only DiagnosticReportLabEu

* entry contains patient 0..1
* entry[patient].resource only PatientEu

* entry contains observation 0..*
* entry[observation].resource only Observation // Add profiles

* entry contains specimen 0..*
* entry[specimen].resource only Specimen // Add profiles

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only ServiceRequestLabEu // Add profiles
