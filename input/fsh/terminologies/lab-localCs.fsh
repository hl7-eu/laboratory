/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: LaboratoryLocalVS
Id: lab-localVs-eu-lab
Title: "Local Laboratory Codes VS"
Description: "Local laboratory codes Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = true
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 1, draft )
* codes from system http://hl7.eu/fhir/laboratory/CodeSystem/laboratory-local-cs */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

CodeSystem: LaboratoryLocalCS
Id: lab-localCs-eu-lab
Title: "Local Laboratory Codes CS"
Description: "Local laboratory codes Code System"
* ^url = "http://example.org/lab-codes"
* ^experimental = true
/* * ^version = "0.0.1" */
* ^name = "LaboratoryLocalCS"
* ^title = "Laboratory local codes Code System"
* ^status = #active
* ^description = "Laboratory local codes Code System"
* ^content = #complete // #example
* ^caseSensitive = false
* #3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* #0020089 "Hepatitis B Surface Antigen"
* #0020092 "Hepatitis B Core Antibody, IgM"
* #0020093 "Hepatitis A Antibody, IgM"
* #3003128 "Hepatitis C Antibody by CIA Interp"
* #2002404 "Hepatitis C Antibody by CIA Index"
