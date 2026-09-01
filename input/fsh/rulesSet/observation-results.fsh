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
// The additional bindings have been removed based on the resolution of the Jira issue FHIR-57048:
// the blood group, presence/absence and microorganism value sets they pointed to are already
// part of the value set bound above, which is composed of the IPS blood group, presence/absence,
// microorganism and pathology value sets.
* valueCodeableConcept from $results-coded-values-laboratory-pathology-uv-ips (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
