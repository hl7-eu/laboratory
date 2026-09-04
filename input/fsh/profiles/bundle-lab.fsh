//==========================
// PROFILE
//==========================

Profile: BundleLabReportEu
Parent: Bundle
Id: Bundle-eu-lab
Title: "Bundle: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report for the scope of the HL7 Europe project."
* insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Report bundle"
* . ^definition = "Laboratory Report bundle."

* obeys one-comp
* obeys one-dr
* obeys dr-comp-identifier
* obeys dr-comp-type
* obeys dr-comp-subj
* obeys dr-comp-enc


* identifier ^short = "Business identifier for this Laboratory Report"
* identifier 1..
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

* entry contains patient 0..*
* entry[patient].resource only Patient // or PatientEuCore or PatientAnimalEuCore changed based on https://jira.hl7.org/browse/FHIR-56181

* entry contains observation 0..*
* entry[observation].resource only Observation // not only LaboratoryObservation as this might be needed for ServiceRequest.supportingInformation

* entry contains specimen 0..*
* entry[specimen].resource only SpecimenEu

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only ServiceRequestLabEu

* entry contains organization 0..*
* entry[organization].resource only Organization

* entry contains practitioner 0..*
* entry[practitioner].resource only PractitionerEuCore

* entry contains practitionerRole 0..*
* entry[practitionerRole].resource only PractitionerRoleEuCore

* entry contains bodyStructure 0..*
* entry[bodyStructure].resource only BodyStructureEuCore

* entry contains encounter 0..*
* entry[encounter].resource only Encounter

* entry contains location 0..*
* entry[location].resource only LocationEuCore

* entry contains provenance 0..*
* entry[provenance].resource only Provenance

* entry contains coverage 0..*
* entry[coverage].resource only Coverage

* entry contains device 0..*
* entry[device].resource only Device

* entry contains condition 0..*
* entry[condition].resource only ConditionEuCore

* entry contains procedure 0..*
* entry[procedure].resource only ProcedureEuCore

* entry contains medication 0..*
* entry[medication].resource only MedicationEuCore

* entry contains medicationStatement 0..*
* entry[medicationStatement].resource only MedicationStatementEuCore

* entry contains medicationAdministration 0..*
* entry[medicationAdministration].resource only MedicationAdministration

//===================================
/// INVARIANTS
//===================================

Invariant: dr-comp-enc
Description: "DiagnosticReport and Composition SHALL have the same encounter"
/* Expression: "( (entry:composition.resource.encounter.empty() and entry:diagnosticReport.resource.encounter.empty() ) or entry:composition.resource.encounter = entry:diagnosticReport.resource.encounter )" */
// TODO: Consider comparing encounter.reference instead of the full Reference object. FHIRPath '=' compares complex objects structurally, so semantically equal references may fail if display, identifier, or reference style differs.
Expression: "( (entry.resource.ofType(Composition).encounter.empty() and entry.resource.ofType(DiagnosticReport).encounter.empty() ) or entry.resource.ofType(Composition).encounter = entry.resource.ofType(DiagnosticReport).encounter )"
Severity:    #error

Invariant: dr-comp-subj
Description: "DiagnosticReport and Composition SHALL have the same subject"
// TODO: Consider comparing subject.reference instead of the full Reference object. FHIRPath '=' compares complex objects structurally, so semantically equal references may fail if display, identifier, or reference style differs.
Expression: "( (entry.resource.ofType(Composition).subject.empty() and entry.resource.ofType(DiagnosticReport).subject.empty() ) or entry.resource.ofType(Composition).subject = entry.resource.ofType(DiagnosticReport).subject )"
Severity:    #error


// Based on the resolution of the Jira issue FHIR-57053 the two invariants below compare the
// distinguishing properties of the elements instead of the complete Coding and Identifier
// elements, which failed as soon as display, version, assigner, type, period or use differed.
// The dr-comp-category invariant was removed with the same resolution: Composition.category
// classifies the document, while DiagnosticReport.category refers to the medical discipline
// of the report, so the two are not required to be the same.

Invariant: dr-comp-type
Description: "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL have the same system, version and code"
Expression: "entry.resource.ofType(Composition).type.coding.select(system & '|' & version & '|' & code).intersect(entry.resource.ofType(DiagnosticReport).code.coding.select(system & '|' & version & '|' & code)).exists()"
Severity:    #error

Invariant: dr-comp-identifier
Description: "If one or more DiagnosticReport.identifiers are given, at least one of them SHALL have the same system and value as a Composition.identifier"
Expression: "entry.resource.ofType(DiagnosticReport).identifier.exists() implies entry.resource.ofType(Composition).identifier.select(system & '|' & value).intersect(entry.resource.ofType(DiagnosticReport).identifier.select(system & '|' & value)).exists()"
Severity:    #error

Invariant: one-comp
Description: "A laboratory report bundle SHALL include one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

Invariant: one-dr
Description: "A laboratory report SHALL include one and only one DiagnosticReport"
Expression: "entry.resource.ofType(DiagnosticReport).count() = 1"
Severity:    #error