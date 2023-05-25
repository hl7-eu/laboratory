
RuleSet: ReportStatusRule
* status ^short = "Status of this report" 
// add voc binding aligned with DiagReprt
// shall be the same ?


RuleSet: ReportEncounterRule
* encounter only Reference (Encounter)
  * ^constraint.key = "labRpt-enc"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.encounter and Composition.encounter shall be aligned"  
  * ^short = "The healthcare event which this Laboratory Report is about."
  * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests)."""

RuleSet: ReportSubjectRule
* subject 1..
* subject only Reference (PatientEu or Patient or Group or Location or Device)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
  * ^constraint.key = "labRpt-subject"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.subject and Composition.subject shall be aligned"

RuleSet: ReportIdentifierRule
* identifier
  * ^short = "Report identifier"
  * ^definition = "Business identifier of this report (common to several report versions - setID)"
  * ^constraint.key = "labRpt-id"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.identifier and Composition.identifier shall be aligned"


RuleSet: ReportTypeRule (element)
* {element} 1..
* {element}  only $CodeableConcept-uv-ips
* {element}  from LabReportTypesEu (preferred) // value set to be revised add alternative value sets
  * ^binding.extension.extension[0].url = "purpose"
  * ^binding.extension.extension[=].valueCode = #candidate
  * ^binding.extension.extension[+].url = "valueSet"
  * ^binding.extension.extension[=].valueCanonical = Canonical ( LabStudyTypesEu )
  * ^binding.extension.extension[+].url = "documentation"
  * ^binding.extension.extension[=].valueMarkdown = """Laboratory Specialties."""
  * ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Laboratory Specialties."
  * ^short = "Type of (Laboratory) Report"
  * ^definition = "Specifies that it refers to a Laboratory Report"
  * ^constraint.key = "labRpt-code"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.code and Composition.type shall be aligned"

RuleSet: ReportCategoryRule
* category only $CodeableConcept-uv-ips
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
  * ^constraint.key = "labRpt-category"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.category and Composition.category shall be aligned"

RuleSet: SectionComRules (short, def, code)

// * insert (Health Concern Section, test, http://loinc.org#75310-3)

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* ^extension[0].valueString = "Section"
* ^short = "{short}"  
* ^definition = "{def}"
* title 1.. 
* code 1.. 
* code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* code = {code} (exactly)
* text 1..
* text only Narrative
* emptyReason ..0
* emptyReason ^mustSupport = false

RuleSet: SectionEntrySliceComRules (short, def)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "{short}"
* entry ^definition = "{def}" 

RuleSet: SectionEntrySliceDefRules (name, card, short, def, profiles)
// SectionEntrySliceDefRules (flags, 0.., "Care Team", "Care Team", CareTeamEu)

* entry contains {name} 0..1
* entry[{name}] {card} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}] only Reference({profiles})

//--------------------------------------------
RuleSet: NoSubSectionsRules
* section ..0
* section ^mustSupport = false

