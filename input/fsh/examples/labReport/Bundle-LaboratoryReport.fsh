Instance: BundleLabResultReportPOC
InstanceOf: BundleLabReportEu
Title: "Bundle Laboratory Result Report for POC"
Description: "Bundle Laboratory Result Report for POC"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-09T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* entry[=].resource = Inline-Composition-laboratory-results-report-poc
* entry[+].fullUrl = "urn:uuid:3a743273-237a-446a-a8da-9e7521cce614"
* entry[=].resource = Inline-DiagReport-laboratory-results-report-poc
* entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
* entry[=].resource = Inline-Patient-laboratory-results-report-poc
* entry[+].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[=].resource = Inline-Observation-laboratory-results-report-poc



Instance: Inline-Composition-laboratory-results-report-poc
InstanceOf: Composition
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
* section[=].code = LaboratoryLocalCS#18717-9 "Blood bank studies"
* section[=].code.text = "Blood bank studies - Blood group test"
* section[=].entry[+] = Reference(Observation/8bd279af-125a-4318-b461-ba5629b12e7f)

Instance: Inline-DiagReport-laboratory-results-report-poc
InstanceOf: DiagnosticReportLabEu
Usage: #inline
* id = "3a743273-237a-446a-a8da-9e7521cce614"
* extension[diagnosticReportCompositionR5].valueReference = Reference(Inline-Composition-laboratory-results-report-poc)
* status = #final
* category = $v2-0074#MB "Microbiology"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Inline-Patient-laboratory-results-report-poc)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* result[+] = Reference(Inline-Observation-laboratory-results-report-poc)


Instance: Inline-Patient-laboratory-results-report-poc
InstanceOf: Patient
Usage: #inline
* id = "8472931c-fbd0-437b-9ed1-4f66472c78b5"
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
* category[+] = $v2-0074#MB "Microbiology"
* code = LaboratoryLocalCS#3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* code.text = "Acute Hepatitis Panel, reflex to confirmation"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"
* hasMember[+] = Reference(Observation/4e67180b-e419-4c11-8cbd-e946900a9dbe)

Instance: Inline-Observation-blood-group-parent
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "4e67180b-e419-4c11-8cbd-e946900a9dbe"
* status = #final
* category[+] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Blood bank studies"
* code = LaboratoryLocalCS#10331-7 "Rh [Type] in Blood"
* code.text = "Blood group and Rhesus Type"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2023-03-09T13:35:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"
* hasMember[+] = Reference(Observation/8dcb3ebb-cd97-4516-8902-a10a38aba5a8)

Instance: Inline-Observation-blood-group
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "8dcb3ebb-cd97-4516-8902-a10a38aba5a8"
* status = #final
* category[+] = $observation-category#laboratory
* category[+] = $v2-0074#BLB "Blood Bank"
* code.coding[+] = LaboratoryLocalCS#0020089 "Hepatitis B Surface Antigen"
* code.coding[+] = $loinc#5196-1 "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay"
* code.text = "Hepatitis B Surface Antigen"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2023-03-09T13:35:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"
* valueCodeableConcept = $sct#278147001 "Blood group O Rh(D) positive"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* referenceRange[+].type = $reference-range-meaning#normal "Normal Range"
* referenceRange[=].text = "Negative"