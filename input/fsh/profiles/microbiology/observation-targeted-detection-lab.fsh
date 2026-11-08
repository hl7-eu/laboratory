// ============================================================================
// Targeted detection
//
// Lab Semantic WG minutes of 2026-11-06, "Direct identification"; white
// paper, "Data model for specific identification" (chapter Phenotypic
// Pathogen Identification) and chapter "Molecular Genetic Testing",
// category 1; workbook sheets "Direct Identification" and "molecular
// techniques new":
//
//   Observation.code      LOINC, class MICRO, property PrThr, the target in
//                         the component; preferably system {Specimen} with
//                         method {Molgen}, IF, IA or Aggl
//   Observation.value[x]  Detected / Not detected
//   Observation.method    real-time PCR, LAMP, TMA, immunoassay,
//                         immunofluorescence, agglutination, ...
//
// One profile for the molecular and the immunological detection of a target,
// because the question and the result space are the same: is X present — yes
// or no. "Direct identification" is the name of the workflow step; the
// profile also applies to isolates. The microscopy aimed at a named target is
// ObservationMicroscopySpecificEu, the targeted culture is reported with the
// culture.
// ============================================================================

Profile: ObservationTargetedDetectionEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-targetedDetection-eu-lab
Title: "Observation Results: targeted detection"
Description: """Qualitative detection of a predefined target — the nucleic acid of a microorganism or an antigen — answering the targeted question *is X present?* The target is named in the test code, the result is `Detected` or `Not detected`, and the technique is given in `method`: nucleic acid amplification, immunoassay, immunofluorescence or agglutination. The value sets also contain antibody codes for now; whether these belong to serology is an open point.

Where no target is predefined and the result is the organism itself, use [Observation Results: organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html); for the microscopic examination aimed at a named target, use [Observation Results: specific microscopy](StructureDefinition-Observation-microscopySpecific-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the targeted, qualitative detection of a predefined microbial target, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Targeted detection: is the target present"

* code from TargetedDetectionCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, TargetedDetectionCodePreferredEuVs, [[Preferred are the codes with system {Specimen} and method {Molgen}, IF, IA or Aggl, which leave specimen and technique to be post-coordinated; until LOINC provides them for the immunological methods also the codes with system XXX.]])
* code ^short = "The detection test; the target is in the LOINC component"
* code ^comment = "A LOINC code of class MICRO with property PrThr, naming the target in the component. Preferred are the codes with system {Specimen} and method {Molgen}, IF, IA or Aggl, e.g. 105875-9 |Bordetella pertussis DNA [Presence] in Specimen by Molgen|, with the specimen in Specimen.type and the technique in Observation.method. Until LOINC provides such codes for IF, IA and Aggl, the codes with system XXX and one of these methods or no method are preferred as well, e.g. 105066-5 |SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Specimen|. Codes pre-coordinating the specimen or a specific method (Probe.amp.tar, Non-probe.amp.tar, ...) are accepted for laboratories that cannot post-coordinate. Culture codes belong to the culture, rapid immunoassay codes are replaced by the method-neutral code with the rapid technique as method."

* value[x] only CodeableConcept
* valueCodeableConcept from DetectedNotDetectedEuVs (extensible)
* value[x] ^short = "Detected or Not detected"
* value[x] ^comment = "Whether the target named in the code was found. An organism other than the target, found in the same examination, is reported in an observation of its own; it is not the value of this one. An indeterminate result — inhibited PCR, insufficient material — is not a value; it is given in dataAbsentReason."

* dataAbsentReason from MicrobiologyDataAbsentReasonEuVs (extensible)
* dataAbsentReason ^comment = "82334004 |Indeterminate| is available here for an examination that was performed but yielded no usable statement."

* method from TargetedDetectionTechniqueEuVs (extensible)
* method ^short = "The detection technique"
* method ^comment = "Real-time PCR, digital PCR, LAMP or TMA; 1156878000 |Molecular nucleic acid amplification technique| where the amplification technique is not known. The generic 'PCR' is not recommended, because it does not distinguish real-time from classic gel-based PCR. A panel (multiplex) is not a method: each target is an observation with the actual technique, grouped through hasMember under an observation with the panel code. For a rapid antigen test the technique 708099001 |Rapid immunoassay| or 1156860005 |Rapid antigen detection immunoassay technique| is post-coordinated to a method-neutral antigen code."

* derivedFrom ^comment = "A qualitative detection read from a quantitative measurement — a PCR result derived from its Ct value — points at that measurement with derivedFrom. The direction is from the derived statement to its basis."
