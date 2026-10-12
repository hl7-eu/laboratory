// Covers the collection body site backport (FHIR-57051) and the collector
// conveyed through the alternate-reference extension (FHIR-57901).

Instance: Specimen-collection-example
InstanceOf: SpecimenEu
Title: "Specimen: self collected capillary blood with a body site"
Description: """Example of a capillary blood specimen the patient collected themselves by a finger prick.

The body site is conveyed through the R5 `Specimen.collection.bodySite` cross-version extension, which carries the reference half of what became a `CodeableReference` in R5, and the collector through the `alternate-reference` extension, because FHIR R4 only allows a Practitioner or a PractitionerRole in `Specimen.collection.collector`."""
Usage: #example

* contained = FingerBodyStructureExample
* status = #available
* type = $sct#122554006 "Capillary blood specimen"
* subject = Reference(pat-lab-example)
* collection
  * collectedDateTime = "2025-04-08T07:40:00+02:00"
  * bodySite = $sct#48856004 "Skin structure of palmar surface of index finger"
  * bodySite.extension[bodySite].valueReference = Reference(FingerBodyStructureExample)
  * collector.display = "Collected by the patient"
  * collector.extension[collector].valueReference = Reference(pat-lab-example)

Instance: FingerBodyStructureExample
InstanceOf: BodyStructureEuCore
Title: "BodyStructure: finger prick site example"
Description: "Example of the body structure the capillary blood was collected from."
Usage: #inline
* extension[includedStructure].extension[structure].valueCodeableConcept = $sct#48856004 "Skin structure of palmar surface of index finger"
* patient = Reference(pat-lab-example)
