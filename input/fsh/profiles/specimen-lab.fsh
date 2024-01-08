Profile: SpecimenEu
Parent: Specimen
Id: Specimen-eu-lab
Title: "Specimen: Laboratory"
Description: """This profile defines how to represent Specimens in HL7 FHIR for the purpose of this guide."""
* ^status = #draft

* insert SetFmmandStatusRule ( 1, draft )
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"

/*
* extension contains $specimen-feature-type-r5 named SpecimenFeatureTypeR5 0..*
* extension[SpecimenFeatureTypeR5].valueCodeableConcept
*/

* subject only Reference ( PatientEuLab or PatientAnimalEu or Group  or Device or Substance or Location)
* type from LabSpecimenTypesEuVs (preferred)
* type 0..1 
  * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite if present it shall be coherent with the type."
* parent only Reference(SpecimenEu)
* request 
  * ^short = "Why the specimen was collected."
  * ^comment = """If the specimen information are known when the order is created then the ServiceRequest.specimen should be used.
If the ServiceRequest can be updated when the specimen is collected then the ServiceRequest.specimen or the Specimen.request could be used.
Otherwise the relationship is recorded in the Specimen.request element"""


/*
* collection.extension contains $specimen-collection-device-r5 named SpecimenCollectionDeviceR5 0..1
* collection.extension[SpecimenCollectionDeviceR5]
*/

* collection
  * bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
    * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite if present it shall be coherent with the type"
  * extension contains $bodySite-reference named bodySite 0..*
  * extension[bodySite].valueReference only Reference(BodyStructureEuLab)

/*   * extension contains BodyLocationQualifier named locationQualifier 0..*
  * extension[locationQualifier].valueCodeableConcept from MorphologicAbnormalityVS (preferred)

  * extension contains LateralityQualifier named locationLaterality 0..*
  * extension[locationLaterality].valueCodeableConcept from LateralityQualifierVS (preferred) */

/*
* collection.bodySite.extension contains $specimen-collection-body-site-r5 named SpecimenCollectionBodySiteR5 0..1
* collection.bodySite.extension[SpecimenCollectionBodySiteR5].valueCodeableReference only CodeableReference(BodyStructureEuLab)
*/

* processing.additive only Reference(Substance or SpecimenAdditiveSubstance)
* container
  * type from LabSpecimenContainerEu (preferred)
  * additive 0..0
  * extension contains $specimen-container-device-r5 named device 0..1
  * extension[device].valueReference only Reference(Device)

// ----------------------------------------

Profile: SpecimenAdditiveSubstance
Parent: Substance
Id: substance-additive-eu-lab
Title: "Substance: Specimen Additive Substance"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from LabSpecimenAdditiveEu (preferred)