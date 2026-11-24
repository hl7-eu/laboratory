// ============================================================================
// Pathogen load
//
// White paper, chapter "Molecular Microbiology Genetic Testing", category 2:
// quantitative nucleic acid amplification, e.g. the CMV load in blood in IU/mL
// or copies/mL; workbook sheet "molecular techniques new", block
// "Quantification Procedure". Interim position: SEM-30.
//
//   Observation.code      LOINC, DNA or RNA, property ACnc or NCnc, e.g.
//                         34720-3 |Cytomegalovirus DNA [Units/volume] (viral
//                         load) in Specimen by NAA with probe detection|
//   Observation.value[x]  the load with UCUM and comparator, or Not detected
//   Observation.method    real-time PCR, digital PCR, TMA
// ============================================================================

Profile: ObservationPathogenLoadEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-pathogenLoad-eu-lab
Title: "Observation Results: pathogen load"
Description: """The load of a pathogen in a specimen, measured by quantitative nucleic acid amplification, e.g. the cytomegalovirus load in plasma. The result is a concentration in IU/mL or copies/mL, a value outside the measuring range with its comparator, or `Not detected`. The technique – real-time PCR, digital PCR or transcription-mediated amplification – is given in `method`.

The Ct value of a qualitative real-time PCR is not a load; it is reported with [Observation Results: Ct value](StructureDefinition-Observation-ctValue-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the quantitative molecular measurement of a pathogen load, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Pathogen load: how much of the pathogen's nucleic acid is in the specimen"

* code from PathogenLoadCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, PathogenLoadCodePreferredEuVs, [[Preferred are the codes with system XXX or {Specimen}, which leave the specimen to Specimen.type; the target are codes that leave the method open as well.]])
* code ^short = "The pathogen and the quantity measured, as a LOINC code with property ACnc or NCnc"
* code ^comment = "ACnc for a load in IU/mL, NCnc for copies/mL, e.g. 34720-3 |Cytomegalovirus DNA [Units/volume] (viral load) in Specimen by NAA with probe detection|. Preferred are the codes with system XXX; codes with a fixed material, e.g. in serum or plasma, are accepted, as the white paper finds pre-coordination practical for viral loads. The specimen is given in Specimen.type in any case. Log-transformed results are not covered in this edition."

* value[x] only QuantityEuLab or CodeableConcept
* value[x] ^short = "The load, or Not detected"
* value[x] ^comment = "A load in valueQuantity; 260415000 |Not detected| in valueCodeableConcept when the target was not detected. A target detected below the limit of quantification is a load with the comparator <, not Not detected. An indeterminate result is not a value; it is given in dataAbsentReason."
* valueQuantity from PathogenLoadUnitEuVs (extensible)
* valueQuantity ^short = "The load in [IU]/mL or {copies}/mL"
* valueQuantity.comparator ^short = "< below the limit of quantification, > above the measuring range"
* valueQuantity.comparator ^comment = "A value outside the measuring range SHALL be given with the comparator: < with the limit of quantification when the target was detected but not quantifiable, > with the upper limit when the load exceeds the measuring range. Without it the value reads as exact. A validator cannot check this, because it does not know the measuring range."
* valueCodeableConcept = $sct#260415000 "Not detected"

* interpretation ^comment = "A pathogen load needs no interpretation."

* method from PathogenLoadTechniqueEuVs (extensible)
* method ^short = "Real-time PCR, digital PCR or TMA"
* method ^comment = "70601000052104 |Real-time polymerase chain reaction technique| quantifies against a calibrated standard curve, 1303992007 |Digital polymerase chain reaction technique| absolutely; 1304048000 |Transcription mediated amplification technique| for quantitative TMA assays. 1156878000 |Molecular nucleic acid amplification technique| where the technique is not known."

* specimen ^comment = "The primary specimen, e.g. plasma, blood or cerebrospinal fluid, with its type in Specimen.type."
* extension[triggeredBy] ^comment = "Where the quantification follows a positive qualitative detection, it points back at that detection with type `reflex`. A load ordered directly, e.g. for monitoring, has no triggeredBy."
