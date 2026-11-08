// ============================================================================
// General microscopy
//
// White paper chapter "Microscopy": the microscopic result describes what is
// observed. The observation is influenced by the microscopy technique and by
// the preparation of the material (staining); for structured reporting these
// are represented separately:
//
//   Observation.code                    the question, LOINC 105059-0
//   Observation.value[x]                the finding, SNOMED CT
//   Observation.method                  the microscopy technique, 278289002
//                                       or a descendant
//   Specimen.processing.procedure       the staining, < 37926009
//   Observation.component               the semi-quantitative amount
//   Observation.hasMember               several findings of one examination
//
// The workbook (sheet Microscopy, cells F3/F4) distinguishes "Profile 1", the
// open question answered here, from "Profile 2", the microscopy aimed at a
// target named in the code. Profile 2 is ObservationMicroscopySpecificEu.
// ============================================================================

Profile: ObservationMicroscopyGeneralEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-microscopyGeneral-eu-lab
Title: "Observation Results: general microscopy"
Description: """Microscopic examination of a specimen, of material from a positive culture or of an isolate, answering the open question *what is there to see?* The result is the finding observed — a morphological group such as *Gram-positive cocci in clusters*, an organism recognisable under the microscope such as a *Plasmodium* species, or host cells — together with its semi-quantitative amount. The microscopy technique is given in `method`, the staining in `Specimen.processing`.

Where the code names the target of the examination, e.g. *Plasmodium sp identified in Blood by Light microscopy*, use [Observation Results: specific microscopy](StructureDefinition-Observation-microscopySpecific-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the general microscopic examination in microbiology, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "General microscopy: what was seen"

* code from MicroscopyObservationCodeEuVs (extensible)
* code ^short = "The microscopic observation, 105059-0"
* code ^comment = "105059-0 |Microscopic observation [Identifier] in Specimen| leaves stain and specimen to be post-coordinated in Specimen.processing and Specimen.type. Codes that pre-coordinate the stain or the specimen (e.g. 664-3 |... by Gram stain|) are not part of the value set; whether they are needed is an open point for the workgroup."

* value[x] only CodeableConcept
* valueCodeableConcept from MicroscopyFindingEuVs (extensible)
* value[x] ^short = "The finding observed, coded with SNOMED CT"
* value[x] ^comment = "A morphological finding (e.g. 70003006 |Gram-positive cocci in clusters|), an organism or morphological group from the organism hierarchy (e.g. a Plasmodium species, 87172008 |Gram-negative bacillus|, 243365003 |Acid-fast bacillus|), host cells (52501007 |Leukocyte|), or 260415000 |Not detected|. An observation that groups several findings through hasMember carries no value of its own."

* method from MicroscopyTechniqueEuVs (extensible)
* method ^short = "The microscopy technique, 278289002 |Microscopy technique| or a descendant"
* method ^comment = "The microscopy technique only. The staining is specimen processing and is represented in Specimen.processing.procedure, not here."

* insert MicrobiologySemiquantitativeComponentEu

* hasMember only Reference(ObservationMicroscopyGeneralEu or ObservationMicroscopySpecificEu)
* hasMember ^short = "The individual findings of one microscopic examination"
* hasMember ^comment = "One microscopic examination may yield several independent findings — Gram-negative rods and leukocytes on the same slide. Each finding is its own Observation; an Observation with the examination code, method and specimen but without a value groups them through hasMember. The amount of a single finding is a component of that finding, not a member."

* interpretation ^comment = "The semi-quantitative amount is not an interpretation; it is carried in component[semiquantitative]. The workbook foresees no interpretation for microscopy."
