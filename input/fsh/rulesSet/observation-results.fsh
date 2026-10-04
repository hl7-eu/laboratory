RuleSet: ObservationResultsValueEu
// The closed slicing has been removed based on the resolution of the Jira issue FHIR-57047:
// the parent profile already slices value[x] by type and leaves the slicing open.
// The snapshot generator still closes type slicing, so every type of value[x] has a slice;
// valueBoolean, valueInteger and valueSampledData carry no further constraints.
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
* valueBoolean only boolean
* valueBoolean ^sliceName = "valueBoolean"
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"
* valueSampledData only SampledData
* valueSampledData ^sliceName = "valueSampledData"
* valueQuantity only QuantityEuLab
* valueQuantity ^sliceName = "valueQuantity"
// The additional bindings have been removed based on the resolution of the Jira issue FHIR-57048.
// The blood group and microorganism value sets they pointed to are subsets of the value set bound
// below. The presence/absence value set LabPresenceAbsenceEuVs is not: 13 of its 38 codes are not
// in the bound value set, and it is no longer bound anywhere (FHIR-59528 proposes to restore it).
* valueCodeableConcept from $results-coded-values-laboratory-pathology-uv-ips (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
