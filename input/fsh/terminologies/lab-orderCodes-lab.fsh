ValueSet: LabOrderCodesEu
Id: lab-orderCodes-eu-lab
Title: "Lab Order Codes"
Description: "Laboratory Order Codes for use in  HL7 Europe."
* ^experimental = true
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Order"
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Both"