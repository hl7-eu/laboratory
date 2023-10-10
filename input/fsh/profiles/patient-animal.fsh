Profile: PatientAnimalEu
Parent: Patient
Id: Patient-animal-eu-lab
Title:    "Patient: Animal"
Description: """This profile defines how to represent an Animal as subject of care in FHIR for the purpose of this guide.
This is used to identify the species when a specimen is collected from an animal"""
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 1, draft )
* extension contains $patient-animal named patient-animal 1..1
* extension[patient-animal].extension[species]
