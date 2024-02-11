RuleSet: ReportAuthorRule
* ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."

RuleSet: ReportStatusRule
* status /* obeys labRpt-status */
  * ^short = "Status of the Report" // add voc binding aligned with DiagReprt
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned, based on the http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus mapping"


RuleSet: ReportEncounterRule
/* * encounter obeys labRpt-enc */
* encounter only Reference (Encounter)
  * ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
  * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).

  DiagnosticReport and Composition SHALL have the same encounter.
  """

RuleSet: ReportSubjectRule
* subject 1..
* subject /* obeys labRpt-subject */
// * subject only Reference (PatientEuLab or Patient or Group or Location or Device)
* subject only Reference (PatientEuLab or PatientAnimalEu or Group or Location or Device)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
  * ^comment = "DiagnosticReport and Composition SHALL have the same subject"


RuleSet: ReportIdentifierRule
* identifier /* obeys labRpt-id */
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"


RuleSet: ReportTypeRule (element)
* {element} 1..
/* * {element}  obeys labRpt-code */
* {element}  only $CodeableConcept-uv-ips
* {element}  from LabReportTypesEuVs (preferred) // value set to be revised add alternative value sets
  * ^short = "Type of (Laboratory) Report"
  * ^definition = "Specifies that it refers to a Laboratory Report"
  * ^comment = "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"


RuleSet: ReportCategoryRule
* category /* obeys labRpt-category */
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
  * ^comment = "DiagnosticReport.category and Composition.category shall be aligned"
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report. Two basic categories has been selected in this guide: laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from LabStudyTypesEuVs
* category[studyType]
  * ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
  * ^definition = "Laboratory services, i.e., results of tests performed, could be characterized using typology of services, commonly called study types. Study type could be seen as an attribute or grouping mechanism that assigns a common clinical sense to certain types of laboratory test results., e.g., Hemoglobin, Platelet count, etc. belongs to 'Hematology study'."
  * ^comment = "In comparison to the laboratory specialty which is an attribute of laboratory, study type is a categorization of laboratory service. It needs to be mentioned that classification of test to study types in not standardized."

// "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"

* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from LabSpecialtyEuVs
* category[specialty]
  * ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
  * ^definition = "Laboratory specialty is an attribute of any laboratory setting representing professional qualification of the laboratory to execute certain kind of laboratory tests."
  * ^comment = "Specialty could be used as parameter for searching/querying of laboratory test results."
// previuos description
// "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
