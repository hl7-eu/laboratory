// ============================================================================
// Organism identification — value sets
// Source: white paper chapters "Culture and Detection by Culture" and
// "Phenotypic Pathogen Identification"; workbook sheets "Phenotypic
// Identification" and "Molecular techniques" (block "Identification Procedure
// (General sequencing)").
// ============================================================================

ValueSet: OrganismIdentificationCodeEuVs
Id: micro-organismIdentificationCode-eu-lab
Title: "Organism Identification Codes"
Description: """LOINC codes for the identification of a microorganism without a predefined target. 41852-5 |Microorganism or agent identified in Specimen| is the recommended code (workbook, sheet Phenotypic Identification, "preferred"). The kingdom-level codes and the sequencing codes are accepted where the laboratory reports at that level. A code for *Parasite identified in Specimen* is missing in LOINC; parasites are reported with 41852-5."""
* insert LOINCCopyrightForVS
* insert MicrobiologyDraftStatusEu
// Preferred
* $loinc#41852-5 "Microorganism or agent identified in Specimen"
// Kingdom level
* $loinc#23667-9 "Bacteria identified in Specimen"
* $loinc#42805-2 "Fungus identified in Specimen"
* $loinc#41461-5 "Virus identified in Specimen"
// Sequencing-based identification — same question, same result, another
// technique (workbook, sheet Molecular techniques: "same value set as for
// Phenotypic identification")
* $loinc#66885-5 "Bacteria identified based on 16S rRNA gene [Identifier] in Specimen by Sequencing"
* $loinc#101534-6 "Fungal 18s rRNA gene [Identifier] in Specimen by Sequencing"

// ----------------------------------------------------------------------------

ValueSet: MicroorganismEuVs
Id: micro-organism-eu-lab
Title: "Microorganisms and Infectious Agents"
Description: """The SNOMED CT hierarchies an identified organism or infectious agent comes from: bacteria, fungi, protozoa, slime moulds, prions, viruses, helminths (cestodes, trematodes, nematodes), arachnids and insects. The nine roots are those of the workbook (sheet Phenotypic Identification, row 36). The slime mould root is marked "to be confirmed" there."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $sct where concept is-a #409822003 // Domain Bacteria
* include codes from system $sct where concept is-a #414561005 // Kingdom Fungi
* include codes from system $sct where concept is-a #417396000 // Kingdom Protozoa
* include codes from system $sct where concept is-a #243565002 // Slime mold — to be confirmed
* include codes from system $sct where concept is-a #84676004  // Prion
* include codes from system $sct where concept is-a #49872002  // Virus
* include codes from system $sct where concept is-a #441649000 // Cestoda, Trematoda, Nematoda
* include codes from system $sct where concept is-a #76222001  // Arachnid
* include codes from system $sct where concept is-a #106763003 // Class Insecta

// ----------------------------------------------------------------------------

ValueSet: OrganismIdentificationResultEuVs
Id: micro-organismIdentificationResult-eu-lab
Title: "Organism Identification Results"
Description: """The result of an organism identification: the organism, or 260415000 |Not detected| when the examination was performed and nothing was identified (workbook, sheet Phenotypic Identification, row 39). An indeterminate result is not a value; it is given in dataAbsentReason."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from valueset MicroorganismEuVs
* $sct#260415000 "Not detected"

// ----------------------------------------------------------------------------

ValueSet: OrganismIdentificationTechniqueEuVs
Id: micro-organismIdentificationTechnique-eu-lab
Title: "Organism Identification Techniques"
Description: """The technique by which an organism was identified (workbook, sheet Phenotypic Identification, "Method"; sheet Molecular techniques for sequencing). A SNOMED CT concept for automated biochemical identification (VITEK and similar systems) has been requested and is added once it exists."""
* insert SNOMEDCopyrightForVS
* insert MicrobiologyDraftStatusEu
* include codes from system $sct where concept is-a #278289002 // Microscopy technique and its descendants
* $sct#83581000052107 "Matrix assisted laser desorption ionization time of flight mass spectrometry technique"
* $sct#258083009 "Visual estimation"
* $sct#1304162005 "Nucleic acid sequencing technique"
