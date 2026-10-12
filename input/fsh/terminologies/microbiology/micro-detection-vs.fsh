// ============================================================================
// Targeted detection — value sets
// Source: white paper "Data model for specific identification" and chapter
// "Molecular Genetic Testing"; workbook sheets "Direct Identification",
// "Molecular techniques" and "Microscopy" (Profile 2).
// ============================================================================

ValueSet: TargetedDetectionCodeEuVs
Id: micro-targetedDetectionCode-eu-lab
Title: "Targeted Detection Codes"
Description: """LOINC codes for the qualitative detection of a predefined target: class MICRO, property PrThr (presence or threshold), active. The target — an organism, its DNA or RNA, an antigen or antibody — is in the LOINC component; the preferred codes leave specimen and method to be post-coordinated (system XXX, no method), e.g. 105875-9 |Bordetella pertussis DNA [Presence] in Specimen|. Codes pre-coordinating a broad method category are accepted.

Excluded are the culture methods, because a targeted culture is a separate step with growth as its result, and the rapid immunoassay codes, which the workbook's filter leaves out (sheet Direct Identification): a rapid antigen test uses the method-neutral antigen code with 1156860005 |Rapid antigen detection immunoassay technique| in Observation.method. Added are the Gram-stain presence codes for host cells, which LOINC files under class HEM/BC."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and STATUS = "ACTIVE"
* exclude codes from system $loinc where METHOD_TYP = "LP6429-7"  // Organism specific culture
* exclude codes from system $loinc where METHOD_TYP = "LP6209-3"  // Culture
* exclude codes from system $loinc where METHOD_TYP = "LP217198-3" // IA.rapid
// Host cells seen in a Gram stain — class HEM/BC, therefore not caught above
* $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* $loinc#72162-1 "Erythrocytes [Presence] in Specimen by Gram stain"
* $loinc#72161-3 "Epithelial cells [Presence] in Specimen by Gram stain"

// ----------------------------------------------------------------------------

ValueSet: DetectedNotDetectedEuVs
Id: micro-detectedNotDetected-eu-lab
Title: "Detected and Not Detected"
Description: """The result of a targeted detection (workbook, sheets Direct Identification and Molecular techniques, "Result"). An indeterminate result is not a value; it is given in dataAbsentReason."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $sct#260373001 "Detected"
* $sct#260415000 "Not detected"

// ----------------------------------------------------------------------------

ValueSet: TargetedDetectionDataAbsentReasonEuVs
Id: micro-targetedDetectionDataAbsentReason-eu-lab
Title: "Targeted Detection Data Absent Reasons"
Description: """Why a targeted detection has no result: the FHIR data-absent-reason codes, plus 82334004 |Indeterminate| for an examination that was performed but yielded no usable statement — an inhibited PCR, insufficient material (workbook, sheet Culture General, "Result missing reason")."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from valueset http://hl7.org/fhir/ValueSet/data-absent-reason
* $sct#82334004 "Indeterminate"

// ----------------------------------------------------------------------------

ValueSet: TargetedDetectionTechniqueEuVs
Id: micro-targetedDetectionTechnique-eu-lab
Title: "Targeted Detection Techniques"
Description: """The technique of a targeted detection (workbook, sheets Direct Identification and Molecular techniques, "Method"), plus the microscopy techniques for the microscopic detection of an object named in the code. The white paper prefers real-time PCR, LAMP and TMA over the generic 'PCR'; SNOMED CT concepts for NEAR and for non-probe amplification have been requested by the workgroup."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Nucleic acid amplification
* $sct#70601000052104 "Real-time polymerase chain reaction technique"
* $sct#702675006 "Probe with target amplification technique"
* $sct#1259932009 "Loop-mediated isothermal amplification technique"
* $sct#1304048000 "Transcription mediated amplification technique"
* $sct#1303992007 "Digital polymerase chain reaction technique"
* $sct#1303998006 "Multiplex polymerase chain reaction technique"
* $sct#258066000 "Polymerase chain reaction technique" // generic, discouraged by the white paper
// Sequencing
* $sct#1304162005 "Nucleic acid sequencing technique"
// Immunological
* $sct#726449005 "Immunoassay technique"
* $sct#1156860005 "Rapid antigen detection immunoassay technique"
* $sct#703444002 "Immunofluorescence technique"
* $sct#708104000 "Agglutination technique"
// Microscopy, for the targeted microscopic detection
* include codes from valueset MicroscopyTechniqueEuVs
