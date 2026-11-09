// ============================================================================
// Culture — value sets
// Source: white paper chapter "Culture and Detection by Culture"; workbook
// sheets "Culture General" and "Culture Specific"; minutes of the Lab Semantic
// WG of 2026-11-06. The code of the general culture follows the white paper's
// principle 1 (distinct code sets for culture and identification), not the
// workbook's preference for 41852-5 (question to the workgroup, SEM-22).
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

// ------------------------------------------------------------ specific culture

ValueSet: CultureSpecificCodeEuVs
Id: micro-cultureSpecificCode-eu-lab
Title: "Specific Culture Codes"
Description: """LOINC codes for a culture aimed at a target named in the code: method *Organism specific culture*, system XXX, {Specimen} or Isolate, property PrThr or PrId, active (minutes of 2026-11-06 and workbook, sheet Culture Specific). PrThr codes ask whether the target is present, e.g. 13317-3 |Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture|; PrId codes ask what was found, e.g. 9782-4 |Adenovirus sp identified in Specimen by Organism specific culture|. Codes with other properties, such as colony counts, are not included, because the result of the profile is coded. The numbered *Mycobacterium sp # 2* to *# 5* codes are excluded, as in the workbook's filter: each organism found is an observation of its own with the same code. LOINC has no codes with system {Specimen} for culture yet; should it create them, they are accepted, not preferred. Codes for missing targets are to be requested from Regenstrief. The preferred codes are in [Specific Culture Codes, preferred](ValueSet-micro-cultureSpecificCodePreferred-eu-lab.html)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP7735-6" and PROPERTY = "LP217195-9" and STATUS = "ACTIVE" // XXX, PrThr
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP7735-6" and PROPERTY = "LP6850-4" and STATUS = "ACTIVE" // XXX, PrId
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP451871-0" and PROPERTY = "LP217195-9" and STATUS = "ACTIVE" // {Specimen}, PrThr: no codes yet
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP451871-0" and PROPERTY = "LP6850-4" and STATUS = "ACTIVE" // {Specimen}, PrId: no codes yet
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP7370-2" and PROPERTY = "LP217195-9" and STATUS = "ACTIVE" // Isolate, PrThr
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP7370-2" and PROPERTY = "LP6850-4" and STATUS = "ACTIVE" // Isolate, PrId
* exclude $loinc#44851-4 "Mycobacterium sp # 2 identified in Specimen by Organism specific culture"
* exclude $loinc#44852-2 "Mycobacterium sp # 3 identified in Specimen by Organism specific culture"
* exclude $loinc#44854-8 "Mycobacterium sp # 4 identified in Specimen by Organism specific culture"
* exclude $loinc#44855-5 "Mycobacterium sp # 5 identified in Specimen by Organism specific culture"

// ----------------------------------------------------------------------------

ValueSet: CultureSpecificCodePreferredEuVs
Id: micro-cultureSpecificCodePreferred-eu-lab
Title: "Specific Culture Codes, preferred"
Description: """The preferred codes of the specific culture: the codes of [Specific Culture Codes](ValueSet-micro-cultureSpecificCode-eu-lab.html) with system XXX, which leave the specimen to Specimen.type (minutes of 2026-11-06: the specimen is post-coordinated with the XXX codes). Codes with system Isolate are accepted; the isolate is then also given as Specimen.type 119303007 |Microbial isolate|. Whether the workgroup wants LOINC codes with system {Specimen} for culture is open (SEM-21); LOINC has none."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP7735-6" and PROPERTY = "LP217195-9" and STATUS = "ACTIVE" // XXX, PrThr
* include codes from system $loinc where METHOD_TYP = "LP6429-7" and SYSTEM = "LP7735-6" and PROPERTY = "LP6850-4" and STATUS = "ACTIVE" // XXX, PrId
* exclude $loinc#44851-4 "Mycobacterium sp # 2 identified in Specimen by Organism specific culture"
* exclude $loinc#44852-2 "Mycobacterium sp # 3 identified in Specimen by Organism specific culture"
* exclude $loinc#44854-8 "Mycobacterium sp # 4 identified in Specimen by Organism specific culture"
* exclude $loinc#44855-5 "Mycobacterium sp # 5 identified in Specimen by Organism specific culture"

// ----------------------------------------------------------------------------

ValueSet: CultureSpecificTechniqueEuVs
Id: micro-cultureSpecificTechnique-eu-lab
Title: "Specific Culture Techniques"
Description: """The technique of a specific culture: 703752003 |Organism specific culture technique| (workbook, sheet Culture Specific, "Method")."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $sct#703752003 "Organism specific culture"
