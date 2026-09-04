Profile: DiagnosticReportLabEu
Parent: DiagnosticReportEuCore
Id: DiagnosticReport-eu-lab
Title: "DiagnosticReport: Laboratory Report"
Description: "DiagnosticReport used to represent an entry of a Laboratory Report, including its context, for the scope of the HL7 Europe project."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"

// TODO: PW: should be change to 0..1
* extension[DiagnosticReportCompositionR5] 1..1
  * ^short = "Associated Lab Report Composition"
  * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnosticReport with the Composition documenting this Laboratory Report."
  *  valueReference only Reference(CompositionLabReportEu)

// The core extension is used instead of a new one, based on the resolution of the Jira issue FHIR-57208
* extension contains $event-statusReason named statusReason 0..1
* extension[statusReason]
  * ^short = "Reason for the current status"
  * ^definition = "Captures the reason for the current state of this report, which is of interest whenever the report was withdrawn or revised."

* status ^comment = "The statuses amended, corrected, appended, cancelled and entered-in-error SHOULD be accompanied by the reason for that status, conveyed in the statusReason extension."

/*
content to be referred...
Specimen Collection 1.3.6.1.4.1.19376.1.3.1.2
Specimen Received 1.3.6.1.4.1.19376.1.3.1.3
Specimen Site 1.3.6.1.4.1.19376.1.3.1.8
Notification Organizer
Notifiable Condition
Case Identifier
Outbreak Identifier
Laboratory Isolate Organizer
Laboratory Battery Organizer
Laboratory Observation
Mutimedia Embedded Content
Annotation Comment
*/

* basedOn only Reference ( ServiceRequestLabEu )

//* insert ReportStatusRule

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Commented based on the suggestion form the 2023-05-26 meeting see https://github.com/hl7-eu/laboratory/issues/11
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* basedOn.extension contains DiagnosticReportBasedOnRequisition named basedOn-requisition 0..* */

// The guidance of the ReportIdentifierRule is repeated here instead of inserting the rule set,
// which would replace the comment specific to the DiagnosticReport. Keep both in sync.
* identifier
  * ^comment = """Usually assigned by the Information System of the diagnostic service provider for facilitating the Report search. The order id can be used as one of the Report identifier if only one report is produced for that order.

Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists.

This guidance is enforced by the invariant dr-comp-identifier, listed in the constraints section of the [Bundle: Laboratory Report](StructureDefinition-Bundle-eu-lab.html#constraints) profile."""

* insert ReportCategoryRule
// add binding
/* * code 1..
* code from LabReportTypesEuVs (preferred) // value set to be revised add alternative value sets
* code ^binding.extension.extension[0].url = "purpose"
* code ^binding.extension.extension[=].valueCode = #candidate
* code ^binding.extension.extension[+].url = "valueSet"
* code ^binding.extension.extension[=].valueCanonical = LabStudyTypesEuVs
* code ^binding.extension.extension[+].url = "documentation"
* code ^binding.extension.extension[=].valueMarkdown = """Laboratory Specialties."""
* code ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Laboratory Specialties." */

* insert ReportTypeRule ( code )
* insert ReportSubjectRule
// Based on the resolution of the Jira issue FHIR-57547 the target types are no longer narrowed:
// the list below is the one of the base resource, with the Patient pinned to the EU core profile.
// The requested open slicing is not possible, as FHIR only allows slicing on repeating or choice
// elements and subject is 0..1.
* subject only Reference(PatientEuCore or Group or Location or Device)
  * ^short = "The patient this report is about"

* insert ReportEncounterRule
* performer 
  /* * obeys labRpt-author */
* resultsInterpreter
  /* * obeys labRpt-author */
* specimen only Reference (SpecimenEu)
  * ^short = "Specimens this report is based on."
* result only Reference (ObservationResultsLaboratoryEu)
  * ^short = "results"
* imagingStudy 0..0
* presentedForm ^short = "Entire report as issued (pdf recommended)"
// TODO: is using docref instead of media relevant for the base spec?
* media
  * ^short = "Additional data (like images, diagrams) associated with this report"
  * ^definition = "A list of additional data associated with this report. This data is generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest)."
  * ^requirements = "Some diagnostic reports may include additional data such as images, diagrams or documents that are relevant to the report. This additional information can provide further context and support for the findings presented in the report."
  * ^alias = "DICOM; Slides; Scans; Pictures; Documents; Diagrams"
  * comment
    * ^short = "Comment about the image or data (e.g. explanation)"
    * ^definition = "Allows for a comment about the image or data, such as an explanation of its significance or context within the diagnostic report."
    * ^requirements = "The provider of the report should make a comment about each image or data included in the report. This comment can provide valuable context and help the reader understand the significance of the image or data in relation to the overall findings of the report."  
  * link
    * ^short = "Reference to the image or data"
    * ^definition = "A reference to the image or data associated with this report."
    * reference 0..0
    * type 0..0
    * identifier 0..0
    * display 1..1
      * ^definition = "Text stating that instead of a reference to a Media resource, a DocumentReference resource is linked through the cross-version extension 'link'."
      * ^short = "Text stating use of cross-version extension 'link'"
    * extension contains $alternate-reference named link 0..1
    * extension[link]
      * ^definition = "Reference to a DocumentReference containing additional information/attachments associated with this report."
      * ^short = "DocumentReference containing additional information/attachments"
      * valueReference only Reference(DocumentReference) 
