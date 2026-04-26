Profile: SpecimenEu
Parent: Specimen
Id: Specimen-eu-lab
Title: "Specimen: Laboratory"
Description: """This profile defines how to represent Specimens in HL7 FHIR for the purpose of this guide."""

* insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"

* subject only Reference ( PatientEuCore or Group  or Device or Substance or Location)
* subject
  * extension contains SpecimenSubjectAnimalSource named specimenAnimalSource 0..1
  * extension[specimenAnimalSource].valueReference only Reference(AnimalSpecimenEuLab)
  * extension[specimenAnimalSource] ^short = "Animal specimen source"
* type 1..1
* type from LabSpecimenTypesEuVs (preferred)
  * ^comment = """If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite if present it shall be coherent with the type.
For a non-identifiable animal specimen source (e.g. 710069003 | Tick specimen (specimen) |), Specimen.type with the appropriate code shall be used."""
* parent only Reference(SpecimenEu)
* request
  * ^short = "Why the specimen was collected."
  * ^comment = """If the specimen information are known when the order is created then the ServiceRequest.specimen should be used.
If the ServiceRequest can be updated when the specimen is collected then the ServiceRequest.specimen or the Specimen.request could be used.
Otherwise the relationship is recorded in the Specimen.request element"""


* collection
  * bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
    * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite is present, it shall be coherent with the type"
  //TODO: extension not allowed on Specimen, replace with backport extension
  * extension contains $bodySite-reference named bodySite 0..1
  * extension[bodySite].valueReference only Reference(BodyStructureEuCore)
* processing.additive only Reference(Substance or SpecimenAdditiveSubstance)
* container
  * type from LabSpecimenContainerEu (preferred)
  * additive[x] 0..0
  * extension contains $specimen-container-device-r5 named device 0..1
  * extension[device].valueReference only Reference(Device)

// ----------------------------------------

Profile: SpecimenAdditiveSubstance
Parent: Substance
Id: Substance-additive-eu-lab
Title: "Substance: Specimen Additive Substance"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from LabSpecimenAdditiveEu (preferred)