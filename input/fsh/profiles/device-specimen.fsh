Profile: DeviceSpecimenLabReportEu
Parent: Device
Id: Device-specimen-eu-lab
Title: "Device: Specimen"
Description: "This profile defines how to represent a device in HL7 FHIR, when used as specimen subject, for the purpose of this guide."
* insert SetFmmandStatusRule ( 2, trial-use)
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* type from LabMedicalDeviceWithExceptionsEuVs (preferred)
* type ^short = "The type of device"