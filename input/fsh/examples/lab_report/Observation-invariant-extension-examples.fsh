// Examples covering the ways a laboratory result value may be expressed.
// They double as positive test cases for eu-lab-1 and eu-lab-2: each instance
// exercises one branch of those invariants, so a regression in the expressions
// breaks the build instead of silently passing.

// eu-lab-1: no value[x], satisfied through extension-Observation.value
Instance: ObservationInvariantTopLevelValueExtension
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: urinalysis panel reported as an attachment"
Description: "Urinalysis macro (dipstick) panel whose result is a plain text attachment. Since Observation.value[x] cannot carry an Attachment in R4, the value is conveyed through the R5 `value[x]` extension."
Usage: #example

* id = "a9d31b0d-a2e2-4dd8-95c3-1b99f6c13d11"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#24357-6 "Urinalysis macro (dipstick) panel - Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value"
* extension[=].valueAttachment
  * contentType = #text/plain
  * data = "Q2xvdWR5"

// eu-lab-2: component without value[x], satisfied through extension-Observation.component.value
Instance: ObservationInvariantComponentValueExtension
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: urinalysis with a component reported as an attachment"
Description: "Urinalysis macro (dipstick) panel whose colour component is reported as a plain text attachment, conveyed through the R5 `component.value[x]` extension."
Usage: #example

* id = "a84be3b7-c986-4fdf-9ec5-bbe5f7f8de9e"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#24357-6 "Urinalysis macro (dipstick) panel - Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant"
* component[+].code = $loinc#5778-6 "Color of Urine"
* component[=].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.component.value"
* component[=].extension[=].valueAttachment
  * contentType = #text/plain
  * data = "QW1iZXI="

// eu-lab-2: component without value[x], satisfied through component.dataAbsentReason
Instance: ObservationInvariantComponentValueDataAbsentReason
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: urinalysis with a component without a result"
Description: "Urinalysis macro (dipstick) panel whose colour component carries no result. The reason is stated in `component.dataAbsentReason`."
Usage: #example

* id = "60e4df2e-0a92-4474-8e24-27de6bc0e654"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#24357-6 "Urinalysis macro (dipstick) panel - Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant"
* component[+].code = $loinc#5778-6 "Color of Urine"
* component[=].dataAbsentReason = $data-absent-reason#unknown

// eu-lab-2 is evaluated per component: every component here satisfies it on its
// own, each through a different branch of the expression.
Instance: ObservationInvariantMixedComponents
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: urinalysis with differently reported components"
Description: "Urinalysis macro (dipstick) panel showing the three ways a component result may be reported: a plain `value[x]`, an attachment conveyed through the R5 `component.value[x]` extension, and a `dataAbsentReason` where no result is available."
Usage: #example

* id = "56efe2cc-8eee-4c72-96d0-382507b3cfb3"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#24357-6 "Urinalysis macro (dipstick) panel - Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant"
* component[+].code = $loinc#5778-6 "Color of Urine"
* component[=].valueString = "Amber"
* component[+].code = $loinc#5767-9 "Appearance of Urine"
* component[=].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.component.value"
* component[=].extension[=].valueAttachment
  * contentType = #text/plain
  * data = "Q2xlYXI="
* component[+].code = $loinc#5769-5 "Bacteria [#/area] in Urine sediment by Microscopy high power field"
* component[=].dataAbsentReason = $data-absent-reason#not-performed
