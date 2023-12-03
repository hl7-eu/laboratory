
Profile: BodyStructureEuLab
Parent: BodyStructure
Id: bodyStructure-eu-lab
Title: "Body structure: Laboratory"
Description: """This profile defines how to represent Body Structure in HL7 FHIR for the purpose of this guide."""
* extension contains $bodyStructure-laterality-r5 named laterality 0..1
* extension[laterality].valueCodeableConcept from LabLateralityEuVs (preferred)
* morphology from http://hl7.org/fhir/ValueSet/bodystructure-code (preferred)
* location from http://hl7.org/fhir/ValueSet/body-site (preferred)
* locationQualifier from LabSiteQualifierEuVs (preferred)
* image 0..0

