Profile: CompositionLabReportEu
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: Composition-eu-lab
Title: "Composition: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report for the scope of the HL7 Europe project."
* ^publisher = "HL7 Europe"
* ^copyright = "HL7 Europe"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
// what to do with the composition text ?
// should we make it 0.. ?
// or have text repeated here and in the sections ?
* extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition].valueReference only Reference(ServiceRequestLabEu)

/*
* extension contains DiagnosticReportReference named diagnostic-report 1..1
 * extension[diagnostic-report].valueReference only Reference(DiagnosticReportLabEu)
* extension[diagnostic-report].valueReference 1..1 
*/

/*  TO DO Header
- add optional data enterer
- add optional Eu Information Recipient
- defiend rules for attester to distiguish  Authenticators and Legal Auth 
- ordering provider mapped into the order details 
- addc Lab DocumentationOf.serviceEvent details
- ComponentOf.encounter define details in Encounter profile
*/

* text ^short = "Narrative text"
* insert ReportIdentifierRule
* status ^short = "Status of the Report" // add voc binding aligned with DiagReprt
// * category 1.. // add VS binding
* insert ReportCategoryRule 
// * type = $loinc#11502-2 // change to a VS binding

* insert ReportTypeRule ( type )

  // slice the subject tp cover the three cases of human ; non-human and mixed
* insert ReportSubjectRule
* encounter only Reference (Encounter)  // profile defined for other scopes to be checked
* author 1..
* author ^short = "Who and/or what authored the Laboratory Report"
* author ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
* attester 1.. // RH - should attester be 1.. or 0..? - since author is also required? 
* event ^short = "The laboratory service(s) being documented"
// add details about the service
* title 1..
* title ^short = "Laboratory Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Laboratory Report\" or any equivalent translation"

// ServiceRequest and/or RequestGroup

/*  IS THE SLICE NEEDED IN THIS CASE ?
// check with the XDlab structure */

* section 1..
  * ^slicing.discriminator[0].type = #exists
  * ^slicing.discriminator[0].path = "$this.section"
  * ^slicing.discriminator[+].type = #type
  * ^slicing.discriminator[=].path = "$this.entry.resolve()"
  * ^slicing.discriminator[+].type = #pattern
  * ^slicing.discriminator[=].path = "$this.code"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^definition = """The \"body\" of the report is organized as a tree of up to two levels of sections: top level sections represent laboratory specialties. A top level section SHALL contain either one text block carrying all the text results produced for this specialty along with Laboratory Data Entries or a set of Laboratory Report Item Sections. In the first case the specialty section happens to also be a leaf section. In the latter case, each (second level) leaf section contained in the (top level) specialty section represents a Report Item: i.e., a battery, a specimen study (especially in microbiology), or an individual test. In addition, any leaf section SHALL contain a Laboratory Data Entries containing the observations of that section in a machine-readable format."""

/* 
Variant 2: Text and Entry - With this option, the Laboratory Specialty Section text SHALL be present and not blank. This narrative block SHALL present to the human reader, all the observations produced for this Specialty, using the various structures available in the CDA Narrative Block schema (NarrativeBlock.xsd): tables, lists, paragraphs, hyperlinks, footnotes, references to attached or embedded multimedia objects. The narrative block is fully derived from the entry containing the machine-readable result data. Additionally, a single Laboratory Report Data Processing Entry SHALL be present with attribute typeCode=\"DRIV\". This entry contains the machine-readable result data from which the narrative block of this section is derived.""" */


// --------------------------------------
// Common rules for all the sections
// ---------------------------------

* section.title 1..
* section.code 1..
* section.code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// RH - this constraint to only Narrative is already in the base Composition resource
//* section.text only Narrative

// -------------------------------------
// Single section  0 .. 1
// -------------------------------------

// RH - Add 'lab-' to the slice name, to clarify that there are potentially other "non-eu-lab" sections that do not meet the "EU Laboratory Report" sets of constraints
* section contains lab-no-subsections ..* // check if ..1 or ..*
* section[lab-no-subsections] ^short = "Variant 1: EU Laboratory Report section with text and entry"
* section ^definition = """Variant 1: With this option, the Section text SHALL be present and not blank. This narrative block SHALL present to the human reader, all the observations produced for this Specialty, using the various structures available for the FHIR  Narrative. The narrative block should be fully derived from the entry containing the machine-readable result data. Additionally, Laboratory Report Data Entries SHALL be present. This entry contains the machine-readable result data from which the narrative block of this section should be derived."""

* section[lab-no-subsections].code from LabStudyTypesEu (preferred)
// * section.code = http://loinc.org#75310-3 (exactly) // add binding
* section[lab-no-subsections].text ^short = "Text summary of the section, for human interpretation."

// add slices check the needed resources
// check structure of XD-LAB
// RH - allow a choice of both DiagnosticReport (optional) and Observation Results Lab (can be a single observation, or a grouper of nested observations)
// * section[lab-no-subsections].entry only Reference (DiagnosticReportLabEu or ObservationResultsLaboratoryEu)
 // GC - decided to move the DiagnosticReport reference to an extension, instead
* section[lab-no-subsections].entry only Reference (ObservationResultsLaboratoryEu)
* section[lab-no-subsections].section ..0

// -------------------------------------
// Structured sections  0 .. 1
// -------------------------------------

// RH - Add 'lab-' to the slice name, to clarify that there are potentially other "non-eu-lab" sections that do not meet the "EU Laboratory Report" sets of constraints
* section contains lab-subsections ..* // check if ..1 or ..*
* section[lab-subsections] ^short = "Variant 2: EU Laboratory Report section with one to many subsections Laboratory Report Item"
* section ^definition = """Varient 2: With this option, this Laboratory Specialty Section SHALL contain NEITHER a top level text NOR entry elements. Each Report Item is contained in a corresponding Laboratory Report Item Section which contains the Lab Report Data Entry."""
/* * section[lab-subsections].title 1..
* section[lab-subsections].code 1.. */
* section[lab-subsections].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// Should we also include the LabStudyTypesEu (preferred) binding here?
* section[lab-subsections].code from LabStudyTypesEu (preferred)
* section[lab-subsections].text 0..0
* section[lab-subsections].entry 0..0
// * section[lab-subsections].text only Narrative
// add slices check the needed resoucres
* section[lab-subsections].section 1..
  * code 1..
  * code only $CodeableConcept-uv-ips
  // And include the LabStudyTypesEu (preferred) binding for the subsection here?
  * code from LabStudyTypesEu (preferred)
  // * section.code = http://loinc.org#75310-3 (exactly) // add binding
  * text ^short = "Text summary of the section, for human interpretation."
  * entry 1..
  // RH - this constraint to only Narrative is already in the base Composition resource  
  //* text only Narrative
  // add slices check the needed resoucres
  // check structure of XD-LAB
  * entry only Reference (ObservationResultsLaboratoryEu)
  // * section.entry only Reference (DiagnosticReportLabEu or ObservationResultsLaboratoryEu)

// -------------------------------------
// Payer section  0 .. 1
// Payer information moved to ServiceRequest
// -------------------------------------

/* * section contains payers ..* // check if ..1 or ..*
* section[payers]
  * ^short = "Payer section"
  * ^definition = "	Optional information on sources of reimbursement of the performed laboratory tests."
  * code = http://loinc.org#48768-6 (exactly) // add binding
  * text 1..
  * entry only Reference (Coverage)
  * section ..0 */

// -------------------------------------
// Annotation section  0 .. 1
// -------------------------------------

* section contains annotations ..* // check if ..1 or ..*
* section[annotations]
  * ^short = "Annotation comment"
  * ^definition = """Narrative expression of comments accompanying the report, such as suggestions for evaluation, technical notes from the laboratory, etc.

Examples:
Suggestion: This result should be evaluated in relation to the patient's medical history and clinical condition.
Technical note: A list of accredited examination(s) is available at www.laboratory.com. """

  * code = http://loinc.org#48767-8 (exactly) // add binding
  * text 1.. 
  * section ..0