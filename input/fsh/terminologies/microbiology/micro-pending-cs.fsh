// ============================================================================
// Microbiology codes pending in LOINC
// Interim position of this guide, SEM-31 (#212): the code of a profile is bound
// extensibly to its preferred codes, with all admitted codes as an additional
// required binding. A test that LOINC has no code for yet would then have no conformant
// code at all; this code system bridges such gaps, one concept per requested
// code. The concepts are admitted through the value set of all admitted codes
// of the profile concerned, not as preferred codes.
// ============================================================================

CodeSystem: MicrobiologyPendingCodeEuCs
Id: micro-pendingCode-eu-lab
Title: "Microbiology Codes Pending in LOINC"
Description: """Codes for microbiology tests that LOINC has no code for yet and that are requested from Regenstrief. Interim code system of this guide (SEM-31): each concept names its code request. Once LOINC publishes the code, the concept points to the LOINC code and is removed in a later version. The codes are admitted through the value set of all admitted codes of the profile concerned, which is bound as required, not as preferred codes."""
* insert MicrobiologyDraftStatusEu
* ^caseSensitive = true
* ^content = #complete
* #pbp2a "PBP2a protein [Presence] in Isolate" "Detection of the penicillin-binding protein 2a, which mediates methicillin resistance in staphylococci, in an isolate, independent of the technique (e.g. latex agglutination or immunochromatography); the technique is given in Observation.method. A method-neutral LOINC code is requested (code request #195)."
* #cefoxitin-resistance "Cefoxitin resistance [Presence]" "Resistance to cefoxitin as the marker of methicillin resistance in staphylococci (cefoxitin screen), stated as a mechanism, independent of the technique (disk diffusion or broth microdilution); the technique is given in Observation.method. The susceptibility to cefoxitin itself is reported with the susceptibility profile. A method-neutral LOINC code is requested (code request #195)."
* #inducible-clindamycin-resistance "Inducible clindamycin resistance [Presence]" "Resistance to clindamycin induced by erythromycin (inducible MLSB phenotype), detected e.g. by the D-test, stated as a mechanism, independent of the technique; the technique is given in Observation.method. The susceptibility to clindamycin itself is reported with the susceptibility profile, e.g. 42720-3 |Clindamycin [Susceptibility] by Agar diffusion.erythromycin induced resistance|. A method-neutral LOINC code is requested (code request #195)."
