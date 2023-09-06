ValueSet:      LabReportTypesEu
Id:	       lab-reportType-eu-lab
Title:	       "Lab Report Types"
Description:   """Laboratory Report Types"""

* ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
* $loinc#11502-2 "Laboratory report"