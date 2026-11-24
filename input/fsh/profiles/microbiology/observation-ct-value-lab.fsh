// ============================================================================
// Ct value
//
// White paper, chapter "Molecular Microbiology Genetic Testing": "If a
// qualitative PCR has a Ct value that needs to be reported separately this can
// be achieved by using a second loinc with treshnum property"; section "CT
// Value". The white paper gives Observation.valueDecimal, which R4 does not
// have; the value is a Quantity with the UCUM unit 1. Interim position: SEM-30.
//
//   Observation.code      LOINC, property ThreshNum, e.g. 85799-5 |Bordetella
//                         pertussis+bronchiseptica+holmesii IS481 DNA [Cycle
//                         Threshold #] in Specimen by NAA with probe detection|
//   Observation.value[x]  the Ct value, a decimal with UCUM 1
//   Observation.method    fixed: real-time PCR
// ============================================================================

Profile: ObservationCtValueEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-ctValue-eu-lab
Title: "Observation Results: Ct value"
Description: """The Ct value of a qualitative real-time PCR: the number of cycles until the signal threshold is reached, a proxy for the amount of target. The qualitative result read from it, reported with [Observation Results: targeted detection](StructureDefinition-Observation-targetedDetection-eu-lab.html), points at this observation through `derivedFrom`.

A Ct value is reported only where the manufacturer of the assay provides for it. It is not comparable between assays and is not a load; a load is reported with [Observation Results: pathogen load](StructureDefinition-Observation-pathogenLoad-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the Ct value of a real-time PCR, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Ct value of a real-time PCR"

* code from CtValueCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, CtValueCodePreferredEuVs, [[Preferred are the codes with system XXX, which leave the specimen to Specimen.type.]])
* code ^short = "The target, as a LOINC code with property ThreshNum"
* code ^comment = "A LOINC Cycle Threshold code naming the target, e.g. 85799-5 |Bordetella pertussis+bronchiseptica+holmesii IS481 DNA [Cycle Threshold #] in Specimen by NAA with probe detection|. Their method, NAA with probe detection, follows from the Ct value itself."

* value[x] only QuantityEuLab
* value[x] ^short = "The Ct value, e.g. 28.4"
* value[x] ^comment = "A decimal number of cycles with the UCUM unit 1. A value beyond the cut-off of the assay is given with the comparator >. A negative PCR has no Ct value; then only the qualitative result Not detected is reported, without a Ct observation."
* valueQuantity.system = $ucum
* valueQuantity.code = #1

* interpretation ^comment = "A Ct value needs no interpretation; the qualitative result read from it is reported on its own."

* method = $sct#70601000052104
* method ^short = "Real-time PCR, the only technique that yields a Ct value"
* method ^comment = "Fixed to 70601000052104 |Real-time polymerase chain reaction technique|: digital PCR and isothermal techniques yield no Ct value (white paper)."

* specimen ^comment = "The specimen of the PCR, the same as that of the qualitative result."
