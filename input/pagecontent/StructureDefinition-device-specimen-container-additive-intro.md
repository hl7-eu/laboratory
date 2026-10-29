This complex extension is a **temporary compatibility solution** for [FHIR R6 Device.additive](https://build.fhir.org/device-definitions.html#Device.additive) in FHIR R4. It describes material added to a container device by its manufacturer or subsequently by another party, including for specimen collection or initial processing.

The Specimen Container Device profile explicitly declares the extension as `extension[additive] 0..*`. Each repetition describes one additive:

| Child extension | Cardinality | R4 value type | R6 mapping |
| --- | --- | --- | --- |
| `substanceConcept` | 0..1 | CodeableConcept | `Device.additive.type.concept` |
| `substanceReference` | 0..1 | Reference(Substance) | `Device.additive.type.reference` |
| `quantity` | 0..1 | SimpleQuantity | `Device.additive.quantity` |

The invariant `device-additive-substance` requires a concept, a reference, or both. A quantity alone is invalid. If a child extension is present, its value is mandatory. The parent has no `value[x]`. When both substance representations are supplied, they must identify the same substance; this semantic consistency requires terminology or application validation.

The concept has a preferred binding to the Specimen Additive value set. Use the Substance: Specimen Additive Substance profile where possible for referenced substances. Quantity represents the amount of additive within the container, rather than the volume of specimen. It uses SimpleQuantity, so `comparator` is prohibited; UCUM units are recommended where applicable.

The two substance children jointly represent the mandatory R6 `Device.additive.type` CodeableReference. R6 also allows a reference to SubstanceDefinition, which is outside this R4 proposal's scope. The root extension maps to `Device.additive`; the mapping is also declared in the extension's StructureDefinition.

This local extension is intended to be replaced by the **standard R6-to-R4 cross-version extension once it becomes available and is suitable for use**. On migration, review the adopted extension's canonical URL, child structure and constraints, and transform existing instances accordingly. The R6 CI definition may evolve, so the mapping must be checked against the version adopted at that time.
