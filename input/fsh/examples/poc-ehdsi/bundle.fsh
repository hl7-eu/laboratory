Instance: BundleLabResultReportPOC
InstanceOf: BundleLabReportEu
Title: "Bundle Laboratory Result Report for POC"
Description: "Bundle Laboratory Result Report for POC"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-06T14:30:00+01:00"
* entry[composition].fullUrl = "urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* entry[composition].resource = Inline-Composition-laboratory-results-report-poc
* entry[diagnosticReport].fullUrl = "urn:uuid:f5d20fe5-6d14-46de-80ea-8124f427a754"
* entry[diagnosticReport].resource = Inline-Diagnostic-Report-laboratory-results-report-poc
* entry[patient].fullUrl = "urn:uuid:a3d70b1b-cd31-4b38-9008-e9b29d2cb769"
* entry[patient].resource = Inline-Patient-laboratory-results-report-poc
/* * entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[=].resource = Inline-Observation-laboratory-results-report-poc  */
* entry[serviceRequest].fullUrl = "urn:uuid:2e861278-2e99-4ffa-befa-049467a095b2"
* entry[serviceRequest].resource = Inline-ServiceRequest-laboratory-results-report-poc

Instance: Inline-Composition-laboratory-results-report-poc
InstanceOf: CompositionLabReportEu
Usage: #inline
* id = "4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
/* * extension[+].url = $composition-diagnostic-report-reference
* extension[=].valueReference = Reference(DiagnosticReport/3a743273-237a-446a-a8da-9e7521cce614) */
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* date = "2023-03-09T14:30:00+01:00"
* author[+].display = "Dr. Patrick Dempsey"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party = Reference(Organization/608b5309-2609-4d03-b6da-c758bfa1de70)
* custodian = Reference(Organization/608b5309-2609-4d03-b6da-c758bfa1de70)
* section[+].title = "Blood group lab result report"
* section[=].code = $loinc#26436-6 "LABORATORY STUDIES"
* section[=].code.text = "LABORATORY STUDIES"
* section[=].entry[+] = Reference(Observation/8bd279af-125a-4318-b461-ba5629b12e7f)

Instance: Inline-Diagnostic-Report-laboratory-results-report-poc
InstanceOf: DiagnosticReportLabEu
Usage: #inline
* code = $loinc#26436-6 "LABORATORY STUDIES"
* code.text = "LABORATORY STUDIES"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/4028a0b8-37fc-4491-a8e7-0f28e6fc59b4)
* status = #final
* category = #laboratory
* subject = Reference(urn:uuid:a3d70b1b-cd31-4b38-9008-e9b29d2cb769)
* effectiveDateTime = "2023-04-19T15:46:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"

Instance: Inline-Patient-laboratory-results-report-poc
InstanceOf: PatientEu
Usage: #inline
* id = "a3d70b1b-cd31-4b38-9008-e9b29d2cb769"
* identifier[+].type = $v2-0203#NIIP
* identifier[=].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[=].value = "740512852"
* identifier[+].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[=].value = "A225961454"
* identifier[+].type = $v2-0203#PPN
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[=].value = "5484136"
* name[+].family = "Doe"
* name[=].given[+] = "John"
* gender = #male
* birthDate = "2000-03-21"

Instance: Inline-Observation-laboratory-results-report-poc
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "8bd279af-125a-4318-b461-ba5629b12e7f"
* status = #final
* category[+] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Blood bank studies"
* code = LaboratoryLocalCS#883-9 "ABO group [Type] in Blood"
* code.text = "Blood Group"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2023-03-09T13:35:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"
* valueCodeableConcept = $sct#112144000 "Blood group A (finding)"
* valueCodeableConcept.text = "A"

Instance: Inline-Specimen-laboratory-results-report-poc
InstanceOf: SpecimenEu
Usage: #inline
* id = "3c9bd730-3ff9-40ee-9da1-4f3d5c526f13"
* status = #available
* type = $sct#119297000 "Blood specimen"
* type.text = "Blood specimen"

Instance: Inline-ServiceRequest-laboratory-results-report-poc
InstanceOf: ServiceRequestLabEu
Usage: #inline
* identifier.system = "http://example.org"
* identifier.value = "2e861278-2e99-4ffa-befa-049467a095b2"
* status = #active
* intent = #order
* code = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
