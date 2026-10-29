#### Specimen containers

`container.extension[device]` references the [Device: Specimen Container](StructureDefinition-Device-specimen-container-eu-lab.html) profile. This describes the physical collection container and its additives. The device extension remains required once a `container` is supplied; the container itself remains optional. Container additives are recorded through the temporary additive extension on that Device, as `Specimen.container.additive[x]` is not used in this profile.

#### Implementation note: specimen source beyond the subject of record

`Specimen.subject` represents the *subject of record* (the chart/record the specimen belongs to).
In most cases, the specimen is collected from this same entity.

Use `extension[focus]` when the specimen source is associated with the subject of record, but is **not** identical to `Specimen.subject` (for example: animal, donor, fetus, implanted device, or environmental source).
