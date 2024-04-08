ValueSet:      LabSiteQualifierEuVs
Id:	       lab-siteQualifier-eu-lab
Title:	       "Body Structure Qualifier"
Description:   "Body Structure site qualifier. It indicates the body site qualifier from which a laboratory specimen is collected. (based on SNOMED CT)"


// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

//* include codes from valueset $BodystructureLocationQualifierR5
//* exclude codes from valueset LabLateralityEuVs
* $sct#7771000 "Left"
* $sct#24028007 "Right"
* $sct#51440002 "Bilateral"
* $sct#46053002 "Distal"
* $sct#255554000 "Dorsal"
* $sct#264147007 "Plantar"
* $sct#261183002 "Upper"
* $sct#261122009 "Lower"
* $sct#255561001 "Medial"
* $sct#49370004 "Lateral"
* $sct#264217000 "Superior"
* $sct#261089000 "Inferior"
* $sct#255551008 "Posterior"
* $sct#351726001 "Below"
* $sct#352730000 "Above"
