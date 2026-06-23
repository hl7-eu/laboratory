Profile: CompositionLabReportEu
Parent: CompositionEuCore
Id: Composition-eu-lab
Title: "Composition: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report for the scope of the HL7 Europe project."
* insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

// removed based on resolution of the Jira issue FHIR-51567
//* extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
//* extension[basedOn-order-or-requisition].valueReference only Reference(ServiceRequestLabEu)

* extension[diagnosticReport].valueReference 1..1
* extension[diagnosticReport].valueReference.reference 1..
  * ^comment = """Added to the FHIR R4 guide to allow strictly conformance with the R4 rules for document bundle resources inclusion.
  Using this extension implies to accept a circular reference Composition to/from DiagnosticReport"""

* text ^short = "Narrative text"
* insert ReportIdentifierRule
//* insert ReportStatusRule
* insert ReportCategoryRule // HK: composition category seems to be related to the CDA Document Class.
                            // In case of lab report, only one value is relevant for this purpose, LOINC 26436-6 	Laboratory Studies (set)
                            // We might discuss if other categorization purposes would be useful or not.
/* * category = $loinc#26436-6 "Laboratory Studies (set)" */

* insert ReportTypeRule ( type ) // fixed LOINC code for all types of reports but allow also lab specialty to be present

  // slice the subject tp cover the three cases of human ; non-human and mixed
* insert ReportSubjectRule
* insert ReportEncounterRule
* author
  * insert ReportAuthorRule
  /* * obeys labRpt-author */

* attester // RH - should attester be 1.. or 0..? - since author is also required?
  * ^short = "Attests the report accuracy"
  * mode ^short = "The type of attestation"
  * time ^short = "When the report was attested by the party"
  * party
    * ^short = "Who attested the report"
    * ^comment = "For a Laboratory Report it is usually non expected that the attester would be a Patient or a RealtedPerson"

* event
  * ^short = "The laboratory service(s) being documented"
  * code ^short =	"Code(s) that apply to the laboratory service(s) being documented"
  * period ^short = "Period of time covered by the documentation"
  * detail ^short = "The laboratory service(s) being documented"

* title 1..
  * ^short = "Laboratory Report"
  * ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Laboratory Report\" or any equivalent translation"

* section 1..
  * title 1..
  * code 1..
  * entry
    * ^slicing.discriminator[+].type = #type
    * ^slicing.discriminator[=].path = "$this.resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * entry contains result 0..*
  * entry[result] only Reference(ObservationResultsLaboratoryEu)
    * ^short = "Laboratory result"
    * ^definition = "A laboratory result observation, either a simple test or a panel/study with multiple sub-observations."
  * section 0..* 
    * ^short = "Sub-section of the laboratory report"

