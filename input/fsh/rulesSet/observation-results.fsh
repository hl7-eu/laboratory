RuleSet: ObservationResultsValueEu
//TODO: do we really want to have this as closed slicing?
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* valueString only string
// * valueString MS
* valueString ^sliceName = "valueString"
* valueRange only RangeEuLab
// no practical examples found for the time being
// reverted to the original statement
// * valueRange only Range-eu-lab
* valueRange ^sliceName = "valueRange"
* valueRatio only RatioEuLab
* valueRatio ^sliceName = "valueRatio"
* valueTime only time
* valueTime ^sliceName = "valueTime"
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"
* valuePeriod only Period
* valuePeriod ^sliceName = "valuePeriod"
* valueQuantity only QuantityEuLab
* valueQuantity ^sliceName = "valueQuantity"
* valueCodeableConcept from $results-coded-values-laboratory-pathology-uv-ips (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a blood group findings value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a presence and absence findings (qualifier values) value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a microorganisms value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
