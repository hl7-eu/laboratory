// ============================================================================
// Microscopy — value sets
// Source: white paper chapter "Microscopy"; workbook sheet "Microscopy"
// (Profile 1 = general microscopy, Profile 2 = specific microscopy).
// ============================================================================

// ------------------------------------------------- general microscopy (Profile 1)

ValueSet: MicroscopyObservationCodeEuVs
Id: micro-microscopyCode-eu-lab
Title: "Microscopic Observation Codes"
Description: """The LOINC code of the general microscopy, whose result is the finding seen: 105059-0 |Microscopic observation [Identifier] in Specimen|. It leaves the stain to Specimen.processing and the specimen to Specimen.type (workbook, sheet Microscopy, Profile 1). Codes pre-coordinating the stain or the specimen are not part of the value set."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
* $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"

// ----------------------------------------------------------------------------

ValueSet: MicroscopyFindingEuVs
Id: micro-microscopyFinding-eu-lab
Title: "Microscopic Findings"
Description: """SNOMED CT concepts for what is seen in a general microscopy: the morphological findings the white paper lists, such as *Gram-positive cocci in clusters*, leukocytes, the organisms, and the negative result. Morphological groups that SNOMED CT holds in the organism hierarchy, such as *Gram-negative bacillus*, *Yeast* or *Acid-fast bacillus*, come with the organisms. Further findings remain possible through the extensible binding."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Morphological findings named in the white paper
* $sct#723529006 "Extracellular Gram-negative diplococcus"
* $sct#404509004 "Large gram-negative coccobacilli"
* $sct#404510009 "Large gram-negative rods"
* $sct#427824002 "Small Gram-negative rods"
* $sct#61609004 "Gram-positive cocci in chains"
* $sct#70003006 "Gram-positive cocci in clusters"
* $sct#734444009 "Gram-positive cocci in chains, clusters, and pairs"
* $sct#734447002 "Intracellular Gram-negative diplococcus"
// Host cells, as in white paper example 2 (Gram-negative rods and leukocytes
// on the same slide)
* $sct#52501007 "Leukocyte"
// Organisms, including the morphological groups of the organism hierarchy
* include codes from valueset MicroorganismEuVs
// Nothing seen
* $sct#260415000 "Not detected"

// ------------------------------------------------ specific microscopy (Profile 2)

ValueSet: MicroscopySpecificCodeEuVs
Id: micro-microscopySpecificCode-eu-lab
Title: "Specific Microscopy Codes"
Description: """LOINC codes for a microscopic examination aimed at a target named in the code, e.g. 32206-5 |Plasmodium sp identified in Blood by Light microscopy| or 51587-4 |Plasmodium sp [Presence] in Blood by Light microscopy|: class MICRO, property PrId or PrThr, method microscopy, light microscopy or electron microscopy, active (workbook, sheet Microscopy, Profile 2). The value set contains all of them, including the codes that pre-coordinate the specimen. The codes with the component *Microscopic observation* name no target; they answer the open question of the general microscopy and are excluded. The preferred codes are in [Specific Microscopy Codes, preferred](ValueSet-micro-microscopySpecificCodePreferred-eu-lab.html)."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
// PrId
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6393-5" and STATUS = "ACTIVE" // Microscopy
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6395-0" and STATUS = "ACTIVE" // Microscopy.electron
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6398-4" and STATUS = "ACTIVE" // Microscopy.light
// PrThr
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6393-5" and STATUS = "ACTIVE" // Microscopy
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6395-0" and STATUS = "ACTIVE" // Microscopy.electron
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6398-4" and STATUS = "ACTIVE" // Microscopy.light
// No target named: the open question of the general microscopy
* exclude codes from system $loinc where COMPONENT = "LP442509-8" // Microscopic observation

// ----------------------------------------------------------------------------

ValueSet: MicroscopySpecificCodePreferredEuVs
Id: micro-microscopySpecificCodePreferred-eu-lab
Title: "Specific Microscopy Codes, preferred"
Description: """The preferred codes of the specific microscopy: the codes of [Specific Microscopy Codes](ValueSet-micro-microscopySpecificCode-eu-lab.html) that leave the specimen to Specimen.type, i.e. system XXX, e.g. 673-4 |Ova and parasites identified in Specimen by Light microscopy| (workbook, sheet Microscopy, Profile 2). The target are codes with system {Specimen}; LOINC has none for microscopy yet, so the codes with system XXX are preferred until it provides them. Once {Specimen} codes exist, this value set is revised, so that one test does not have two preferred codes."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
// PrId, system XXX
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6393-5" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6395-0" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6398-4" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
// PrThr, system XXX
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6393-5" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6395-0" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6398-4" and SYSTEM = "LP7735-6" and STATUS = "ACTIVE"
// PrId, system {Specimen} — no codes in LOINC yet (workbook, sheet Microscopy, F4: "in the future")
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6393-5" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6395-0" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP6850-4" and METHOD_TYP = "LP6398-4" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE"
// PrThr, system {Specimen} — no codes in LOINC yet
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6393-5" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6395-0" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE"
* include codes from system $loinc where CLASS = "LP7819-8" and PROPERTY = "LP217195-9" and METHOD_TYP = "LP6398-4" and SYSTEM = "LP451871-0" and STATUS = "ACTIVE"
// No target named: the open question of the general microscopy
* exclude codes from system $loinc where COMPONENT = "LP442509-8" // Microscopic observation

// ------------------------------------------------------------ both profiles

ValueSet: MicroscopyTechniqueEuVs
Id: micro-microscopyTechnique-eu-lab
Title: "Microscopy Techniques"
Description: """The microscopy technique used: 278289002 |Microscopy technique (qualifier value)| and its descendants, such as light microscopy, fluorescence microscopy, phase contrast and digital microscopy. The root itself stands for "by microscopy, technique not specified"; the workbook (sheet Microscopy) admits only its descendants. The staining is not a microscopy technique; it is specimen processing."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $sct where concept is-a #278289002

// ----------------------------------------------------------------------------

ValueSet: MicrobialStainMethodEuVs
Id: micro-stainMethod-eu-lab
Title: "Microbial Stain Methods"
Description: """The staining procedure applied to a specimen for microscopy, a descendant of 37926009 |Microbial stain method (procedure)|, as the workbook (sheet Microscopy, "Staining technique") prescribes: Gram stain, acid-fast stains, fluorochrome stains, Giemsa, trichrome and others. Represented in Specimen.processing.procedure."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $sct where concept descendent-of #37926009

// ----------------------------------------------------------------------------

ValueSet: MicroscopySemiquantitativeEuVs
Id: micro-semiquantitative-eu-lab
Title: "Semi-quantitative Microscopy Grades"
Description: """The semi-quantitative amount in which a microscopic finding was seen, for the component 103392008 |Semi-quantitative value|. Covers the three answer families the workbook lists (sheet Microscopy, row 15): few / moderate / many, + to ++++, and 1 to 3 out of 3. SNOMED CT holds "many" as a synonym of 260396001 |Numerous|."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
// few / moderate / many
* $sct#57176003 "Few"
* $sct#260354000 "Moderate number"
* $sct#260396001 "Numerous"
// + to ++++ (workbook cells H15–J18)
* $sct#260347006 "+"
* $sct#260348001 "++"
* $sct#260349009 "+++"
* $sct#260350009 "++++"
// 1 to 3 out of 3
* $sct#441614007 "Present one plus out of three plus"
* $sct#441517005 "Present two plus out of three plus"
* $sct#441521003 "Present three plus out of three plus"
