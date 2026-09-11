// Covers the reference targets added to Observation.focus (FHIR-57055).

Instance: obs-focus-substance-example
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: potassium concentration of an infusion solution"
Description: """Example of a laboratory result whose subject of record is the patient, while the observation is about a substance prepared for them.

`Observation.focus` accepts a `Substance` since FHIR-57055. The code is given as text only, as the guide does for results without an agreed code."""
Usage: #example

* contained = InfusionSolutionSubstanceExample
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Potassium concentration of the prepared infusion solution"
* subject = Reference(pat-lab-example)
* focus = Reference(InfusionSolutionSubstanceExample)
* effectiveDateTime = "2025-04-08T11:20:00+02:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity = 20.1 'mmol/L' "mmol/L"

Instance: InfusionSolutionSubstanceExample
InstanceOf: Substance
Title: "Substance: infusion solution example"
Description: "Example of the substance the measurement was performed on."
Usage: #inline
* status = #active
* code = $sct#387390002 "Sodium chloride"
* code.text = "Sodium chloride 0.9% infusion solution with added potassium chloride"

Instance: obs-focus-bdp-example
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: ABO group of a blood unit"
Description: """Example of a laboratory result about a blood unit rather than about the patient directly.

`Observation.focus` accepts a `BiologicallyDerivedProduct` since FHIR-57055."""
Usage: #example

* contained = CrossmatchedUnitExample
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#883-9 "ABO group [Type] in Blood"
* subject = Reference(pat-lab-example)
* focus = Reference(CrossmatchedUnitExample)
* effectiveDateTime = "2025-04-08T11:35:00+02:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#112144000 "Blood group A"

Instance: CrossmatchedUnitExample
InstanceOf: BiologicallyDerivedProduct
Title: "BiologicallyDerivedProduct: crossmatched unit example"
Description: "Example of the blood unit the ABO group was determined for."
Usage: #inline
* productCategory = #cells
* status = #available
