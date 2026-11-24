// ============================================================================
// Resistance — value sets
// Source: workbook sheets "Phenotypic resistence" and "Molecular resistance";
// white paper chapter "Phenotypic Susceptibility and Molecular Resistance
// Testing" (molecular resistance testing, resistance mechanism); minutes of the
// Lab Semantic WG of 2026-11-06. Interim positions of this guide: SEM-19
// (rapid immunoassay codes), SEM-28 (codes of molecular resistance), SEM-29
// (data model and methods).
//
// The workbook's "component:resistance" is a text search. As a FHIR filter it
// is a regular expression on the component; it also matches codes outside
// microbiology (activated protein C resistance), so each include is restricted
// to the class MICRO or ABXBACT, between which LOINC splits these codes.
// ============================================================================

ValueSet: ResistanceCodeEuVs
Id: micro-resistanceCode-eu-lab
Title: "Resistance Codes"
Description: """LOINC codes for the detection of a resistance mechanism or gene: property PrThr, "resistance" in the component, class MICRO or ABXBACT, active (workbook, sheet Molecular resistance, D4), and the codes of the workbook sheet Phenotypic resistence, which name the enzyme or mechanism without the word: extended-spectrum beta-lactamase, the carbapenemases, AmpC. 92246-8 and 108153-8 name no target and are excluded (workbook, D7). PrId codes such as 63368-5 |Carbapenem resistance genes [Identifier] by NAA with probe detection| are not admitted (SEM-28). The preferred codes are in [Resistance Codes, preferred](ValueSet-micro-resistanceCodePreferred-eu-lab.html)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where COMPONENT regex ".*[Rr]esistance.*" and PROPERTY = "LP217195-9" and CLASS = "LP7819-8" and STATUS = "ACTIVE" // MICRO
* include codes from system $loinc where COMPONENT regex ".*[Rr]esistance.*" and PROPERTY = "LP217195-9" and CLASS = "LP7755-4" and STATUS = "ACTIVE" // ABXBACT
// Workbook, sheet Phenotypic resistence; the minutes of 2026-11-06
* $loinc#104864-4 "Beta lactamase.extended spectrum [Presence]"
* $loinc#86930-5 "Carbapenemase [Presence] in Isolate"
* $loinc#101673-2 "KPC carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101675-7 "IMP Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101677-3 "NDM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101676-5 "VIM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101674-0 "OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#105037-6 "OXA-23 carbapenemase [Presence] by Rapid immunoassay"
* $loinc#105038-4 "OXA-40 and OXA-58 carbapenemase [Presence] by Rapid immunoassay"
// AmpC as a phenotypic test; a method-neutral code is requested (#195)
* $loinc#85046-1 "AmpC beta-lactamase by cefoTEtan to cefoTEtan+cloxacillin inhibitory concentration ratio [Presence] by ARD gradient strip"
// No target named (workbook, D7)
* exclude $loinc#92246-8 "Microorganism resistance mutation detected [Presence] by Molecular method"
* exclude $loinc#108153-8 "Genetic determinants of antimicrobial resistance [Presence] in Specimen by NAA with non-probe detection"

ValueSet: ResistanceCodePreferredEuVs
Id: micro-resistanceCodePreferred-eu-lab
Title: "Resistance Codes, preferred"
Description: """The preferred codes for the detection of a resistance mechanism or gene: those that fix neither material nor technique. For genes the target, as in the direct identification, is the pattern *[gene] [Presence] in {Specimen} by {Molgen}*, which Stan names for new codes (minutes of 2026-11-06); the missing codes are requested (#209). As an interim, the codes with system Isolate/Specimen and method Molgen are preferred as well; they are dropped once the {Specimen} codes exist (SEM-28). For enzymes and mechanisms, the method-neutral codes for extended-spectrum beta-lactamase and carbapenemase, and, as an interim until method-neutral codes exist (#197), the carbapenemase codes by rapid immunoassay (SEM-19)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Target: {Specimen} by {Molgen}
* include codes from system $loinc where COMPONENT regex ".*[Rr]esistance.*" and PROPERTY = "LP217195-9" and CLASS = "LP7819-8" and SYSTEM = "LP451871-0" and METHOD_TYP = "LP452305-8" and STATUS = "ACTIVE"
* include codes from system $loinc where COMPONENT regex ".*[Rr]esistance.*" and PROPERTY = "LP217195-9" and CLASS = "LP7755-4" and SYSTEM = "LP451871-0" and METHOD_TYP = "LP452305-8" and STATUS = "ACTIVE"
// Interim: Isolate/Specimen by Molgen, dropped once the {Specimen} codes exist (#209)
* include codes from system $loinc where COMPONENT regex ".*[Rr]esistance.*" and PROPERTY = "LP217195-9" and CLASS = "LP7819-8" and SYSTEM = "LP266970-5" and METHOD_TYP = "LP6404-0" and STATUS = "ACTIVE"
* include codes from system $loinc where COMPONENT regex ".*[Rr]esistance.*" and PROPERTY = "LP217195-9" and CLASS = "LP7755-4" and SYSTEM = "LP266970-5" and METHOD_TYP = "LP6404-0" and STATUS = "ACTIVE"
// Enzymes and mechanisms, method-neutral
* $loinc#104864-4 "Beta lactamase.extended spectrum [Presence]"
* $loinc#86930-5 "Carbapenemase [Presence] in Isolate"
// Interim: rapid immunoassay, until method-neutral codes exist (#197)
* $loinc#101673-2 "KPC carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101675-7 "IMP Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101677-3 "NDM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101676-5 "VIM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101674-0 "OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#105037-6 "OXA-23 carbapenemase [Presence] by Rapid immunoassay"
* $loinc#105038-4 "OXA-40 and OXA-58 carbapenemase [Presence] by Rapid immunoassay"
* exclude $loinc#92246-8 "Microorganism resistance mutation detected [Presence] by Molecular method"

ValueSet: ResistanceTechniqueEuVs
Id: micro-resistanceTechnique-eu-lab
Title: "Resistance Techniques"
Description: """The technique of a resistance test (interim position, SEM-29): the techniques of the targeted detection (SEM-07) for genes and proteins, nucleic acid sequencing, the techniques of susceptibility testing (SEM-25) for phenotypic tests such as the ESBL confirmation, the cefoxitin screen or the D-test, the biochemical tests under 61836004 |Beta lactamase susceptibility test| (SEM-24), and the modified carbapenem inactivation method (mCIM), which EUCAST and CLSI recommend for the detection of carbapenemases. Generic and multiplex PCR are not included (SEM-07). Where the technique is not known, the most general concept applies: 1156878000 |Molecular nucleic acid amplification technique|, 726449005 |Immunoassay technique| or 61836004; otherwise the data-absent-reason extension (SEM-23)."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from valueset TargetedDetectionTechniqueEuVs
* $sct#1304162005 "Nucleic acid sequencing technique"
* include codes from system $sct where concept is-a #708073008 // MIC
* $sct#703442003 "Gradient strip susceptibility test"
* $sct#1303975003 "Disk diffusion technique"
* include codes from system $sct where concept is-a #61836004 // biochemical tests, procedures (SEM-24)
* $sct#782518009 "Modified carbapenem inactivation technique"
