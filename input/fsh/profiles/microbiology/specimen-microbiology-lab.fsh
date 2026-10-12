// ============================================================================
// Microbiology specimen
//
// Two things the white paper places on the Specimen rather than on the
// Observation:
//
//   staining        Specimen.processing.procedure, < 37926009 |Microbial stain
//                   method| — the preparation of the material, kept apart from
//                   the microscopy technique in Observation.method
//   derivation      Specimen.parent — material from a positive culture, or an
//                   isolate, examined in a later step
// ============================================================================

Profile: SpecimenMicrobiologyEu
Parent: SpecimenEu
Id: Specimen-microbiology-eu-lab
Title: "Specimen: microbiology"
Description: """A specimen examined in microbiology: the primary clinical specimen, the material taken from a positive culture, or an isolate. Adds to the laboratory Specimen the staining as a processing step and makes the derivation chain through `parent` explicit."""
* insert MicrobiologyDraftStatusEu
* . ^short = "Microbiology specimen"

* type ^comment = "The specimen type is given here also where the test code pre-coordinates the material. For material taken from a positive blood culture a code such as 878861003 |Blood specimen in blood culture bottle| is used, for an isolate 119303007 |Microbial isolate|."

* parent ^short = "The specimen this one was derived from (primary specimen of an isolate or of a positive culture)"
* parent ^comment = "Carries the chain from the primary specimen to the isolate: microscopy of a positive blood culture or of an isolate references the derived specimen, which points at the primary specimen through parent."

* processing ^slicing.discriminator[0].type = #value
* processing ^slicing.discriminator[0].path = "procedure"
* processing ^slicing.rules = #open
* processing ^slicing.description = "Sliced by the processing procedure"
* processing contains staining 0..*
* processing[staining]
  * ^short = "Staining of the specimen for microscopy"
  * ^definition = "The staining procedure applied to prepare the specimen for the microscopic examination, e.g. Gram stain, acid-fast stain, Giemsa stain."
  * ^comment = "Staining is part of the preparation of the material and therefore specimen processing, not the observation method. The microscopy technique itself (light microscopy, fluorescence microscopy) is given in Observation.method."
* processing[staining].procedure 1..1
* processing[staining].procedure from MicrobialStainMethodEuVs (required)
