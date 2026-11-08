// ============================================================================
// Organism identification
//
// White paper, chapter "Culture and Detection by Culture", principle 1:
// culture and identification are separate steps with distinct code sets.
// Culture answers "does anything grow?"; identification accepts the isolate
// (or a direct specimen — malaria microscopy, 16S sequencing) as input and
// names the organism. The white paper's "Data model for general
// identification" and the workbook sheet "Phenotypic Identification":
//
//   Observation.code      41852-5 |Microorganism or agent identified in Specimen|
//   Observation.value[x]  SNOMED CT organism, Not detected, or Normal flora
//   Observation.method    MALDI-TOF, microscopy, sequencing, ...
// ============================================================================

Profile: ObservationOrganismIdentificationEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-organismIdentification-eu-lab
Title: "Observation Results: organism identification"
Description: """Identification of a microorganism or infectious agent without restriction to a predefined target, answering the open question *which organism is it?* The input is usually an isolate obtained by culture, but may be a direct specimen (e.g. malaria microscopy, 16S rRNA sequencing). The result is the organism identified, coded with SNOMED CT, or `Not detected`; the identification technique is given in `method`.

Where a predefined target is sought and the answer is whether it is present, use [Observation Results: targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the identification of a microorganism, following the conventions of the HL7 Europe Laboratory Semantic Workgroup: separate from the culture, with the organism as result and the technique in method."
* . ^short = "Organism identification: which organism it is"

* code from OrganismIdentificationCodeEuVs (extensible)
* code ^short = "The identification, preferably 41852-5"
* code ^comment = "41852-5 |Microorganism or agent identified in Specimen| is the recommended code. The codes naming the sequencing target (16S, 18S rRNA) are accepted for sequencing-based identification. Whole genome sequencing uses 41852-5 with 1304162005 |Nucleic acid sequencing technique| as method until a LOINC code for the whole genome exists. Codes that pre-coordinate the culture (e.g. 11475-1 |... by Culture|) describe the culture step and belong to the culture observation, not to the identification."

* value[x] only CodeableConcept
* valueCodeableConcept from OrganismIdentificationResultEuVs (extensible)
* value[x] ^short = "The organism identified, Not detected, or Normal flora"
* value[x] ^comment = "The organism from the SNOMED CT organism hierarchies (bacteria, fungi, protozoa, viruses, prions, helminths, arthropods). If the examination was performed but no organism was identified, 260415000 |Not detected| is given. A culture that grew only normal flora is identified as 23506009 |Normal flora|, a finding rather than an organism. An indeterminate result is represented with dataAbsentReason, not with a value."

* method from OrganismIdentificationTechniqueEuVs (extensible)
* method ^short = "The identification technique, e.g. MALDI-TOF mass spectrometry"
* method ^comment = "Where the identification was made by microscopy, by sequencing or by an automated biochemical system, the method says so. Automated biochemical identification (VITEK and similar systems) is given as 53465007 |Microbial identification, automated and semiautomated methods|."

* extension[triggeredBy] ^comment = "An identification normally follows a culture whose growth it names and points back at that culture with type `reflex`."
