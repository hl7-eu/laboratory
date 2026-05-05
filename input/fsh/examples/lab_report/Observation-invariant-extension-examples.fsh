Instance: ObservationInvariantTopLevelValueExtension
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: invariant test with top-level value extension"
Description: "Positive invariant example: no value[x], but extension-Observation.value is present."
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

Instance: ObservationInvariantComponentValueExtension
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: invariant test with component value extension"
Description: "Positive invariant example: component has no value[x], but extension-Observation.component.value is present."
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

Instance: ObservationInvariantComponentValueDataAbsentReason
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: invariant test with component dataAbsentReason"
Description: "Positive invariant example: component has no value[x], but component.dataAbsentReason is present."
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
