Extension: ObservationCertifiedRefMaterialCodeable
Id:   observation-certifiedRefMaterialCodeable
Title:  "Certified Reference Material: CodeableConcept"
Description: """This extension links this observation with the certified reference material used for the calibration.
The certified reference material is identified by using a CodeableConcept.
This extension should be used when the unit is UCUM [IU].""" 
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Observation)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only CodeableConcept
* value[x] from LabCertifiedReferenceMaterialVS (example)

Extension: ObservationCertifiedRefMaterialIdentifer
Id:   observation-certifiedRefMaterialIdentifer
Title:  "Certified Reference Material: Identifier"
Description: """This extension links this observation with the certified reference material used for the calibration.
The certified reference material is identified by using an Identifier.
This extension should be used when the unit is UCUM [IU].""" 
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Observation)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Identifier

Extension: DeviceLabTestKit
Id:   observation-deviceLabTestKit
Title:  "Device Laboratory Test Kit"
Description: """This extension links this observation with the laboratory test kit used for this test.
 Usually only one laboratory test kit is referred""" 
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Observation)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Reference(Device)

//TODO: will be moved to the extensions ig in the future. https://jira.hl7.org/browse/FHIR-56516
Extension: LaboratoryAccreditedEu
Id:   laboratory-accredited-eu
Title:  "Laboratory Accredited"
Description: """Simple accreditation extension.
For Observation it indicates that the laboratory test was/is accredited.
For ServiceRequest it indicates that the request shall be fulfilled by an accredited laboratory."""
Context: Observation, ServiceRequest
* ^url = "http://hl7.eu/fhir/StructureDefinition/laboratory-accredited"
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only boolean
* valueBoolean 1..1

// TODO: replace with official R6 backport extension when available.
Extension: SpecimenFocus
Id: specimen-focus
Title: "Specimen Focus"
Description: "Specimen focus, Extension to represent the entity from which the specimen is collected when it is not the subject of record." 
* insert ExtensionContext(Specimen)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Reference(RelatedPerson or Group or Device or Substance or Location)

ValueSet: ReferenceRangeLowComparator
Id: reference-range-low-comparator
Title: "Reference Range Low Comparator"
Description: "Comparators permitted for the low bound of an Observation reference range."
* $quantity-comparator#>= "Greater or Equal to"
* $quantity-comparator#> "Greater than"

ValueSet: ReferenceRangeHighComparator
Id: reference-range-high-comparator
Title: "Reference Range High Comparator"
Description: "Comparators permitted for the high bound of an Observation reference range."
* $quantity-comparator#<= "Less or Equal to"
* $quantity-comparator#< "Less than"

Extension: ObservationReferenceRangeLowComparator
Id: observation-reference-range-low-comparator
Title: "Observation Reference Range Low Comparator"
Description: "The comparator for Observation.referenceRange.low. This modifier extension pre-adopts the R6 comparator on the low reference-range bound."
* insert ExtensionContext(Observation.referenceRange)
* insert SetFmmandStatusRule ( 2, trial-use)
* . ^isModifier = true
* . ^isModifierReason = "Changes the interpretation of Observation.referenceRange.low by stating whether the bound is inclusive or exclusive."
* value[x] only code
* valueCode 1..1
* valueCode from ReferenceRangeLowComparator (required)

Extension: ObservationReferenceRangeHighComparator
Id: observation-reference-range-high-comparator
Title: "Observation Reference Range High Comparator"
Description: "The comparator for Observation.referenceRange.high. This modifier extension pre-adopts the R6 comparator on the high reference-range bound."
* insert ExtensionContext(Observation.referenceRange)
* insert SetFmmandStatusRule ( 2, trial-use)
* . ^isModifier = true
* . ^isModifierReason = "Changes the interpretation of Observation.referenceRange.high by stating whether the bound is inclusive or exclusive."
* value[x] only code
* valueCode 1..1
* valueCode from ReferenceRangeHighComparator (required)
