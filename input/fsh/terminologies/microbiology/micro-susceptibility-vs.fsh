// ============================================================================
// Phenotypic susceptibility — code system and value sets
// Source: workbook sheet "Phenotypic susceptibility"; white paper chapter
// "Phenotypic Susceptibility and Molecular Resistance Testing"; minutes of the
// Lab Semantic WG of 2026-11-06 (codes). Interim positions of this guide:
// SEM-18 (interpretation, coded result, interpretation standard), SEM-25
// (methods), SEM-26 (quantitative result).
// ============================================================================

// ------------------------------------------------------------------- codes
ValueSet: SusceptibilityCodeEuVs
Id: micro-susceptibilityCode-eu-lab
Title: "Susceptibility Codes"
Description: """LOINC codes for the susceptibility of an isolate to one antimicrobial: property Susc, class ABXBACT, active (workbook, sheet Phenotypic susceptibility, D4). 106843-6 and 103673-0 belong to them as well; their LOINC class is to be corrected (code request #192). The codes with the method Genotype are excluded: they infer the susceptibility from resistance mutations and belong to molecular resistance testing (interim position, SEM-27). The codes without a method, which leave the method to Observation.method, are preferred: [Susceptibility Codes, preferred](ValueSet-micro-susceptibilityCodePreferred-eu-lab.html)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where CLASS = "LP7755-4" and PROPERTY = "LP6870-2" and STATUS = "ACTIVE" // ABXBACT, Susc
* $loinc#106843-6 "Cefotaxime+Cloxacillin [Susceptibility] in Isolate by Disk diffusion (KB)" // class MICRO, to be corrected (#192)
* $loinc#103673-0 "Isavuconazole [Susceptibility] in Isolate by Gradient strip" // class DRUG/TOX, to be corrected (#192)
* exclude codes from system $loinc where METHOD_TYP = "LP28723-2" // Genotype: molecular resistance testing (SEM-27)

ValueSet: SusceptibilityCodePreferredEuVs
Id: micro-susceptibilityCodePreferred-eu-lab
Title: "Susceptibility Codes, preferred"
Description: """The preferred codes for the susceptibility of an isolate to one antimicrobial: property Susc, class ABXBACT, without a method, active (workbook, sheet Phenotypic susceptibility, D3; minutes of 2026-11-06). The method is given in Observation.method, which makes it easy to query all susceptibility results, e.g. 18943-1 |Meropenem [Susceptibility]| with 708073008 |Minimum inhibitory concentration susceptibility test technique| instead of 6652-2 |Meropenem [Susceptibility] by Minimum inhibitory concentration (MIC)|."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where CLASS = "LP7755-4" and PROPERTY = "LP6870-2" and METHOD_TYP exists false and STATUS = "ACTIVE" // ABXBACT, Susc, no method

ValueSet: SusceptibilityPanelCodeEuVs
Id: micro-susceptibilityPanelCode-eu-lab
Title: "Susceptibility Panel Codes"
Description: """The LOINC code of an antibiogram, the panel that groups the susceptibility results of one isolate: 29576-6 |Bacterial susceptibility panel| (white paper, chapter Phenotypic Susceptibility, "Data Model Conventions")."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $loinc#29576-6 "Bacterial susceptibility panel"

// ----------------------------------------------------------------- methods
ValueSet: SusceptibilityTechniqueEuVs
Id: micro-susceptibilityTechnique-eu-lab
Title: "Susceptibility Techniques"
Description: """The method of a susceptibility test (interim position, SEM-25). Techniques for the three main LOINC methods, so that a methodless code with Observation.method means the same as the code that pre-coordinates the method: 708073008 |Minimum inhibitory concentration susceptibility test technique| and its descendants for every MIC by dilution, manual or automated (in the Dutch edition with its children for manual and automated microdilution, SEM-20), 703442003 for the gradient strip and 1303975003 for disk diffusion. Where no technique exists, procedures from the hierarchy under 14788002 |Antimicrobial susceptibility test| (SEM-24): the minimum bactericidal concentration tests, the serum bactericidal titer test and tests for slow-growing mycobacteria. 263696007 |Broth dilution| and 258087005 |Agar dilution| are not included, because a dilution yields an MIC. An unknown method is given with the data-absent-reason extension (SEM-23)."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $sct where concept is-a #708073008 // MIC, by dilution, manual or automated
* $sct#703442003 "Gradient strip susceptibility test"
* $sct#1303975003 "Disk diffusion technique"
// procedures where no technique exists (SEM-24, SEM-25)
* $sct#1035002 "Minimum bactericidal concentration test, microdilution method"
* $sct#10672003 "Minimum bactericidal concentration test, macrodilution method"
* $sct#104235002 "Serum bactericidal titer test"
* $sct#84787003 "Modified proportion agar dilution test for slow growing Mycobacteria"
* $sct#85748009 "BACTEC susceptibility test for slow growing Mycobacteria"

// --------------------------------------------- result and interpretation
ValueSet: SusceptibilityInterpretationEuVs
Id: micro-susceptibilityInterpretation-eu-lab
Title: "Susceptibility Categories"
Description: """The susceptibility category, for Observation.interpretation and for a coded result in Observation.value[x], which repeats the interpretation (interim position, SEM-18; workbook, sheet Phenotypic susceptibility, D20 and D24–E35). The HL7 v3 interpretation codes, to which the FHIR core specification binds Observation.interpretation extensibly; v3 I only for the CLSI category *intermediate*. The EUCAST category I *susceptible, increased exposure* has no v3 code; it is coded with 1306583007."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $v3-ObservationInterpretation#S "Susceptible"
* $v3-ObservationInterpretation#I "Intermediate" // CLSI intermediate only
* $v3-ObservationInterpretation#R "Resistant"
* $v3-ObservationInterpretation#SDD "Susceptible-dose dependent"
* $v3-ObservationInterpretation#NS "Non-susceptible"
* $v3-ObservationInterpretation#IE "Insufficient evidence"
* $sct#1306583007 "I (Susceptible, increased exposure) EUCAST (European Committee on Antimicrobial Susceptibility Testing) category 2019"

ValueSet: SusceptibilityUnitEuVs
Id: micro-susceptibilityUnit-eu-lab
Title: "Susceptibility Units"
Description: """UCUM units of a quantitative susceptibility result (interim position, SEM-26; white paper, chapter Phenotypic Susceptibility): mg/L for an MIC as EUCAST states it, ug/mL as CLSI states it (the same quantity), mm for a zone diameter, and the further units of the white paper."""
* insert MicrobiologyDraftStatusEu
* ^experimental = false
* $ucum#mg/L "mg/L"
* $ucum#ug/mL "ug/mL"
* $ucum#mm "mm"
* $ucum#"[arb'U]/mL" "[arb'U]/mL"
* $ucum#1/mL "1/mL"

// ------------------------------------------------- interpretation standard
CodeSystem: SusceptibilityStandardEuCs
Id: micro-susceptibilityStandard-eu-lab
Title: "Susceptibility Interpretation Standards"
Description: """The standards against which a susceptibility result is interpreted (white paper, chapter Phenotypic Susceptibility, "Results and Interpretation"). Interim code system of this guide: SNOMED CT concepts for the standards are requested (code request #200); once they exist, they replace this code system."""
* insert MicrobiologyDraftStatusEu
* ^caseSensitive = true
* ^content = #complete
* #EUCAST "EUCAST" "The clinical breakpoints of the European Committee on Antimicrobial Susceptibility Testing."
* #CLSI "CLSI" "The interpretive criteria of the Clinical and Laboratory Standards Institute."
* #other "Other" "Another standard, e.g. a national one; it is named in the text of the CodeableConcept."

ValueSet: SusceptibilityStandardEuVs
Id: micro-susceptibilityStandard-eu-lab
Title: "Susceptibility Interpretation Standards"
Description: """The standard against which a susceptibility result is interpreted (interim position, SEM-18). Until SNOMED CT concepts for the standards exist (code request #200), the codes of this guide; a national standard is given as `other` with a text, or with its own code."""
* insert MicrobiologyDraftStatusEu
* include codes from system SusceptibilityStandardEuCs
