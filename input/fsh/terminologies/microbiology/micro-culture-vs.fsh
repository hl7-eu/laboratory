// ============================================================================
// General culture — value sets
// Source: white paper chapter "Culture and Detection by Culture"; workbook
// sheet "Culture General". The code follows the white paper's principle 1
// (distinct code sets for culture and identification), not the workbook's
// preference for 41852-5 (question to the workgroup, SEM-22).
// ============================================================================

ValueSet: CultureGeneralCodeEuVs
Id: micro-cultureGeneralCode-eu-lab
Title: "General Culture Codes"
Description: """The LOINC code of the general culture: 11475-1 |Microorganism identified in Specimen by Culture|. 41852-5 |Microorganism or agent identified in Specimen|, which the workbook prefers, stays the code of the identification, so that culture and identification keep distinct codes (white paper, chapter Culture, principle 1). Codes that pre-coordinate the specimen are not included."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $loinc#11475-1 "Microorganism identified in Specimen by Culture"

// ----------------------------------------------------------------------------

ValueSet: CultureGrowthEuVs
Id: micro-cultureGrowth-eu-lab
Title: "Culture Growth"
Description: """The result of a general culture: whether anything grew (workbook, sheet Culture General, "Result"). Organism growth may have clinical meaning before the organism is identified. The organism itself is the result of the identification that follows."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $sct#264868006 "No growth"
* $sct#365698005 "Organism growth"

// ----------------------------------------------------------------------------

ValueSet: CultureGeneralTechniqueEuVs
Id: micro-cultureGeneralTechnique-eu-lab
Title: "General Culture Techniques"
Description: """The culture technique of a general culture (workbook, sheet Culture General, "Method"): aerobic or anaerobic culture, or 702658000 |Microbial culture technique| where the condition is not known or not meaningful. The method is required, so the general concept is needed for that case, although the workbook calls it unnecessary next to the code. Media, temperature and incubation time are not coded."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $sct#702658000 "Microbial culture" // condition not known or not meaningful
* $sct#703750006 "Aerobic culture"
* $sct#703751005 "Anaerobic culture"
