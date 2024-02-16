ValueSet:      LabReportTypesEuVs
Id:	       lab-reportType-eu-lab
Title:	       "Laboratory Report Types"
Description:   """Laboratory Report Types.
This version includes only one code as suggested by the eHN guideline.
Category can be used for filtering per study type or specialty."""

// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 2, trial-use)
* insert LOINCCopyrightForVS
* $loinc#11502-2 "Laboratory report"