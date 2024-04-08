ValueSet:      LabLateralityEuVs
Id:	       lab-laterality-eu-lab
Title:	       "Body Structure Laterality"
Description:   "Body Structure site laterality qualifier. It indicates the body site laterality from which a laboratory specimen is collected. (based on SNOMED CT)"


// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

* $sct#7771000	"Left (qualifier value)"
* $sct#24028007 "Right (qualifier value)"
* $sct#51440002 "Right and left = bilateral (qualifier value)"  // Not sure how bilateral in context of lab order/report could be used
//* $sct#261183002 "Upper (qualifier value)"
//* $sct#261122009 "Lower (qualifier value)"
//* $sct#255561001 "Medial (qualifier value)"
