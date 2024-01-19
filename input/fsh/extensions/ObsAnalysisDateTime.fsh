Extension: ObsAnalysisDateTime
Id: observation-analysis-date-time
Title: "Observation AnalysisDateTime"
Description: "The time stamp associated with the generation of the analytical result."
Context: Observation
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
* ^extension[=].valueCode = #can-bind
* ^url = "http://hl7.org/fhir/StructureDefinition/observation-analysis-date-time"
* . 0..1
* . ^short = "Analytical result time stamp"
* . ^definition = "The time stamp associated with the generation of the analytical result."
* url = "http://hl7.org/fhir/StructureDefinition/observation-analysis-date-time" (exactly)
* value[x] 1..
* value[x] only dateTime