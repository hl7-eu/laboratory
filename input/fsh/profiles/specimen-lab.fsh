Profile: SpecimenXpandh
Parent: Specimen
Id: specimen-xpandh
Title: "Specimen: Laboratory"
Description: "HL7 Europe Specimen profile."
* ^status = #draft
* ^publisher = "HL7 Europe Project"
* ^copyright = "HL7 Europe Project"
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"
* type from LabSpecimenTypesXpandh (preferred)
* type 1..1
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* processing.additive only Reference(Substance or SpecimenAdditiveSubstanceXpandh)
* container.type from LabSpecimenContainerXpandh (preferred)

// ----------------------------------------

Profile: SpecimenAdditiveSubstanceXpandh
Parent: Substance
Id: specimen-additive-substance-xpandh
Title: "Specimen Additive Substance Xpandh"
Description: """Specimen Additive Substance Xpandh"""
* code from LabSpecimenAdditiveXpandh (preferred)