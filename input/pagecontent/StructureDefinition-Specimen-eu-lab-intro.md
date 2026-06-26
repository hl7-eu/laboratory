#### Implementation note: specimen source beyond the subject of record

`Specimen.subject` represents the *subject of record* (the chart/record the specimen belongs to).
In most cases, the specimen is collected from this same entity.

Use `extension[focus]` when the specimen source is associated with the subject of record, but is **not** identical to `Specimen.subject` (for example: animal, donor, fetus, implanted device, or environmental source).