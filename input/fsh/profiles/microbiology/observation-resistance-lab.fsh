// ============================================================================
// Resistance
//
// White paper, chapter "Phenotypic Susceptibility and Molecular Resistance
// Testing" (molecular resistance testing, resistance mechanism); workbook
// sheets "Phenotypic resistence" and "Molecular resistance". One profile for
// resistance mechanisms and genes: the question "is resistance X present?"
// and the answer Detected / Not detected are the same; the technique is given
// in method (interim position, SEM-29).
//
//   Observation.code      LOINC, PrThr, the mechanism, enzyme or gene in the
//                         component, e.g. 104864-4 |Beta lactamase.extended
//                         spectrum [Presence]|, 85827-4 |Carbapenem
//                         resistance bla OXA-48-like gene [Presence] by
//                         Molecular method|
//   Observation.value[x]  Detected / Not detected
//   Observation.method    PCR, sequencing, rapid immunoassay, mCIM, disk
//                         diffusion, ...
//
// Interim positions: SEM-19 (rapid immunoassay codes), SEM-28 (codes of
// molecular resistance), SEM-29 (data model).
// ============================================================================

Profile: ObservationResistanceEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-resistance-eu-lab
Title: "Observation Results: resistance"
Description: """Detection of a resistance mechanism or gene, answering the question *is resistance X present?*: an enzyme such as a carbapenemase or an extended-spectrum beta-lactamase, a mechanism such as inducible clindamycin resistance, or a resistance gene such as *mecA* or *bla*OXA-48. The result is `Detected` or `Not detected`; the technique – a PCR, a rapid immunoassay, a phenotypic confirmation test – is given in `method`.

The susceptibility to an antimicrobial is reported with [Observation Results: antimicrobial susceptibility](StructureDefinition-Observation-susceptibility-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the detection of a resistance mechanism or gene, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Resistance: is a resistance mechanism or gene present"

* code from ResistanceCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, ResistanceCodePreferredEuVs, [[Preferred are the codes that fix neither material nor technique: for genes the pattern in {Specimen} by {Molgen} and, until LOINC provides it, the codes with system Isolate/Specimen and method Molgen; for enzymes and mechanisms the method-neutral codes and, until they exist, the carbapenemase codes by rapid immunoassay.]])
* code ^short = "The mechanism, enzyme or gene, as a LOINC PrThr code"
* code ^comment = "One observation per target, also for a test kit with several targets, so that the report shows which targets were tested (white paper). Genes, e.g. 85827-4 |Carbapenem resistance bla OXA-48-like gene [Presence] by Molecular method| or 115376-6 |Methicillin resistance mecA+mecC genes [Presence] in Specimen by Molgen|; enzymes and mechanisms, e.g. 104864-4 |Beta lactamase.extended spectrum [Presence]| or 101674-0 |OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay|. Codes that fix a material or a technique are accepted; the specimen and the technique are given in Specimen.type and Observation.method in any case."

* value[x] only CodeableConcept
* valueCodeableConcept from DetectedNotDetectedEuVs (extensible)
* value[x] ^short = "Detected or Not detected"
* value[x] ^comment = "260373001 |Detected| or 260415000 |Not detected|. An indeterminate result is not a value; it is given in dataAbsentReason."

* interpretation ^comment = "A resistance result needs no interpretation; detected or not detected is the result itself."

* method from ResistanceTechniqueEuVs (extensible)
* method ^short = "The technique: PCR, sequencing, rapid immunoassay, mCIM, disk diffusion, ..."
* method ^comment = "A mechanism read from a phenotypic test is reported with the technique of that test: the ESBL confirmation or the D-test with 1303975003 |Disk diffusion technique|, the expert rule of an automated susceptibility system with 708073008 |Minimum inhibitory concentration susceptibility test technique|, a carbapenemase with 782518009 |Modified carbapenem inactivation technique| or 708099001 |Rapid immunoassay technique|, a biochemical rapid test with a procedure under 61836004 |Beta lactamase susceptibility test|. Where the technique is not known, the most general concept applies: 1156878000 |Molecular nucleic acid amplification technique|, 726449005 |Immunoassay technique| or 61836004; otherwise the data-absent-reason extension states that the method is unknown."

* specimen ^comment = "Usually the isolate tested, a Specimen with the type 119303007 |Microbial isolate| that references the primary specimen through parent; for a detection directly from a specimen, the primary specimen."
* extension[triggeredBy] ^comment = "Points at what caused the test, with type `reflex`: the identification of the organism, or a susceptibility result, e.g. a carbapenemase test after an elevated meropenem MIC. Within a multiplex panel tested directly from a specimen, the panel groups its targets through hasMember instead, as in the targeted detection."
