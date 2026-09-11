// Covers the reference targets added to the SpecimenFocus extension (FHIR-57050).

Instance: Specimen-focus-bdp-example
InstanceOf: SpecimenEu
Title: "Specimen: sample taken from a blood unit"
Description: """Example of a sample drawn from a red blood cell unit for pre-transfusion testing.

The subject of record is the patient the unit is intended for, while the entity the specimen was actually collected from is the blood unit. That entity is conveyed in the `SpecimenFocus` extension, which accepts a `BiologicallyDerivedProduct` since FHIR-57050."""
Usage: #example

* contained = RedBloodCellUnitExample
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(pat-lab-example)
* extension[focus].valueReference = Reference(RedBloodCellUnitExample)
* collection.collectedDateTime = "2025-04-08T09:05:00+02:00"

Instance: RedBloodCellUnitExample
InstanceOf: BiologicallyDerivedProduct
Title: "BiologicallyDerivedProduct: red blood cell unit example"
Description: "Example of the blood unit the specimen was drawn from."
Usage: #inline
* productCategory = #cells
* status = #available
