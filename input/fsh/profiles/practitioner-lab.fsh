
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEu
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       Practitioner-eu-lab
Title:    "Practitioner"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the  HL7 Europe project."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleEu
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       PractitionerRole-eu-lab
Title:    "PractitionerRole"
Description: "This profile defines how to represent Practitioners (with thier roles) in FHIR for the purpose of the  HL7 Europe project."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
//-------------------------------------------------------------------------------------------
