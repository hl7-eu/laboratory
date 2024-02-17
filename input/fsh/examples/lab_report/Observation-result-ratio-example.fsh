Instance: LabObservtionResultRatio
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: ratio example"
Description: "Example of Observation with ratio result"
Usage: #example

* contained[+] = TestKitExample
* contained[+] = AnalyzerExample
* id = "d29b286d-b99c-410f-af4e-9455ea49d0af"
* extension[DeviceLabTestKit].valueReference = Reference (TestKitExample)
* status = #final
* code.coding[+] = http://loinc.org#1755-8 "Albumin [Mass/time] in 24 hour Urine"
* code.text = "Albumin (24H U) [Mass/Time]"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* valueRatio
  * numerator = 15 'mg' "mg"
  * denominator = 24 'h' "h"
* device = Reference (AnalyzerExample)
    
/* * valueRatio.numerator.value = 15
* valueRatio.numerator.system = $ucum
* valueRatio.numerator.code = $ucum#mg
* valueRatio.numerator.unit = "mg"
* valueRatio.denominator.value = 24
* valueRatio.denominator.system = $ucum
* valueRatio.denominator.code = $ucum#h
* valueRatio.denominator.unit = "h" */

Instance: TestKitExample
InstanceOf: Device
Title: "Device: lab Test Kit example"
Description: "Example of Lab Test Kit"
Usage: #inline
* deviceName
  * name = "BEST® Micro Albuminuria Test Kit"
  * type = #manufacturer-name
* manufacturer = "Best manufacturer"

Instance: AnalyzerExample
InstanceOf: Device
Title: "Device: Analyzer example"
Description: "Example of Analyzer"
Usage: #inline
* deviceName
  * name = "BEST® FLUORESCENCE PLUS ANALYZER"
  * type = #manufacturer-name
* manufacturer = "Best manufacturer"