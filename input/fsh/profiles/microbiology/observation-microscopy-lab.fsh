// ============================================================================
// Microscopy
//
// White paper chapter "Microscopy": the microscopic result describes what is
// observed. The observation is influenced by the microscopy technique and by
// the preparation of the material (staining); for structured reporting these
// are represented separately:
//
//   Observation.code                    the question, LOINC 105059-0
//   Observation.value[x]                the finding, SNOMED CT
//   Observation.method                  the microscopy technique, < 278289002
//   Specimen.processing.procedure       the staining, < 37926009
//   Observation.component               the semi-quantitative amount
//   Observation.hasMember               several findings of one examination
//
// Where the object sought is already named in the test code and the answer is
// whether it was seen (acid-fast bacilli, leukocytes), the examination is a
// targeted detection and uses ObservationTargetedDetectionEu, whatever the
// technique. The workbook (sheet Microscopy, cells F3/F4) calls these
// "Profile 1" and "Profile 2".
// ============================================================================

Profile: ObservationMicroscopyEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-microscopy-eu-lab
Title: "Observation Results: microscopy"
Description: """Microscopic examination of a specimen, of material from a positive culture or of an isolate, answering the open question *what is there to see?* The result is the finding observed — a morphological group such as *Gram-positive cocci in clusters*, or an organism recognisable under the microscope such as a *Plasmodium* species — together with its semi-quantitative amount. The microscopy technique is given in `method`, the staining in `Specimen.processing`.

Where the object sought is named in the test code and the answer is whether it was seen, use [Observation Results: targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the microscopic examination in microbiology, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Microscopic observation: what was seen"

* code from MicroscopyObservationCodeEuVs (extensible)
* code ^short = "The microscopic observation, preferably 105059-0"
* code ^comment = "105059-0 |Microscopic observation [Identifier] in Specimen| is the recommended code: it leaves stain and specimen to be post-coordinated in Specimen.processing and Specimen.type. Codes that pre-coordinate the stain or the specimen are accepted for existing implementations; the stain and the specimen are then still given explicitly."

* value[x] only CodeableConcept
* valueCodeableConcept from MicroscopyFindingEuVs (extensible)
* value[x] ^short = "The finding observed, coded with SNOMED CT"
* value[x] ^comment = "A morphological finding (e.g. 70003006 |Gram-positive cocci in clusters|), an organism recognisable under the microscope (e.g. a Plasmodium species), host cells, or the negative result (27863008 |No organisms seen|, 260415000 |Not detected|). An observation that groups several findings through hasMember carries no value of its own."

* method from MicroscopyTechniqueEuVs (extensible)
* method ^short = "The microscopy technique, a descendant of 278289002 |Microscopy technique|"
* method ^comment = "The microscopy technique only. The staining is specimen processing and is represented in Specimen.processing.procedure, not here."

* insert MicrobiologySemiquantitativeComponentEu

* hasMember only Reference(ObservationMicroscopyEu or ObservationTargetedDetectionEu)
* hasMember ^short = "The individual findings of one microscopic examination"
* hasMember ^comment = "One microscopic examination may yield several independent findings — Gram-negative rods and leukocytes on the same slide. Each finding is its own Observation; an Observation with the examination code, method and specimen but without a value groups them through hasMember. The amount of a single finding is a component of that finding, not a member."

* interpretation ^comment = "The semi-quantitative amount is not an interpretation; it is carried in component[semiquantitative]. The workbook foresees no interpretation for microscopy."
