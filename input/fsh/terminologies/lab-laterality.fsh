ValueSet:      LabLateralityEuVs
Id:	       lab-laterality-eu-lab
Title:	       "Body Structure Laterality"
Description:   "Body Structure site laterality qualifier. It indicates the body site laterality from which a laboratory specimen is collected. (based on SNOMED CT)"
* ^status = #draft

// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* $sct#7771000	"Left (qualifier value)"
* $sct#24028007 "Right (qualifier value)"
* $sct#261183002 "Upper (qualifier value)"
* $sct#261122009 "Lower (qualifier value)"
* $sct#255561001 "Medial (qualifier value)"
