Instance: Specimen-container-device-example
InstanceOf: SpecimenEu
Title: "Specimen: container device example"
Description: "Example of a blood specimen collected into an evacuated blood collection tube. The container is described by a Device resource, referenced through the R5 `Specimen.container.device` extension."
Usage: #example

* contained[0] = BloodCollectionTubeExample
* contained[+] = ClotActivatorExample
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2025-04-08T08:15:00+02:00"
* container
  * identifier.system = "http://example.org/specimen-containers"
  * identifier.value = "TUBE-0000123"
  * type = $sct#702281005 "Evacuated blood collection tube, thrombin/clot activator/gel separator"
  * extension[device].valueReference = Reference(BloodCollectionTubeExample)

Instance: BloodCollectionTubeExample
InstanceOf: DeviceSpecimenContainerEuLab
Title: "Device: blood collection tube example"
Description: "Example of the device representing the container the specimen is held in."
Usage: #inline
* type = $sct#702281005 "Evacuated blood collection tube, thrombin/clot activator/gel separator"
* deviceName
  * name = "BEST® Serum Separator Tube 5 mL"
  * type = #manufacturer-name
* manufacturer = "Best manufacturer"
* lotNumber = "L20250312A"
* identifier.system = "http://example.org/specimen-containers"
* identifier.value = "TUBE-0000123"
* extension[additive].extension[substanceReference].valueReference = Reference(ClotActivatorExample)

Instance: ClotActivatorExample
InstanceOf: SpecimenAdditiveSubstance
Title: "Substance: clot activator example"
Description: "Example of a container additive described as a Substance."
Usage: #inline
* code.text = "Thrombin clot activator"
