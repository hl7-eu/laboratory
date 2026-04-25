Profile: AnimalSpecimenEuLab
Parent: RelatedPerson
Id: animal-specimen-eu-lab
Title:    "RelatedPerson: Animal"
Description: """This profile defines how to represent an Animal as source of a specimen or focus of the observation in FHIR for the purpose of this guide.
This is used to identify the species when a specimen is collected from an animal and observation made on this specimen. It can also be used to identify the species when an observation is focused directly on the animal, without a specimen being collected.
"""
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 2, trial-use)
* extension contains $practitioner-animal named specimen-animal 1..1
* extension[specimen-animal].valueCodeableConcept from LabSpeciesTypesEuVs (example)
* extension contains $recordedSexOrGender named recordedSexOrGender 0..1
* extension[recordedSexOrGender]

* relationship 0..0
* name
  * ^short = "The name of the animal"
  * ^comment = "The name of the animal if relevant. For example, if the animal is a pet, the name of the pet can be recorded here."
* telecom ..0
* gender ..0
* address ..0
* photo ..0
* period ..0
* communication ..0
// * telecom ..0
//   * ^short = "Use contact.telecom"
//   * ^comment = "Animals do not have phones, their contacts do. Contact.telecom should be used."
// * maritalStatus ..0
