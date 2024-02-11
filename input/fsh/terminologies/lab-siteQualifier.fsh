ValueSet:      LabSiteQualifierEuVs
Id:	       lab-siteQualifier-eu-lab
Title:	       "Specimen Site Qualifier Laboratory"
Description:   "Laboratory specimen site qualifier [SNOMED CT]"
* ^status = #draft

// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* include codes from valueset BodystructureLocationQualifier
* exclude codes from valueset LabLateralityEuVs

