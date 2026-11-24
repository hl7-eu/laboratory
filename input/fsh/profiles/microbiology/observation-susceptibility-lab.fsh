// ============================================================================
// Antimicrobial susceptibility
//
// White paper, chapter "Phenotypic Susceptibility and Molecular Resistance
// Testing"; workbook sheet "Phenotypic susceptibility". One observation per
// antimicrobial tested; an antibiogram groups them (see the panel profile).
//
//   Observation.code            LOINC Susc, class ABXBACT, preferably without
//                               a method, e.g. 18943-1 |Meropenem [Susc]|
//   Observation.value[x]        the MIC or zone diameter (preferred), or the
//                               category S, I, R with the interpretation codes
//   Observation.interpretation  the category, with the standard (EUCAST, CLSI)
//   Observation.method          MIC, gradient strip, disk diffusion, ...
//
// Interim positions: SEM-18 (interpretation codes, coded result, standard),
// SEM-25 (methods), SEM-26 (units, comparator).
// ============================================================================

Profile: ObservationSusceptibilityEu
Parent: ObservationResultsLaboratoryEu
Id: Observation-susceptibility-eu-lab
Title: "Observation Results: antimicrobial susceptibility"
Description: """Susceptibility of an isolate to one antimicrobial, tested phenotypically. The result is the minimum inhibitory concentration (MIC) or the inhibition zone diameter, which is preferred, or the category (S, I, R) alone. The category is given in `interpretation`, with the standard and the version of its breakpoint table; a coded result repeats it. The technique is given in `method`.

The susceptibility results of one isolate are grouped by an [Observation Results: antibiogram](StructureDefinition-Observation-susceptibilityPanel-eu-lab.html)."""
* insert MicrobiologyObservationCommonEu
* ^purpose = "This profile constrains the laboratory Observation for the phenotypic susceptibility of an isolate to one antimicrobial, following the conventions of the HL7 Europe Laboratory Semantic Workgroup."
* . ^short = "Susceptibility of an isolate to one antimicrobial"
* obeys eu-lab-susc-1 and eu-lab-susc-2

* code from SusceptibilityCodeEuVs (extensible)
* insert MicrobiologyPreferredBindingEu(code, SusceptibilityCodePreferredEuVs, [[Preferred are the codes without a method; the method is given in Observation.method, which makes it easy to query all susceptibility results.]])
* code ^short = "The antimicrobial tested, as a LOINC Susc code"
* code ^comment = "A LOINC code with the property Susc and the class ABXBACT, naming the antimicrobial in the component, e.g. 18943-1 |Meropenem [Susceptibility]|. Preferred are the codes without a method; a code that pre-coordinates the method, e.g. 6652-2 |Meropenem [Susceptibility] by Minimum inhibitory concentration (MIC)|, is accepted, and the method is given in Observation.method as well. Codes for differential breakpoints name the route or the site of infection, e.g. 35783-0 |Cefuroxime.oral [Susceptibility]| or 103672-2 |Amoxicillin+Clavulanate [Susceptibility] for UTI|."

* value[x] only QuantityEuLab or CodeableConcept
* value[x] ^short = "MIC or zone diameter (preferred), or the category S, I, R"
* value[x] ^comment = "The quantitative result is preferred: the MIC in mg/L (EUCAST) or ug/mL (CLSI), the zone diameter in mm. Where only the category is available, it is the value, coded like the interpretation and repeated there (invariant eu-lab-susc-1); the interpretation standard then applies to the value as well. An indeterminate result is not a value; it is given in dataAbsentReason."
* valueQuantity from SusceptibilityUnitEuVs (extensible)
* valueQuantity.comparator ^short = "<= below the lowest, > above the highest tested concentration"
* valueQuantity.comparator ^comment = "A value outside the tested range SHALL be given with the comparator: <= when the isolate is inhibited at the lowest concentration tested, > when it grows at the highest. Without it the value reads as exact; with a breakpoint R > 8 mg/L, an MIC of > 8 is R, while an exact 8 is not. A validator cannot check this, because it does not know the tested range. A zone diameter without inhibition zone is given as the disk diameter, mostly 6 mm, as an exact value."
* valueCodeableConcept from SusceptibilityInterpretationEuVs (extensible)

* interpretation from SusceptibilityInterpretationEuVs (extensible)
* interpretation ^short = "The category S, I, R, with the standard"
* interpretation ^comment = "The HL7 v3 codes S, R, SDD, NS and IE; v3 I only for the CLSI category intermediate; the EUCAST category I (susceptible, increased exposure), which no v3 code covers, as 1306583007. Every interpretation states the standard and preferably the version of its breakpoint table."
* interpretation.extension contains ObservationInterpretationStandard named interpretationStandard 1..1
* interpretation.extension[interpretationStandard] ^short = "The standard and version the category was read from, e.g. EUCAST 15.0"

* method from SusceptibilityTechniqueEuVs (extensible)
* method ^short = "The technique: MIC, gradient strip, disk diffusion, ..."
* method ^comment = "708073008 |Minimum inhibitory concentration susceptibility test technique| for every MIC by dilution, manual or automated (a Dutch laboratory adds its national concept for manual or automated microdilution as a second coding); 703442003 for the gradient strip; 1303975003 for disk diffusion. Where no technique exists, a procedure from the hierarchy under 14788002 |Antimicrobial susceptibility test|. Where the technique is not known, the data-absent-reason extension states that the method is unknown; the value set has no general technique."

* specimen ^comment = "The isolate tested, a Specimen with the type 119303007 |Microbial isolate| that references the primary specimen through parent."
* extension[triggeredBy] ^comment = "Within an antibiogram the panel points back at the identification of the organism tested. A susceptibility result reported without a panel points back at the identification itself, with type `reflex`."

Invariant: eu-lab-susc-1
Description: "A coded result is repeated in the interpretation: if value[x] is a CodeableConcept, interpretation is present and contains every coding of the value."
Severity: #error
Expression: "value.ofType(CodeableConcept).exists() implies (interpretation.exists() and value.ofType(CodeableConcept).coding.select(system & '|' & code).subsetOf(%resource.interpretation.coding.select(system & '|' & code)))"

Invariant: eu-lab-susc-2
Description: "A quantitative result should be interpreted: if value[x] is a Quantity, interpretation should be present."
Severity: #warning
Expression: "value.ofType(Quantity).exists() implies interpretation.exists()"
