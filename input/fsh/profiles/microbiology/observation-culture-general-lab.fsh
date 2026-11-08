// ============================================================================
// General culture
//
// White paper, chapter "Culture and Detection by Culture"; workbook sheet
// "Culture General". The culture answers "does anything grow?"; the
// identification that follows names the organism and points back at the
// culture through triggeredBy (principle 1: culture and identification are
// separate steps with distinct code sets).
//
//   Observation.code      11475-1 |Microorganism identified in Specimen by
//                         Culture|
//   Observation.value[x]  No growth / Organism growth
//   Observation.method    aerobic or anaerobic culture, or microbial culture
//                         where the condition is not known
//
// Interim position: the workbook prefers 41852-5 for the general culture; this
// guide keeps 41852-5 for the identification (question to the workgroup,
// SEM-22). The specific (taxon-targeted) culture is not profiled yet.
// ============================================================================

Profile: ObservationCultureGeneralEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-cultureGeneral-eu-lab
Title: "Observation Results: general culture"
Description: """General culture of a specimen with media and conditions that detect a broad range of pathogens, answering the question *does anything grow?* The result is `No growth` or `Organism growth`; the culture condition (aerobic, anaerobic) is given in `method`. The organism is named by the identification that follows, see [Observation Results: organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html), which points back at the culture."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the general culture in microbiology, following the conventions of the HL7 Europe Laboratory Semantic Workgroup: separate from the identification, with growth as its result."
* . ^short = "General culture: does anything grow"

* code from CultureGeneralCodeEuVs (required)
* code ^short = "The general culture, 11475-1"
* code ^comment = "11475-1 |Microorganism identified in Specimen by Culture| keeps the culture apart from the identification, which uses 41852-5 |Microorganism or agent identified in Specimen|. The workbook prefers 41852-5 for the general culture as well; whether the workgroup confirms the distinct codes is an open point. Codes pre-coordinating the specimen are not used; the specimen is given in Specimen.type."

* value[x] only CodeableConcept
* valueCodeableConcept from CultureGrowthEuVs (extensible)
* value[x] ^short = "No growth or Organism growth"
* value[x] ^comment = "264868006 |No growth| or 365698005 |Organism growth|. The organism that grew is not the value of the culture; it is the value of the identification that follows. An indeterminate culture — contaminated, insufficient material — is not a value; it is given in dataAbsentReason."

* method from CultureGeneralTechniqueEuVs (extensible)
* method ^short = "The culture technique: aerobic, anaerobic, or microbial culture"
* method ^comment = "Required, like in all microbiology profiles. 703750006 |Aerobic culture| or 703751005 |Anaerobic culture|; 702658000 |Microbial culture| where the condition is not known or not meaningful. Method holds one code, so a blood culture set with an aerobic and an anaerobic bottle gives one observation per bottle. Media, temperature and incubation time are not coded."

* interpretation ^comment = "The general culture has no interpretation; growth or no growth is the result itself."
