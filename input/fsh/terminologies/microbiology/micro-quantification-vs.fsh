// ============================================================================
// Quantification — value sets for the pathogen load and the Ct value
// Source: white paper chapter "Molecular Microbiology Genetic Testing"
// (categories, principles for coding, Ct value); workbook sheet "molecular
// techniques new", block "Quantification Procedure". Interim position of this
// guide: SEM-30.
// ============================================================================

// ------------------------------------------------------------ pathogen load
ValueSet: PathogenLoadCodeEuVs
Id: micro-pathogenLoadCode-eu-lab
Title: "Pathogen Load Codes"
Description: """LOINC codes for the load of a pathogen: class MICRO, DNA or RNA in the component, property ACnc (reported in IU/mL) or NCnc (reported in copies/mL), active (white paper, category 2; workbook, sheet molecular techniques new, block Quantification Procedure). Log-transformed results are not covered in this edition (white paper); Ct values have a profile of their own. Codes with a fixed material are accepted, as the white paper finds pre-coordination practical for viral loads. The preferred codes are in [Pathogen Load Codes, preferred](ValueSet-micro-pathogenLoadCodePreferred-eu-lab.html)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where CLASS = "LP7819-8" and COMPONENT regex ".*(DNA|RNA).*" and PROPERTY = "LP6773-8" and STATUS = "ACTIVE" // ACnc
* include codes from system $loinc where CLASS = "LP7819-8" and COMPONENT regex ".*(DNA|RNA).*" and PROPERTY = "LP6836-3" and STATUS = "ACTIVE" // NCnc

ValueSet: PathogenLoadCodePreferredEuVs
Id: micro-pathogenLoadCodePreferred-eu-lab
Title: "Pathogen Load Codes, preferred"
Description: """The preferred codes for the load of a pathogen: those that leave the specimen to Specimen.type, with system XXX or {Specimen}. The target are codes without method or with {Molgen}, which also leave the technique to Observation.method; LOINC 2.83 has two of them. Until more exist, the codes with system XXX and a pre-coordinated method, mostly NAA with probe detection, are preferred as well (SEM-30)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where CLASS = "LP7819-8" and COMPONENT regex ".*(DNA|RNA).*" and PROPERTY = "LP6773-8" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE" // ACnc, XXX
* include codes from system $loinc where CLASS = "LP7819-8" and COMPONENT regex ".*(DNA|RNA).*" and PROPERTY = "LP6836-3" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE" // NCnc, XXX
* include codes from system $loinc where CLASS = "LP7819-8" and COMPONENT regex ".*(DNA|RNA).*" and PROPERTY = "LP6773-8" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE" // ACnc, {Specimen}: no codes yet
* include codes from system $loinc where CLASS = "LP7819-8" and COMPONENT regex ".*(DNA|RNA).*" and PROPERTY = "LP6836-3" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE" // NCnc, {Specimen}: no codes yet

ValueSet: PathogenLoadUnitEuVs
Id: micro-pathogenLoadUnit-eu-lab
Title: "Pathogen Load Units"
Description: """UCUM units of a pathogen load (white paper, category 2): [IU]/mL for a load against an international standard (property ACnc), {copies}/mL for copies (property NCnc); /mL is the same unit without the annotation."""
* insert MicrobiologyDraftStatusEu
* ^experimental = false
* $ucum#"[IU]/mL" "[IU]/mL"
* $ucum#"{copies}/mL" "{copies}/mL"
* $ucum#/mL "/mL"

ValueSet: PathogenLoadTechniqueEuVs
Id: micro-pathogenLoadTechnique-eu-lab
Title: "Pathogen Load Techniques"
Description: """The technique of a pathogen load (SEM-30): real-time PCR, which quantifies against a calibrated standard curve, digital PCR, which quantifies absolutely, and transcription-mediated amplification, on which widely used quantitative assays run, although the white paper counts isothermal techniques as qualitative only. 1156878000 |Molecular nucleic acid amplification technique| where the technique is not known (SEM-23)."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $sct#70601000052104 "Real-time polymerase chain reaction technique"
* $sct#1303992007 "Digital polymerase chain reaction technique"
* $sct#1304048000 "Transcription mediated amplification technique"
* $sct#1156878000 "Molecular nucleic acid amplification technique"

// ----------------------------------------------------------------- Ct value
ValueSet: CtValueCodeEuVs
Id: micro-ctValueCode-eu-lab
Title: "Ct Value Codes"
Description: """LOINC codes for the Ct value of a real-time PCR: property ThreshNum, class MICRO, active (white paper, chapter Molecular Genetic Testing, "CT Value"). The preferred codes are in [Ct Value Codes, preferred](ValueSet-micro-ctValueCodePreferred-eu-lab.html)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where PROPERTY = "LP188772-0" and CLASS = "LP7819-8" and STATUS = "ACTIVE"

ValueSet: CtValueCodePreferredEuVs
Id: micro-ctValueCodePreferred-eu-lab
Title: "Ct Value Codes, preferred"
Description: """The preferred codes for the Ct value: those with system XXX, which leave the specimen to Specimen.type (white paper: "cycle threshold", XXX, MICRO). Their method, NAA with probe detection, follows from the Ct value itself, which only a probe-based real-time PCR yields."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where PROPERTY = "LP188772-0" and CLASS = "LP7819-8" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
