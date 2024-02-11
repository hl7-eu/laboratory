Instance: LabObservtionResultRatio
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: ratio example"
Description: "Example of Observation with ratio result"
Usage: #example

* id = "d29b286d-b99c-410f-af4e-9455ea49d0af"
* status = #final
* code.coding[+] = http://loinc.org#1755-8 "Albumin [Mass/time] in 24 hour Urine"
* code.text = "Albumin (24H U) [Mass/Time]"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* valueRatio.numerator.value = 15
* valueRatio.numerator.system = $ucum
* valueRatio.numerator.code = $ucum#mg
* valueRatio.numerator.unit = "mg"
* valueRatio.denominator.value = 24
* valueRatio.denominator.system = $ucum
* valueRatio.denominator.code = $ucum#h
* valueRatio.denominator.unit = "h"
