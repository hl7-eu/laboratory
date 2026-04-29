Instance: Patient-animal-example
InstanceOf: PatientAnimalEu
Title: "Patient: Animal example"
Description: "Example of a non-human patient represented with the PatientAnimalEu profile."
Usage: #example
* identifier.system = "http://example.org/fhir/animal-id"
* identifier.value = "DE-BE-AN-0001"
* active = true
* name.text = "Molly"
* gender = #female
* birthDate = "2021-04-13"
* extension[patient-animal].extension[species].valueCodeableConcept = $sct#448169003 "Domestic cat"
