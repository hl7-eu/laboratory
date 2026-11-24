// ============================================================================
// Specific microscopy
//
// Workbook, sheet Microscopy, "Profile 2"; Berlin workshop: "targeted
// microscopy". The code names the target of the examination, e.g. 32206-5
// |Plasmodium sp identified in Blood by Light microscopy| or 51587-4
// |Plasmodium sp [Presence] in Blood by Light microscopy|:
//
//   Observation.code                    LOINC, class MICRO, PrId or PrThr,
//                                       method microscopy; preferably system XXX
//   Observation.value[x]                Detected / Not detected, or for PrId the
//                                       organism seen
//   Observation.method                  the microscopy technique
//   Specimen.processing.procedure       the staining
//   Observation.component               the semi-quantitative amount
//
// The result depends on the LOINC property of the code (workgroup questions
// on targeted PrId codes and on unexpected findings, interim position):
//
//   PrId    not found                        -> Not detected
//           found as named in the code       -> Detected
//           found more specifically, or found
//           something other than the target  -> the organism
//   PrThr   Detected / Not detected only; an unexpected finding is an
//           observation of its own, which this one references through
//           hasMember
// ============================================================================

Profile: ObservationMicroscopySpecificEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-microscopySpecific-eu-lab
Title: "Observation Results: specific microscopy"
Description: """Microscopic examination aimed at a target named in the test code (workbook, sheet Microscopy, "Profile 2"; Berlin workshop, "targeted microscopy"), e.g. *Plasmodium sp identified in Blood by Light microscopy* or *Plasmodium sp [Presence] in Blood by Light microscopy*. The result is `Detected` or `Not detected`; for a code with the property PrId it may also be the organism seen, where that is more specific than the target or other than the target. The microscopy technique is given in `method`, the staining in `Specimen.processing`, the amount seen in a component.

Where the open question *what is there to see?* is answered, use [Observation Results: general microscopy](StructureDefinition-Observation-microscopyGeneral-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the microscopic examination aimed at a target named in the test code, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Specific microscopy: was the target seen"

* code from MicroscopySpecificCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, MicroscopySpecificCodePreferredEuVs, [[Preferred are the codes with system XXX, which leave the specimen to Specimen.type.]])
* code ^short = "The specific microscopy; the target is in the LOINC component"
* code ^comment = "A LOINC code of class MICRO with property PrId or PrThr and a microscopy method, naming the target in the component, e.g. 32206-5 |Plasmodium sp identified in Blood by Light microscopy|. Preferred are the codes with system XXX, e.g. 673-4 |Ova and parasites identified in Specimen by Light microscopy|, with the specimen in Specimen.type. Codes with the component *Microscopic observation* name no target and belong to the general microscopy."

* value[x] only CodeableConcept
* valueCodeableConcept from SpecificResultEuVs (extensible)
* value[x] ^short = "Detected, Not detected, or for PrId the organism seen"
* value[x] ^comment = """The result depends on the property of the code.

* **PrId:** 260415000 |Not detected| if the target was not found; 260373001 |Detected| if it was found as named in the code; the organism, coded with SNOMED CT, if it was found more specifically than the code asks (32206-5 *Plasmodium sp identified in Blood* = 30020004 |Plasmodium falciparum|) or if something other than the target was found.
* **PrThr:** 260373001 |Detected| or 260415000 |Not detected| only. An organism other than the target is reported in a general microscopy of its own, which this observation references through hasMember.
* **Target and another organism both found:** each is reported in an observation of its own with the same code.

An indeterminate result is not a value; it is given in dataAbsentReason."""

* method from MicroscopyTechniqueEuVs (extensible)
* method ^short = "The microscopy technique, 278289002 |Microscopy technique| or a descendant"
* method ^comment = "The microscopy technique only, also where the code pre-coordinates it (Microscopy.light, Microscopy.electron). The staining is specimen processing and is represented in Specimen.processing.procedure, not here."

* insert MicrobiologySemiquantitativeComponentEu
* component[semiquantitative] ^comment = "How much of the target was seen, e.g. ++ for a Plasmodium falciparum parasitaemia. Not used with Not detected."

* hasMember only Reference(ObservationMicroscopyGeneralEu)
* hasMember ^short = "An unexpected finding of the same examination"
* hasMember ^comment = "With a PrThr code the value can only say whether the target was seen. Another organism seen in the same examination is a general microscopy of its own, e.g. Babesia microti in a blood film examined for Plasmodium; this observation references it through hasMember, so that the finding stays tied to the examination in which it was made."

* interpretation ^comment = "The semi-quantitative amount is not an interpretation; it is carried in component[semiquantitative]. The workbook foresees no interpretation for microscopy."
