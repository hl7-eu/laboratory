Profile: SpecimenEu
Parent: Specimen
Id: specimen-eu-lab
Title: "Specimen: Laboratory"
Description: "HL7 Europe Specimen profile."
* ^status = #draft
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"
* type from LabSpecimenTypesEu (preferred)
* type 1..1
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* processing.additive only Reference(Substance or SpecimenAdditiveSubstance)
* container.type from LabSpecimenContainerEu (preferred)

// ----------------------------------------

Profile: SpecimenAdditiveSubstance
Parent: Substance
Id: specimen-additive-substance-eu-lab
Title: "Specimen Additive Substance"
Description: """Specimen Additive Substance"""
* code from LabSpecimenAdditiveEu (preferred)