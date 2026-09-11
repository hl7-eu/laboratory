// Covers the statusReason extension on the observation and the report (FHIR-57208)
// and DiagnosticReport.media, which replaces the removed attachment section (FHIR-57444).

Instance: obs-status-reason-example
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: cancelled result with a status reason"
Description: """Example of a result that was cancelled because the specimen was insufficient.

The guide asks for the statuses amended, corrected, cancelled and entered-in-error to be accompanied by the reason, conveyed in the `statusReason` extension added for FHIR-57208. A cancelled observation carries no value, which `eu-lab-1` allows."""
Usage: #example

* status = #cancelled
* extension[statusReason].valueCodeableConcept = $sct#281268007 "Insufficient specimen"
* category[laboratory] = $observation-category#laboratory
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2025-04-08T08:20:00+02:00"
* performer[+].display = "MUDr. Aleš Procházka"

Instance: dr-status-reason-media-example
InstanceOf: DiagnosticReportLabEu
Title: "DiagnosticReport: corrected report with a status reason and additional data"
Description: """Example of a report reissued after a correction, with the scanned instrument printout attached. The previous result had been entered in error.

The reason for the `corrected` status is conveyed in the `statusReason` extension added for FHIR-57208. The image is conveyed through `DiagnosticReport.media`, which is where additional data belongs since the attachment section was removed for FHIR-57444. In FHIR R4 `media.link` points at a `Media` resource, so the `DocumentReference` is linked through the `alternate-reference` extension instead."""
Usage: #example

* contained = SmearImageDocumentReferenceExample
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(comp-lab-example)
* extension[statusReason].valueCodeableConcept = $sct#723510000 "Entered in error"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9a6f0f0e-5d6b-4f6a-9a9f-2a2f0f2b8a11"
* status = #corrected
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2025-04-08T13:00:00+02:00"
* performer[+].display = "MUDr. Aleš Procházka"
* result[+] = Reference(obs-corrected-glucose-example)
* media
  * comment = "Scanned instrument printout the corrected result is based on."
  * link.display = "Linked through the cross-version extension 'link'"
  * link.extension[link].valueReference = Reference(SmearImageDocumentReferenceExample)

Instance: SmearImageDocumentReferenceExample
InstanceOf: DocumentReference
Title: "DocumentReference: instrument printout example"
Description: "Example of the additional data associated with the report."
Usage: #inline
* status = #current
* type = $loinc#11502-2 "Laboratory report"
* content.attachment
  * contentType = #image/png
  * title = "Instrument printout"
  * url = "http://example.org/images/printout-0000123.png"

Instance: obs-corrected-glucose-example
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: corrected glucose result"
Description: "The result the corrected report is issued for."
Usage: #example

* status = #corrected
* category[laboratory] = $observation-category#laboratory
* code = $loinc#14749-6 "Glucose [Moles/volume] in Serum or Plasma"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2025-04-08T08:20:00+02:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity = 5.4 'mmol/L' "mmol/L"
