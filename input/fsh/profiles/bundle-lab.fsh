//===================================
/// INVARIANTS
//===================================

Invariant: dr-comp-enc
Description: "DiagnosticReport and Composition SHALL have the same encounter"
/* Expression: "( (entry:composition.resource.encounter.empty() and entry:diagnosticReport.resource.encounter.empty() ) or entry:composition.resource.encounter = entry:diagnosticReport.resource.encounter )" */
Expression: "( (entry.resource.ofType(Composition).encounter.empty() and entry.resource.ofType(DiagnosticReport).encounter.empty() ) or entry.resource.ofType(Composition).encounter = entry.resource.ofType(DiagnosticReport).encounter )"
Severity:    #error

Invariant: dr-comp-subj
Description: "DiagnosticReport and Composition SHALL have the same subject"
Expression: "( (entry.resource.ofType(Composition).subject.empty() and entry.resource.ofType(DiagnosticReport).subject.empty() ) or entry.resource.ofType(Composition).subject = entry.resource.ofType(DiagnosticReport).subject )"
Severity:    #error


Invariant: dr-comp-type
Description: "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"
Expression: "entry.resource.ofType(Composition).type.coding.intersect(entry.resource.ofType(DiagnosticReport).code.coding).exists()" 
Severity:    #error

Invariant: dr-comp-category
Description: "At least one DiagnosticReport.category.coding and Composition.category.coding SHALL be equal"
Expression: "(entry.resource.ofType(Composition).category.exists() or entry.resource.ofType(DiagnosticReport).category.exists()) implies entry.resource.ofType(Composition).category.coding.intersect(entry.resource.ofType(DiagnosticReport).category.coding).exists()" 
Severity:    #error

Invariant: dr-comp-identifier
Description: "If one or more DiagnosticReport.identifiers are given, at least one of them SHALL be equal to the Composition.identifier"

/* "Composition.identifier SHALL be equal to one of DiagnosticReport.identifier, if at least one exists"

 *//* Expression: "entry:composition.resource.identifier.subsetOf( entry:diagnosticReport.resource.identifier )" */
/* Expression: "entry.resource.ofType(Composition).identifier.subsetOf(entry.resource.ofType(DiagnosticReport).identifier)"  */
Expression: "(entry.resource.ofType(Composition).identifier.exists() or entry.resource.ofType(DiagnosticReport).identifier.exists()) implies entry.resource.ofType(Composition).identifier.intersect(entry.resource.ofType(DiagnosticReport).identifier).exists()" 
Severity:    #error

Invariant: one-comp
Description: "A laboratory report bundle SHALL includes one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

Invariant: one-dr
Description: "A laboratory report SHALL includes one and only one DiagnosticReport"
Expression: "entry.resource.ofType(DiagnosticReport).count() = 1"
Severity:    #error

//==========================
// PROFILE
//==========================

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

* obeys one-comp
* obeys one-dr
* obeys dr-comp-identifier
* obeys dr-comp-type
* obeys dr-comp-category
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
// * entry ^slicing.ordered = true => changed on 2023-07-19  to be checked
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CompositionLabReportEu

* entry contains diagnosticReport 1..1
* entry[diagnosticReport].resource only DiagnosticReportLabEu

* entry contains patient 0..1
* entry[patient].resource only Patient or PatientEu

* entry contains observation 0..*
* entry[observation].resource only ObservationResultsLaboratoryEu

* entry contains specimen 0..*
* entry[specimen].resource only SpecimenEu

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only ServiceRequestLabEu

* entry contains organization 0..*
* entry[organization].resource only Organization

* entry contains practitioner 0..*
* entry[practitioner].resource only PractitionerEu

* entry contains practitionerRole 0..*
* entry[practitionerRole].resource only PractitionerRoleEu

* entry contains encounter 0..*
* entry[encounter].resource only Encounter

* entry contains location 0..*
* entry[location].resource only Location

//* entry contains documentReference 0..*
//* entry[documentReference].resource only DocumentReference

