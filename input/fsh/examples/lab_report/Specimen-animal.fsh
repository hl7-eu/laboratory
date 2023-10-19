Instance: Specimen-animal-example
InstanceOf: SpecimenEu
Usage: #example
/* * contained = Patient-animal-example */
* status = #available
* type = $sct#119297000	"Blood specimen"
* subject = Reference(Patient-animal-example)
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Patient-animal-example
InstanceOf: PatientAnimalEu
Usage: #example
* extension[$patient-animal].extension[species].valueCodeableConcept = $sct#448169003 "Domestic cat"