#### Notes on `valueString` vs `valueCodeableConcept.text`

If the result is purely free text without categorical meaning, **`Observation.valueString`** SHALL be used.

If the result is conceptually categorical (i.e. it represents a classification, interpretation, or selectable answer option), **`Observation.valueCodeableConcept`** SHALL be used.

If no formal coding system is available, the human-readable result SHALL be conveyed in **`Observation.valueCodeableConcept.text`** instead of using `valueString`.

This distinction ensures that categorical results remain semantically identifiable as coded data, even if only a textual representation is available.