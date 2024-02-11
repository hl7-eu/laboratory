ValueSet:      LabSiteQualifierEuVs
Id:	       lab-siteQualifier-eu-lab
Title:	       "Body Structure Qualifier (no laterality)"
Description:   "Body Structure site qualifier (excluding laterality). It indicates the body site qualifier - excluding laterality - from which a laboratory specimen is collected. (based on SNOMED CT)"
* ^status = #draft

// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* include codes from valueset BodystructureLocationQualifier
* exclude codes from valueset LabLateralityEuVs

