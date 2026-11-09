Profile: DeviceSpecimenContainerEuLab
Parent: Device
Id: Device-specimen-container-eu-lab
Title: "Device: Specimen Container"
Description: "This profile represents a specimen collection container, including its identifiers, container type, manufacturer, product name and additives. It is intended to be referenced from Specimen.container through the container device extension."
* insert SetFmmandStatusRule ( 0, draft)
* . ^short = "Specimen collection container"
* identifier ^short = "Identifier of the individual container"
* identifier ^comment = "Use for identifiers assigned to the physical container, such as its barcode. Specimen identifiers belong in Specimen.identifier. If also supplied in Specimen.container.identifier, identifiers for the same container should be consistent."
* udiCarrier ^short = "Unique Device Identifier (UDI) of the container, if available"
* type from LabSpecimenContainerEu (preferred)
* type ^short = "Type of specimen collection container"
* type ^comment = "Use the specimen container value set where possible. If Specimen.container.type is also supplied, it should be consistent with this type. The container type may convey an additive; any explicitly recorded additive should be consistent with it."
* manufacturer ^short = "Name of the container manufacturer"
* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName contains productName 0..*
* deviceName[productName] ^short = "Product name assigned by the manufacturer"
* deviceName[productName].type = #manufacturer-name
* modelNumber ^short = "Manufacturer's model or catalogue number"
* lotNumber ^short = "Manufacturing lot or batch number"
* serialNumber ^short = "Serial number of the individual container"
* manufactureDate ^short = "Date the container was manufactured"
* expirationDate ^short = "Expiry date of the container"
* property ^short = "Additional container characteristics"
* property ^comment = "May describe characteristics such as nominal capacity, material or cap colour. Identify the characteristic in property.type and record its value in valueQuantity or valueCode. Use UCUM units for measurable properties where possible. The actual specimen volume belongs in Specimen.container.specimenQuantity; container capacity can be recorded in Specimen.container.capacity."
* note ^short = "Additional information about the container"
* extension contains DeviceSpecimenContainerAdditive named additive 0..*
* extension[additive] ^short = "Additive present in the container"
