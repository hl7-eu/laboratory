// ============================================================================
// Microbiology — shared rules
//
// The microbiology profiles follow the conventions of the HL7 Europe Laboratory
// Semantic Workgroup ("Conventions for FHIR based Microbiology Result
// Reporting", white paper v0.4) and its terminology workbook. The rule sets
// here carry what the microbiology Observation profiles have in common, so
// that the profiles state only what differs between them.
// ============================================================================

// New content: maturity 1, standards status draft, resource status draft —
// the three must agree, otherwise the publisher flags them as inconsistent.
RuleSet: MicrobiologyDraftStatusEu
* insert SetFmmandStatusRule (1, draft)
* ^status = #draft
* ^experimental = false

RuleSet: MicrobiologyObservationCommonEu
* insert MicrobiologyDraftStatusEu

// The workflow relationship between diagnostic steps (white paper, chapter
// "Relationships between diagnostic steps"): the later observation points back
// at the one that caused it, e.g. identification -> positive culture,
// microscopy -> positive blood culture. The slice `triggeredBy` — the R5
// element pre-adopted for R4 through the cross-version extension — is
// inherited from the EU core medical test result; only its documentation is
// sharpened here. It is not a grouping mechanism; grouping uses hasMember.
* extension[triggeredBy]
  * ^short = "The observation that caused this one (reflex, follow-up or add-on testing)"
  * ^definition = "Identifies the observation(s) that triggered the performance of this observation, e.g. the positive culture that led to this identification. Recorded on the later observation and pointing back at the earlier one."
  * ^comment = "Pre-adoption of Observation.triggeredBy from FHIR R5. The type is usually `reflex`. Grouping of findings that belong together is expressed with hasMember, derivation of a result from another result with derivedFrom."

// The white paper asks for an explicit Specimen in every case, even where the
// test code already names the material: the specimen type lives in
// Specimen.type, coded with SNOMED CT, and the microscopy preparation
// (staining) lives in Specimen.processing.
* specimen 1..1
* specimen only Reference(SpecimenMicrobiologyEu)
* specimen ^short = "The specimen examined (required)"
* specimen ^comment = "The specimen shall always be represented explicitly, with its type in Specimen.type, even if the material is pre-coordinated in the test code. The SpecimenMicrobiologyEu profile requires the type and adds the staining procedure and the link to the parent specimen (isolate, material from a positive culture)."

// An indeterminate result is not a value (core principle): an examination that
// was performed but yielded no usable statement carries 82334004
// |Indeterminate| in dataAbsentReason, in every microbiology profile.
* dataAbsentReason from MicrobiologyDataAbsentReasonEuVs (extensible)
* dataAbsentReason ^comment = "82334004 |Indeterminate| is used for an examination that was performed but yielded no usable statement, e.g. an inhibited PCR, a contaminated culture or insufficient material. The other codes are those of the FHIR data-absent-reason value set."

// The method is to be given consistently in Observation.method, also where the
// LOINC code already pre-coordinates a broad method category (white paper,
// core principles).
* method 1..1
* method ^short = "Technique used, coded with SNOMED CT (required)"
* method ^comment = "The method is always given in Observation.method, also where an accepted test code pre-coordinates a method category: the LOINC method axis is broad (e.g. \"Molgen\"), SNOMED CT names the actual technique, and receivers can query by method only if every observation carries it. Where the technique is not known, the most general concept of the method value set is used (e.g. 278289002 |Microscopy technique|, 702658000 |Microbial culture|, 1156878000 |Molecular nucleic acid amplification technique|); where the value set has none, the data-absent-reason extension states that the method is unknown."

// ----------------------------------------------------------------------------
// Semi-quantitative amount of a single finding
//
// Microscopy frequently qualifies a finding with an amount — few, moderate,
// many, + to ++++. The white paper (chapter Microscopy, "Semi-quantitative
// findings") represents it as an Observation.component with the code
// 103392008 |Semi-quantitative value|, keeping the finding and its amount
// separately machine-processable. The workbook (sheet Microscopy, row 13)
// notes that a dedicated LOINC code has been requested; it replaces the
// SNOMED CT code once it exists.
// ----------------------------------------------------------------------------
RuleSet: MicrobiologySemiquantitativeComponentEu
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Sliced by component code"
* component contains semiquantitative 0..1
* component[semiquantitative]
  * ^short = "Semi-quantitative amount of the finding (few, moderate, many, + to ++++)"
  * ^definition = "The amount in which the finding reported in value[x] was observed, as a semi-quantitative grade."
  * ^comment = "The amount qualifies the finding; it does not replace it. The finding itself stays in Observation.value[x]."
// No display in the pattern: a pattern requires every stated property to
// match, and laboratories render the display differently.
* component[semiquantitative].code = $sct#103392008
* component[semiquantitative].value[x] only CodeableConcept
* component[semiquantitative].valueCodeableConcept from MicroscopySemiquantitativeEuVs (extensible)

// ----------------------------------------------------------------------------
// Preferred codes within an extensible binding
//
// The workbook gives two value sets for the code of a profile: all admitted
// codes, and the preferred ones that leave specimen and method to be
// post-coordinated (sheet Microscopy, F4). The element is bound extensibly to
// the first; the second is stated as an additional binding with the purpose
// `preferred` (tools extension, the R4 form of the R5 binding.additional).
// ----------------------------------------------------------------------------
RuleSet: MicrobiologyPreferredBindingEu(element, valueSet, documentation)
* {element} ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* {element} ^binding.extension[=].extension[+].url = "key"
* {element} ^binding.extension[=].extension[=].valueId = "preferred"
* {element} ^binding.extension[=].extension[+].url = "purpose"
* {element} ^binding.extension[=].extension[=].valueCode = #preferred
* {element} ^binding.extension[=].extension[+].url = "valueSet"
* {element} ^binding.extension[=].extension[=].valueCanonical = Canonical({valueSet})
* {element} ^binding.extension[=].extension[+].url = "documentation"
* {element} ^binding.extension[=].extension[=].valueMarkdown = "{documentation}"
