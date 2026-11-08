// ============================================================================
// Specific culture
//
// White paper, chapter "Culture and Detection by Culture" (specific,
// taxon-targeted culture); workbook sheet "Culture Specific"; minutes of the
// Lab Semantic WG of 2026-11-06, which discussed three use cases: detected /
// not detected, sub typing, and unexpected growth.
//
//   Observation.code      LOINC, method Organism specific culture, the target
//                         in the component; property PrThr or PrId
//   Observation.value[x]  PrThr: Detected / Not detected
//                         PrId:  Detected / Not detected, or the organism
//                                (subtype, unexpected growth, preliminary group)
//   Observation.method    703752003 |Organism specific culture technique|
//
// Unexpected growth with a PrThr code is an observation of its own in the
// general culture profile (Organism growth), which the specific culture
// references through hasMember; the identification that follows points back
// at the growth through triggeredBy. Interim position until the workgroup decides on the
// property of the codes (SEM-21).
// ============================================================================

Profile: ObservationCultureSpecificEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-cultureSpecific-eu-lab
Title: "Observation Results: specific culture"
Description: """Culture aimed at a target named in the test code, with media and conditions that favour that target, e.g. *Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture* or *Adenovirus sp identified in Specimen by Organism specific culture*. The result depends on the property of the code: `Detected` or `Not detected`, and for a code with the property PrId also the organism found — a subtype, an unexpected organism, or a preliminary broad group. The technique is given in `method`.

Where the open question *does anything grow?* is answered, use [Observation Results: general culture](StructureDefinition-Observation-cultureGeneral-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the culture aimed at a target named in the test code, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Specific culture: was the target found"

* code from CultureSpecificCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, CultureSpecificCodePreferredEuVs, [[Preferred are the codes that leave the specimen to Specimen.type: system {Specimen}, and system XXX until LOINC provides {Specimen} codes for culture.]])
* code ^short = "The specific culture; the target is in the LOINC component"
* code ^comment = "A LOINC code with the method Organism specific culture, naming the target in the component. Codes with the property PrThr ask whether the target is present, e.g. 13317-3 |Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture|; codes with the property PrId ask what was found, e.g. 9782-4 |Adenovirus sp identified in Specimen by Organism specific culture|. Preferred are the codes with system {Specimen}; LOINC has none for culture yet, so until then the codes with system XXX. With a code with system Isolate the isolate is also given as Specimen.type 119303007 |Microbial isolate|."

* value[x] only CodeableConcept
* valueCodeableConcept from SpecificResultEuVs (extensible)
* value[x] ^short = "Detected, Not detected, or for PrId the organism found"
* value[x] ^comment = """The result depends on the property of the code.

* **PrThr:** 260373001 |Detected| or 260415000 |Not detected| only. Unexpected growth is reported as an observation of its own in the general culture profile (365698005 |Organism growth|), which this observation references through hasMember; the identification that follows points back at the growth through triggeredBy.
* **PrId:** 260415000 |Not detected|; 260373001 |Detected| if the target was found as named; or the organism, coded with SNOMED CT: a subtype (9782-4 = 46957004 |Human adenovirus 8|), an unexpected organism, or before the identification a broad group such as 409822003 |Domain Bacteria| in a preliminary result.

Growth and no growth are the result of the general culture, not of this profile. An indeterminate result is not a value; it is given in dataAbsentReason."""

* method from CultureSpecificTechniqueEuVs (extensible)
* method ^short = "703752003 |Organism specific culture technique|"
* method ^comment = "Required, like in all microbiology profiles. The code pre-coordinates the method Organism specific culture; the SNOMED CT technique states it explicitly."

* hasMember only Reference(ObservationCultureGeneralEu or ObservationCultureSpecificEu)
* hasMember ^short = "Unexpected growth in this culture, or the members of a screening panel"
* hasMember ^comment = "With a PrThr code the value can only say whether the target was found. Growth of something else in the same culture is a general culture of its own (365698005 |Organism growth|), referenced here, so that it stays tied to the specific culture in which it grew; it can be reported before the organism is identified. A panel code such as 100913-3 |Staph aureus and MRSA screening panel| references its specific cultures."

* interpretation ^comment = "The specific culture needs no interpretation; detected or not detected is the result itself."
