// ============================================================================
// Targeted detection — value sets
// Source: Lab Semantic WG minutes of 2026-11-06 (direct identification);
// white paper "Data model for specific identification" and chapter
// "Molecular Genetic Testing", category 1; workbook sheets "Direct
// Identification" and "molecular techniques new".
// ============================================================================

ValueSet: TargetedDetectionCodePreferredEuVs
Id: micro-targetedDetectionCodePreferred-eu-lab
Title: "Targeted Detection Codes, preferred"
Description: """The preferred LOINC codes of a targeted detection: class MICRO, property PrThr, active, with the target in the component — an organism, its DNA or RNA, or an antigen.

The workgroup's target definition is system {Specimen} with one of the methods {Molgen}, IF, IA or Aggl, e.g. 105875-9 |Bordetella pertussis DNA [Presence] in Specimen by Molgen|. LOINC so far has {Specimen} codes for {Molgen} only. Until it has them for the immunological methods, the value set also contains the codes with system XXX and method IF, IA or Aggl, the codes with system XXX and no method, e.g. 105066-5 |SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Specimen|, and 35492-8, which LOINC files under class ABXBACT."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Target definition (minutes 2026-11-06): PrThr, system {Specimen}
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP451871-0" and METHOD_TYP = "LP452305-8" and STATUS = "ACTIVE" // {Molgen}
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP451871-0" and METHOD_TYP = "LP6323-2" and STATUS = "ACTIVE"   // IF, no codes yet
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP451871-0" and METHOD_TYP = "LP217197-5" and STATUS = "ACTIVE" // IA, no codes yet
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP451871-0" and METHOD_TYP = "LP6106-1" and STATUS = "ACTIVE"   // Aggl, no codes yet
// Interim: PrThr, system XXX. These includes are dropped once LOINC provides
// the {Specimen} codes for IF, IA and Aggl.
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP7735-6" and METHOD_TYP = "LP6323-2" and STATUS = "ACTIVE"   // IF
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP7735-6" and METHOD_TYP = "LP217197-5" and STATUS = "ACTIVE" // IA
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP7735-6" and METHOD_TYP = "LP6106-1" and STATUS = "ACTIVE"   // Aggl
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and SYSTEM = "LP7735-6" and METHOD_TYP exists false and STATUS = "ACTIVE" // no method
// Wrongly classified as ABXBACT; Regenstrief has been asked to correct the class
* $loinc#35492-8 "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection"

// ----------------------------------------------------------------------------

ValueSet: TargetedDetectionCodeEuVs
Id: micro-targetedDetectionCode-eu-lab
Title: "Targeted Detection Codes"
Description: """All LOINC codes admitted for a targeted detection: the [preferred codes](ValueSet-micro-targetedDetectionCodePreferred-eu-lab.html), plus the codes of class MICRO, property PrThr, active, that pre-coordinate the specimen or the method, with any system and with one of the molecular methods (Probe.amp.tar, Non-probe.amp.tar, Probe.amp, Probe.amp.sig, Molgen, {Molgen}), one of the immunological methods (IF, IA, Aggl) or no method. Pre-coordinated codes serve laboratories that cannot post-coordinate specimen or method (minutes 2026-11-06: "Allow for pre and post coordination. Prefer post-coordination").

Culture codes and rapid immunoassay codes are not included: a targeted culture is reported with the culture, and a rapid antigen test uses the method-neutral antigen code with the rapid technique in Observation.method."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from valueset TargetedDetectionCodePreferredEuVs
// Molecular methods
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6464-4" and STATUS = "ACTIVE"   // Probe.amp.tar
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP208998-7" and STATUS = "ACTIVE" // Non-probe.amp.tar
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6462-8" and STATUS = "ACTIVE"   // Probe.amp
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6463-6" and STATUS = "ACTIVE"   // Probe.amp.sig
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6404-0" and STATUS = "ACTIVE"   // Molgen
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP452305-8" and STATUS = "ACTIVE" // {Molgen}
// Immunological methods
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6323-2" and STATUS = "ACTIVE"   // IF
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP217197-5" and STATUS = "ACTIVE" // IA
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6106-1" and STATUS = "ACTIVE"   // Aggl
// No method, any system
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP exists false and STATUS = "ACTIVE"

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

ValueSet: MicrobiologyDataAbsentReasonEuVs
Id: micro-dataAbsentReason-eu-lab
Title: "Microbiology Data Absent Reasons"
Description: """Why a microbiological observation has no result: the FHIR data-absent-reason codes, plus 82334004 |Indeterminate| for an examination that was performed but yielded no usable statement — an inhibited PCR, insufficient material (workbook, sheet Culture General, "Result missing reason")."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from valueset http://hl7.org/fhir/ValueSet/data-absent-reason
* $sct#82334004 "Indeterminate"

// ----------------------------------------------------------------------------

ValueSet: TargetedDetectionTechniqueEuVs
Id: micro-targetedDetectionTechnique-eu-lab
Title: "Targeted Detection Techniques"
Description: """The technique of a targeted detection: the nucleic acid amplification techniques the white paper names (chapter Molecular Genetic Testing, category 1), with 1156878000 |Molecular nucleic acid amplification technique| as the fallback where the technique is not known, and the immunological techniques (workbook, sheets Direct Identification and molecular techniques new). The generic 258066000 |Polymerase chain reaction technique| is not included; SNOMED CT holds it beside, not below, 1156878000, so the value set is enumerated. Multiplex is a format, not a technique: a panel is a grouping observation with the panel code and hasMember. A SNOMED CT concept for NEAR has been requested and is added once it exists."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Nucleic acid amplification
* $sct#70601000052104 "Real-time polymerase chain reaction technique"
* $sct#1303992007 "Digital polymerase chain reaction technique"
* $sct#1259932009 "Loop-mediated isothermal amplification technique"
* $sct#1304048000 "Transcription mediated amplification technique"
* $sct#1156878000 "Molecular nucleic acid amplification technique" // fallback
// Immunological
* $sct#726449005 "Immunoassay technique"
* $sct#708099001 "Rapid immunoassay"
* $sct#1156860005 "Rapid antigen detection immunoassay technique"
* $sct#703444002 "Immunofluorescence technique"
* $sct#708104000 "Agglutination technique"
