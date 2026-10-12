// ============================================================================
// Microscopy — value sets
// Source: white paper chapter "Microscopy"; workbook sheet "Microscopy".
// ============================================================================

ValueSet: MicroscopyObservationCodeEuVs
Id: micro-microscopyCode-eu-lab
Title: "Microscopic Observation Codes"
Description: """LOINC codes for the open microscopic observation, whose result is the finding seen. The recommended code is 105059-0 |Microscopic observation [Identifier] in Specimen|: it leaves the stain to Specimen.processing and the specimen to Specimen.type. The codes pre-coordinating the stain or the specimen are accepted for existing implementations; stain and specimen are then still represented explicitly."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Preferred, post-coordinated
* $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
// Accepted, stain pre-coordinated
* $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* $loinc#11545-1 "Microscopic observation [Identifier] in Specimen by Acid fast stain"
* $loinc#676-7 "Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain"
// Accepted, stain and specimen pre-coordinated
* $loinc#105916-1 "Microscopic observation [Identifier] in Bronchoalveolar lavage by Gram stain"
* $loinc#107347-7 "Microscopic observation [Identifier] in Stool by Acid fast stain.Kinyoun modified"

// ----------------------------------------------------------------------------

ValueSet: MicroscopyFindingEuVs
Id: micro-microscopyFinding-eu-lab
Title: "Microscopic Findings"
Description: """SNOMED CT concepts for what is seen under the microscope: morphological findings such as *Gram-positive cocci in clusters*, organisms recognisable by microscopy such as a *Plasmodium* species or an intestinal parasite, host cells, and the negative result. The morphological findings are the ones the white paper lists; the organisms come from the same hierarchies as the identification result."""
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
* $sct#1359949003 "Gram-positive cocci in pair"
// Morphological groups SNOMED CT holds only in the organism hierarchy
* $sct#59206002 "Gram-positive coccus"
* $sct#18383003 "Gram-negative coccus"
* $sct#83514008 "Gram-positive bacillus"
* $sct#87172008 "Gram-negative bacillus"
* $sct#11471007 "Gram-positive diplococcus"
* $sct#116442009 "Coryneform bacteria"
* $sct#62093005 "Yeast"
* $sct#243365003 "Acid-fast bacillus"
* $sct#243366002 "Partially acid-fast bacillus"
* $sct#243367006 "Acid and alcohol-fast bacillus"
// Fungal morphology
* $sct#404507002 "Hyphae of kingdom Fungi detected"
* $sct#768480006 "Branching hyphae of kingdom Fungi detected"
* $sct#768488004 "Broad irregular hyphae of kingdom Fungi detected"
* $sct#768479008 "Narrow hyphae of kingdom Fungi detected"
* $sct#768481005 "Nonbranching hyphae of kingdom Fungi detected"
* $sct#719645005 "Nonseptate hyphae of kingdom Fungi detected"
* $sct#719644009 "Septate hyphae of kingdom Fungi detected"
// Host cells, as in white paper example 2 (Gram-negative rods and leukocytes
// on the same slide). The LOINC-coded alternative — 72163-9 |Leukocytes
// [Presence] in Specimen by Gram stain| — is a targeted detection.
* $sct#52501007 "Leukocyte"
* $sct#41898006 "Erythrocyte"
* $sct#4212006 "Epithelial cell"
* $sct#250440009 "Clue cells present"
// Organisms recognisable by microscopy (Plasmodium, intestinal parasites, ...)
* include codes from valueset MicroorganismEuVs
// Nothing seen
* $sct#27863008 "No organisms seen"
* $sct#721786009 "No cells seen"
* $sct#260415000 "Not detected"

// ----------------------------------------------------------------------------

ValueSet: MicroscopyTechniqueEuVs
Id: micro-microscopyTechnique-eu-lab
Title: "Microscopy Techniques"
Description: """The microscopy technique used, a descendant of 278289002 |Microscopy technique (qualifier value)|, as the workbook (sheet Microscopy) and the white paper prescribe. Light microscopy, fluorescence microscopy, phase contrast and digital microscopy are among the members. The staining is not a microscopy technique; it is specimen processing."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $sct where concept descendent-of #278289002

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
Description: """The semi-quantitative amount in which a microscopic finding was seen, for the component 103392008 |Semi-quantitative value|. Covers the three answer families the workbook lists (sheet Microscopy, row 15): few / moderate / many, + to ++++, and 1 to 3 out of 3."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
// few / moderate / many
* $sct#263865001 "Scanty"
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
