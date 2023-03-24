Profile: DiagnosticReportLabEu
Parent: DiagnosticReport
Id: DiagnosticReport-eu-lab
Title: "DiagnosticReport: Laboratory Report"
Description: "CDiagnosticReport used to represent an entry of a Laboratory Report, including its context, for the scope of the HL7 Europe project."
* ^publisher = "HL7 Europe"
* ^copyright = "HL7 Europe"
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"
* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5].value[x] only Reference(CompositionLabReportEu)
* extension[DiagnosticReportCompositionR5].value[x] 1..1

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
* basedOn.extension contains DiagnosticReportBasedOnRequisition named basedOn-requisition 0..*
* status ^short = "Status of this report"
* category 1.. // 1.. ?
* code from LabStudyTypesEu (preferred) 
* code 1..
* subject 1..
* subject only Reference (PatientEu or Patient or Group or Location or Device)
* encounter only Reference (Encounter) // profile defined for other scopes to be checked
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* specimen only Reference ( SpecimenEu )
* specimen ^short = "Specimens this report is based on."
* result only Reference (ObservationResultsLaboratoryEu)
* result ^short = "results" 
* imagingStudy 0..0
