// ============================================================================
// Targeted detection
//
// White paper, "Data model for specific identification" (chapter Phenotypic
// Pathogen Identification) and chapter "Molecular Genetic Testing", category 1;
// workbook sheets "Direct Identification" and "Molecular techniques":
//
//   Observation.code      LOINC, the target in the component, property PrThr,
//                         specimen and method preferably post-coordinated
//   Observation.value[x]  Detected / Not detected
//   Observation.method    PCR, LAMP, TMA, immunoassay, agglutination, ...
//
// One profile for every technique, because the question and the result space
// are the same whatever the technique: is X present — yes or no. This also
// covers the targeted microscopy the workbook calls "Profile 2" on the sheet
// Microscopy (the object sought is named in the code: acid-fast bacilli,
// leukocytes), which is why the semi-quantitative component is available here
// as well. Targeted culture is a separate step with growth as its result and
// is not covered by this profile.
// ============================================================================

Profile: ObservationTargetedDetectionEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-targetedDetection-eu-lab
Title: "Observation Results: targeted detection"
Description: """Qualitative detection of a predefined target — a microorganism, its nucleic acid, an antigen or an antibody, or a microscopically visible object — answering the targeted question *is X present?* The target is named in the test code, the result is `Detected` or `Not detected`, and the technique is given in `method`: nucleic acid amplification, sequencing, immunoassay, agglutination, or microscopy with a stain. For a microscopic detection the semi-quantitative amount is carried in a component.

Where no target is predefined and the result is the organism itself, use [Observation Results: organism identification](StructureDefinition-Observation-organismIdentification-eu-lab.html); where the open microscopic question is answered with a morphology, use [Observation Results: microscopy](StructureDefinition-Observation-microscopy-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the targeted, qualitative detection of a predefined microbial target, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Targeted detection: is the target present"

* code from TargetedDetectionCodeEuVs (extensible)
* code ^short = "The detection test; the target is in the LOINC component"
* code ^comment = "Preferred are codes with the target in the component, property PrThr, system XXX and no method — e.g. 105875-9 |Bordetella pertussis DNA [Presence] in Specimen| — with the specimen in Specimen.type and the technique in Observation.method. Codes pre-coordinating a broad method category (Probe.amp.tar, Molgen, IA, ...) are accepted for laboratories that cannot post-coordinate the method. Codes pre-coordinating a culture describe the targeted culture, which is a separate step."

* value[x] only CodeableConcept
* valueCodeableConcept from DetectedNotDetectedEuVs (extensible)
* value[x] ^short = "Detected or Not detected"
* value[x] ^comment = "Whether the target named in the code was found. An indeterminate result — inhibited PCR, insufficient material — is not a value; it is given in dataAbsentReason."

* dataAbsentReason from TargetedDetectionDataAbsentReasonEuVs (extensible)
* dataAbsentReason ^comment = "82334004 |Indeterminate| is available here for an examination that was performed but yielded no usable statement."

* method from TargetedDetectionTechniqueEuVs (extensible)
* method ^short = "The detection technique"
* method ^comment = "Real-time PCR, LAMP and TMA rather than the generic 'PCR', which the white paper discourages because it does not distinguish real-time from classic gel-based PCR. For a rapid antigen test the technique 1156860005 |Rapid antigen detection immunoassay technique| is post-coordinated to a method-neutral antigen code."

* insert MicrobiologySemiquantitativeComponentEu
* component[semiquantitative] ^comment = "For the microscopic detection of an object named in the code (acid-fast bacilli, leukocytes): how much of it was seen. Not used for molecular or immunological detection."

* derivedFrom ^comment = "A qualitative detection read from a quantitative measurement — a PCR result derived from its Ct value — points at that measurement with derivedFrom. The direction is from the derived statement to its basis."
