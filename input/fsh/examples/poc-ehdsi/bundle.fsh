Instance: BundleLabResultReportPOC
InstanceOf: BundleLabReportEu
Title: "Bundle Laboratory Result Report for POC"
Description: "Bundle Laboratory Result Report for POC"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "ba91c64b-f30c-4137-a484-34bbba5e8804"
* type = #document
* timestamp = "2023-03-06T14:30:00+01:00"
* entry[composition].fullUrl = "urn:uuid:80709186-426d-4cdf-abba-034c4f80acb4"
* entry[composition].resource = Inline-Composition-laboratory-results-report-poc
* entry[diagnosticReport].fullUrl = "urn:uuid:f5d20fe5-6d14-46de-80ea-8124f427a754"
* entry[diagnosticReport].resource = Inline-Diagnostic-Report-laboratory-results-report-poc
* entry[patient].fullUrl = "urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda"
* entry[patient].resource = Inline-Patient-laboratory-results-report-poc
* entry[observation].fullUrl = "urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f"
* entry[observation].resource = Inline-Observation-laboratory-results-report-poc
* entry[serviceRequest].fullUrl = "urn:uuid:2e861278-2e99-4ffa-befa-049467a095b2"
* entry[serviceRequest].resource = Inline-ServiceRequest-laboratory-results-report-poc
* entry[organization].fullUrl = "urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70"
* entry[organization].resource = Inline-Organization-laboratory-results-report-poc
* entry[specimen].fullUrl = "urn:uuid:cadaf2e3-b707-4207-9b63-5c29ffece051"
* entry[specimen].resource = Inline-Specimen-laboratory-results-report-poc

Instance: Inline-Composition-laboratory-results-report-poc
InstanceOf: CompositionLabReportEu
Usage: #inline
* id = "80709186-426d-4cdf-abba-034c4f80acb4"
/* * extension[+].url = $composition-diagnostic-report-reference
* extension[=].valueReference = Reference(DiagnosticReport/3a743273-237a-446a-a8da-9e7521cce614) */
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)" 
* category[specialty] = $sct#394596001	"Chemical pathology"
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(Patient/1d252ca0-803c-464c-87d5-f12f73c12eda)
* date = "2023-03-09T14:30:00+01:00"
* author[+].display = "Dr. Patrick Dempsey"
* title = "Laboratory Report - 10 March, 2023 14:30"
* confidentiality = #N
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party = Reference(Organization/608b5309-2609-4d03-b6da-c758bfa1de70)
* custodian = Reference(Organization/608b5309-2609-4d03-b6da-c758bfa1de70)
* section[+].title = "Blood group lab result report"
* section[=].code = $loinc#26436-6 "Laboratory studies (set)"
* section[=].code.text = "LABORATORY STUDIES"
//* section[=].entry[+] = Reference(Observation/8bd279af-125a-4318-b461-ba5629b12e7f)
* section[=].entry[+] = Reference(urn:uuid:8bd279af-125a-4318-b461-ba5629b12e7f)

Instance: Inline-Diagnostic-Report-laboratory-results-report-poc
InstanceOf: DiagnosticReportLabEu
Usage: #inline
* code = $loinc#26436-6 "Laboratory studies (set)"
* code.text = "LABORATORY STUDIES"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/80709186-426d-4cdf-abba-034c4f80acb4)
* status = #final
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)" 
* category[specialty] = $sct#394596001	"Chemical pathology"
* subject = Reference(urn:uuid:1d252ca0-803c-464c-87d5-f12f73c12eda)
* effectiveDateTime = "2023-04-19T15:46:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"

Instance: Inline-Patient-laboratory-results-report-poc
InstanceOf: PatientEu
Usage: #inline
* id = "1d252ca0-803c-464c-87d5-f12f73c12eda"
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
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Blood bank studies"
* code = $loinc#883-9 "ABO group [Type] in Blood"
* code.text = "Blood Group"
* subject = Reference(Patient/1d252ca0-803c-464c-87d5-f12f73c12eda)
* effectiveDateTime = "2023-03-09T13:35:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"
* valueCodeableConcept = $sct#112144000 "Blood group A (finding)"
* valueCodeableConcept.text = "A"

Instance: Inline-Specimen-laboratory-results-report-poc
InstanceOf: SpecimenEu
Usage: #inline
* id = "cadaf2e3-b707-4207-9b63-5c29ffece051"
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
* subject = Reference(Patient/1d252ca0-803c-464c-87d5-f12f73c12eda)
* specimen = Reference(Specimen/cadaf2e3-b707-4207-9b63-5c29ffece051)

Instance: Inline-Organization-laboratory-results-report-poc
InstanceOf: OrganizationUvIps
Usage: #inline
* id = "608b5309-2609-4d03-b6da-c758bfa1de70"
* name = "SAN RAFFAELE NOMENTANA"
* telecom.system = #phone
* telecom.value = "390 666 0581"
* telecom.use = #work
* address.line = "Via Emilio Praga 39"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00137"
* address.country = "100"
