// Temporary R6 compatibility solution; replace with a suitable standard R6-to-R4 cross-version extension.
Extension: DeviceSpecimenContainerAdditive
Id: device-specimen-container-additive
Title: "Specimen Container Device Additive"
Description: "Temporary FHIR R4 compatibility solution for R6 Device.additive: a substance added to a container device, identified by a concept and/or a reference to Substance, with an optional quantity. Intended to be replaced by the standard R6-to-R4 cross-version extension once available and suitable for use."
* insert ExtensionContext(Device)
* insert SetFmmandStatusRule ( 0, draft)
* . 0..*
* . ^definition = "Material added to a container device, typically used in specimen collection or initial processing. The material may be added by the device manufacturer or by another party after manufacturing."
* . ^comment = "Repeat for multiple additives. When both substanceConcept and substanceReference are present, they SHALL identify the same substance. Absence does not establish that the container has no additive. A Procedure may document the addition to the device. This local extension is temporary and is intended to be replaced by the standard R6-to-R4 cross-version extension once available and suitable for use."
* obeys device-additive-substance
* value[x] 0..0
* extension contains
    substanceConcept 0..1 and
    substanceReference 0..1 and
    quantity 0..1
* extension[substanceConcept] ^short = "Additive substance concept"
* extension[substanceConcept].extension 0..0
* extension[substanceConcept].value[x] 1..1
* extension[substanceConcept].value[x] only CodeableConcept
* extension[substanceConcept].valueCodeableConcept from LabSpecimenAdditiveEu (preferred)
* extension[substanceReference] ^short = "Additive substance reference"
* extension[substanceReference].extension 0..0
* extension[substanceReference].value[x] 1..1
* extension[substanceReference].value[x] only Reference(Substance)
* extension[substanceReference].valueReference ^comment = "The Substance: Specimen Additive Substance profile is recommended when describing a specimen container additive."
* extension[quantity] ^short = "Quantity of additive substance within the container"
* extension[quantity] ^definition = "The quantity of the additive substance in the container; may be volume, dimensions or other appropriate measurements, depending on the container and additive substance type."
* extension[quantity].extension 0..0
* extension[quantity].value[x] 1..1
* extension[quantity].value[x] only SimpleQuantity
* extension[quantity].valueQuantity ^comment = "Use UCUM units where possible. As a SimpleQuantity, this quantity cannot have a comparator."

Invariant: device-additive-substance
Description: "An additive SHALL be identified by a substance concept, a substance reference, or both."
Severity: #error
Expression: "extension('substanceConcept').value.exists() or extension('substanceReference').value.exists()"

Mapping: DeviceSpecimenContainerAdditiveToR6
Source: DeviceSpecimenContainerAdditive
Target: "https://build.fhir.org/device.html"
Id: r6-device-additive
Title: "Mapping to FHIR R6 Device.additive"
Description: "Compatibility mapping to R6 Device.additive. The concept and reference slices jointly represent the required CodeableReference in Device.additive.type. The R4 reference is limited to Substance; R6 also permits SubstanceDefinition."
* -> "Device.additive"
* extension[substanceConcept].valueCodeableConcept -> "Device.additive.type.concept"
* extension[substanceReference].valueReference -> "Device.additive.type.reference"
* extension[quantity].valueQuantity -> "Device.additive.quantity"
