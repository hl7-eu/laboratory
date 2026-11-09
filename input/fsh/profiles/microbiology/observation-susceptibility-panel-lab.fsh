// ============================================================================
// Antibiogram
//
// White paper, chapter "Phenotypic Susceptibility", "Data Model Conventions":
// the susceptibility results of one isolate are understood as a panel. An
// observation with 29576-6 |Bacterial susceptibility panel| groups them
// through hasMember and points back at the identification of the organism
// tested through triggeredBy.
//
// The panel has no value and no method of its own: the members can use
// different techniques (MIC, disk diffusion), and each states its method.
// ============================================================================

Profile: ObservationSusceptibilityPanelEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-susceptibilityPanel-eu-lab
Title: "Observation Results: antibiogram"
Description: """The antibiogram of an isolate: the panel that groups the susceptibility results of one isolate, one [Observation Results: antimicrobial susceptibility](StructureDefinition-Observation-susceptibility-eu-lab.html) per antimicrobial, and points back at the identification of the organism tested."""
* insert MicrobiologyDraftStatusEu
* insert MicrobiologyTriggeredByEu
* insert MicrobiologySpecimenEu
* ^purpose = "This profile constrains the laboratory Observation for the antibiogram of an isolate, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Antibiogram: the susceptibility results of one isolate"

* code from SusceptibilityPanelCodeEuVs (extensible)
* code ^short = "29576-6 |Bacterial susceptibility panel|"

* value[x] ^comment = "The antibiogram has no value of its own; the results are its members."
* interpretation 0..0
* interpretation ^comment = "Each member carries its own interpretation and standard; the standard can differ per antimicrobial."

* hasMember 1..*
* hasMember only Reference(ObservationSusceptibilityEu)
* hasMember ^short = "One susceptibility result per antimicrobial tested"

* method ^comment = "The members state their methods; an antibiogram can combine techniques, e.g. an automated MIC panel and disk diffusion. The method of the antibiogram may be given where all members share it."

* specimen ^comment = "The isolate tested, the same specimen as that of the members."
* extension[triggeredBy] ^comment = "The antibiogram points back at the identification of the organism tested, with type `reflex`."
