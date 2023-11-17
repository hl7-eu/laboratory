
// --------------------------------------------------------
ValueSet: BodyLocationQualifierVS
Id: mcode-body-location-qualifier-vs
Title: "Body Location Qualifier Value Set"
Description: "Qualifiers to refine a body structure or location including qualifiers for relative location, directionality, number, and plane, and excluding qualifiers for laterality."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// Changed to intensional definition
* ^experimental = false
* include codes from system $sct where concept is-a #106233006 "Topographic Modifier (qualifer)"
* include codes from system $sct where concept is-a #272424004 "Relative Sites (qualifier)"
* $sct#255503000 "Entire (qualifier value)"
* exclude codes from valueset LateralityQualifierVS // laterality is separated into a separate value set

// --------------------------------------------------------
ValueSet: MorphologicAbnormalityVS
Id: morphologicAbnormality-eu-vs
Title: "Morphologically abnormal structure"
Description: "Morphologically abnormal structure."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false
* include codes from system $sct where concept is-a #49755003 "Morphologically abnormal structure (morphologic abnormality)"

// --------------------------------------------------------
ValueSet: LateralityQualifierVS
Id: lateralityQualifier-vs
Title: "Laterality Qualifier Value Set"
Description: "Qualifiers to specify laterality."
/* ---------------------------------
* $loinc#LA4585-1  "Left"		
* $loinc#LA4306-2  "Right"		
* $loinc#LA25377-5 "Bilateral"
* $loinc#LA25378-3 "Unilateral"
* $loinc#LA27460-7 "Midline"
*/

* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#51440002	 "Bilateral" // "Right and left (qualifier value)", 4 => Bilateral
* $sct#66459002 "Unilateral" // 3 => Monolateral unknown side
* $sct#24028007	 "Right" // 1 => Right Monolateral
* $sct#7771000	 "Left" //2 => Left Monolateral
* $data-absent-reason-cs#unknown "Unknown" // -9922 => NK
* $data-absent-reason-cs#not-applicable "Not Applicable" // -9911 => Not applicable (NA)

