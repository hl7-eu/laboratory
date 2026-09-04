Profile: SpecimenEu
Parent: Specimen
Id: Specimen-eu-lab
Title: "Specimen: Laboratory"
Description: """This profile defines how to represent Specimens in HL7 FHIR for the purpose of this guide."""

* insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"
* extension contains SpecimenFocus named focus 0..1
// The reference targets are not constrained any further here, based on the resolution of the Jira issue FHIR-57050
* extension[focus] ^short = "The entity the specimen was collected from, when it is not the subject of record"
* extension[focus] ^comment = "For an animal specimen source the AnimalSpecimenEuLab profile is expected to be used."
* subject only Reference (PatientEuCore or Group or Device or Substance or Location)
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
    // The R5 backport extension replaces the bodySite extension, which has no Specimen context,
    // based on the resolution of the Jira issue FHIR-57051
    * extension contains $specimen-collection-body-site-r5 named bodySite 0..1
    * extension[bodySite].valueReference only Reference(BodyStructureEuCore)

// Patient and RelatedPerson, the collectors added in R5, are conveyed with the alternate-reference
// extension, based on the resolution of the Jira issue FHIR-57901. This is the mechanism the
// cross version profile for the R5 Specimen uses for this element as well.
* collection.collector
  * ^short = "Who collected the specimen"
  * ^comment = """In FHIR R4 this element can only refer to a Practitioner or a PractitionerRole.
When the specimen was collected by the patient or by a related person, the reference is conveyed in the alternate-reference extension instead."""
* collection.collector.extension contains $alternate-reference named collector 0..1
* collection.collector.extension[collector]
  * ^short = "Patient or related person who collected the specimen"
  * valueReference only Reference(PatientEuCore or RelatedPerson)

* processing.additive only Reference(Substance or SpecimenAdditiveSubstance)
* container
  * type from LabSpecimenContainerEu (preferred)
  * additive[x] 0..0
  * extension contains $specimen-container-device-r5 named device 1..1
  * extension[device].valueReference only Reference(Device)

// ----------------------------------------

Profile: SpecimenAdditiveSubstance
Parent: Substance
Id: Substance-additive-eu-lab
Title: "Substance: Specimen Additive Substance"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from LabSpecimenAdditiveEu (preferred)