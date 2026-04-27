Profile: DeviceMeasuringLabReportEu
Parent: Device
Id: Device-measuring-eu-lab
Title: "Device: Measuring"
Description: "This profile defines how to represent a measuring Device in HL7 FHIR for the purpose of this guide."
* insert SetFmmandStatusRule ( 2, trial-use)
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* identifier ^short = "Device identifier"
* udiCarrier ^short = "Unique Device Identifier (UDI)"
* manufacturer ^short = "Manufacturer's name"
* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName ^definition = "Name of the device. Two slices have been defined one for the name given by the manufacture and one for the model name"
* deviceName contains
    manDeviceName 0..* and
    modelName 0..*
* deviceName[manDeviceName].name ^short = "Manufacturer device name"
* deviceName[manDeviceName].type = #manufacturer-name
* deviceName[modelName].name ^short = "Model name"
* deviceName[modelName].type = #model-name