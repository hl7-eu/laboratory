// ============================================================================
// Interpretation standard
//
// A susceptibility category (S, I, R) is valid only for the standard and the
// version of the breakpoint table it was read from; the measured value (an
// MIC, a zone diameter) does not depend on it. The standard therefore
// qualifies the interpretation. Neither the white paper nor the workbook names
// an extension, and the FHIR extensions pack has none (interim position,
// SEM-18).
// ============================================================================

Extension: ObservationInterpretationStandard
Id: observation-interpretationStandard
Title: "Interpretation standard"
Description: """The standard, and the version of its breakpoint table, against which a result was interpreted, e.g. EUCAST 15.0 for a susceptibility category. It qualifies the interpretation it is attached to, and a coded value that repeats that interpretation; a measured value such as a minimum inhibitory concentration does not depend on it."""
* insert ExtensionContext(Observation.interpretation)
* insert MicrobiologyDraftStatusEu
* . 0..1
* . ^short = "Standard and version against which the result was interpreted"
* extension contains
    standard 1..1 and
    version 0..1
* extension[standard] ^short = "The standard, e.g. EUCAST or CLSI"
* extension[standard].value[x] only CodeableConcept
* extension[standard].valueCodeableConcept from SusceptibilityStandardEuVs (extensible)
* extension[version] ^short = "Version of the breakpoint table, e.g. 15.0"
* extension[version] ^comment = "Breakpoint tables are revised regularly, and the same measured value can fall into another category in another version. The version is recommended, so that the interpretation can be traced and re-evaluated."
* extension[version].value[x] only string
