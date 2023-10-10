ValueSet: LabOrderCodesEuVs
Id: lab-orderCodes-eu-lab
Title: "Laboratory Order [LOINC]"
Description: "Laboratory order codes for use in HL7 Europe."

// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Order"
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Both"