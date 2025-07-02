// based on https://inera.atlassian.net/wiki/spaces/OITOF/pages/3354624510/1.3.3+Urinodling+kvantitativ+och+resistensbest+mning+SIR

Instance: mbReportBundle
InstanceOf: BundleLabReportEu
Title: "Bundle: NPU Microbiology Example"
Description: "Example bundle for a microbiology lab report using NPU codes."
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000001"
* type = #document
* identifier[0].system = "urn:oid:1.2.752.129.2.1.4.1" // Mapped from body/referral/identifier
* identifier[0].value = "LOAD-MOCKS-GMH-DEMO-9"
* timestamp = "2018-01-02T14:30:00+01:00" // Mapped from body/referral/timestamp
* entry[composition].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000002"
* entry[composition].resource = mbReportComposition
* entry[diagnosticReport].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000003"
* entry[diagnosticReport].resource = mbDiagnosticReport
* entry[patient].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000017" // Assuming a patient context
* entry[patient].resource = patientAnnaAndersson // Assuming a patient context
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000004"
* entry[observation][=].resource = labOrderOutcomeObservation
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000005"
* entry[observation][=].resource = labOrderOutcomeObservation1
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000006"
* entry[observation][=].resource = colonyCount1
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000007"
* entry[observation][=].resource = amoxicillinSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000008"
* entry[observation][=].resource = piperacillinTazobactamSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000009"
* entry[observation][=].resource = ciprofloxacinSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-00000000000a"
* entry[observation][=].resource = trimetoprimSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-00000000000b"
* entry[observation][=].resource = labOrderOutcomeObservation2
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-00000000000c"
* entry[observation][=].resource = colonyCount2
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-00000000000d"
* entry[observation][=].resource = amoxicillinKlavulansyraSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-00000000000e"
* entry[observation][=].resource = mecillinamSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-00000000000f"
* entry[observation][=].resource = nitrofurantoinSensitivity
* entry[observation][+].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000010"
* entry[observation][=].resource = trimetoprimSensitivity2
* entry[specimen].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000011"
* entry[specimen].resource = labSpecimen1 // Mapped from body/analysis/specimen
* entry[serviceRequest].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000012"
* entry[serviceRequest].resource = laboratoryServiceRequest // Mapped from body/referral
* entry[practitioner].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000013" // Mapped from body/referral/requester
* entry[practitioner].resource = practitionerJohannaOlsson // Mapped from body/referral/requester
* entry[practitionerRole].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000014"
* entry[practitionerRole].resource = practitionerRoleJohannaOlsson // Mapped from body/referral/requester
* entry[organization][0].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000015"
* entry[organization][0].resource = stockholmEmergency // Mapped from body/recipientUnit and header/accountableCareUnit
* entry[organization][1].fullUrl = "urn:uuid:7e4b1c10-1a2b-4c3d-8e5f-000000000016"
* entry[organization][1].resource = stockholmLab

Instance: mbReportComposition
InstanceOf: CompositionLabReportEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000002"
* status = #final
* type = http://loinc.org#11502-2 "Laboratory report"
* subject = Reference(patientAnnaAndersson) // Assuming a patient context
* date = "2018-01-02T14:30:00+01:00" // Mapped from body/referral/timestamp
* author[0] = Reference(practitionerJohannaOlsson) // Mapped from body/referral/requester
* title = "Urinodling kvantitativ och resistensbestämning SIR" // M
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].title = "Urinodling kvantitativ och resistensbestämning SIR" // Mapped from body/groupOfAnalyses/name
* section[lab-no-subsections].entry = Reference(labOrderOutcomeObservation)

Instance: mbDiagnosticReport
InstanceOf: DiagnosticReportLabEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000003"
* status = #final
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(mbReportComposition)
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(patientAnnaAndersson)

Instance: labOrderOutcomeObservation
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000004"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06096 "U(mittstr)—Bakterieodling" // Mapped from body/analysis/code and body/analysis/result/type
* subject = Reference(patientAnnaAndersson) // Assuming a patient context
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00" // Mapped from body/analysis/specimen/timestamp
* performer[0] = Reference(stockholmLab) // Mapped from body/recipientUnit
* hasMember[0] = Reference(labOrderOutcomeObservation1) // Mapped from body/analysis/result
* hasMember[1] = Reference(labOrderOutcomeObservation2) // Mapped from body/analysis/result/value/quantity

Instance: labOrderOutcomeObservation1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000005"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06096 "U(mittstr)—Bakterieodling" // Mapped from body/analysis/code and body/analysis/result/type
* subject = Reference(patientAnnaAndersson) // Assuming a patient context
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00" // Mapped from body/analysis/specimen/timestamp
* performer[0] = Reference(stockholmLab) // Mapped from body/recipientUnit
* valueCodeableConcept = http://snomed.info/sct#78065002 "Enterococcus faecalis" // Mapped from body/analysis/result/value/cv
* note[0].text = "100 000 CFU/mL" // Mapped from body/analysis/result/comment

Instance: colonyCount1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000006"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU58643 "U(mittstr)—Bakterie (ant)"
* valueQuantity.value = 100000 // Mapped from body/analysis/result/value/quantity
* valueQuantity.unit = "CFU/mL" // Mapped from body/analysis/result/value/quantity/unit
* valueQuantity.system = $ucum
* valueQuantity.code = #[CFU]/mL // Mapped from body/analysis/result/value/quantity/code
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = 2018-01-02T14:30:00+01:00 // Mapped from body/analysis/specimen/timestamp
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation1) // Mapped from body/analysis/result/related/triggeredBy
* performer[0] = Reference(stockholmLab) // Mapped from body/recipientUnit

Instance: amoxicillinSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000007"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06001 "Amoxicillin" // Mapped from body/analysis/result/related/code
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#131196009 "S" // Mapped from body/analysis/result/related/result/value/cv
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation1) // Mapped from body/analysis/result/related/triggeredBy

Instance: piperacillinTazobactamSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000008"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU07424 "Piperacillin+Tazobaktam"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#131196009 "S"
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation1) // Mapped from body/analysis/result/related/triggeredBy

Instance: ciprofloxacinSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000009"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06049 "Ciprofloxacin"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#30714006 "R" // Mapped to R - Resistant
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#R "Resistant"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation1) // Mapped from body/analysis/result/related/triggeredBy

Instance: trimetoprimSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-00000000000a"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06047 "Trimetoprim"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#264841006 "I" // Mapped to I - Intermediate
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#I "Intermediate"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation1) // Mapped from body/analysis/result/related/triggeredBy

Instance: labOrderOutcomeObservation2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-00000000000b"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06096 "U(mittstr)—Bakterieodling"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#112283007 "Escherichia coli"
* note[0].text = "100 000 CFU/mL"

Instance: colonyCount2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-00000000000c"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU58643 "U(mittstr)—Bakterie (ant)"
* valueQuantity.value = 100000 // Mapped from body/analysis/result/value/quantity
* valueQuantity.unit = "CFU/mL" // Mapped from body/analysis/result/value/quantity/unit
* valueQuantity.system = $ucum
* valueQuantity.code = #[CFU]/mL // Mapped from body/analysis/result/value/quantity/code
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00" // Mapped from body/analysis/specimen/timestamp
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation2) // Mapped from body/analysis/result/related/triggeredBy
* performer[0] = Reference(stockholmLab) // Mapped from body/recipientUnit

Instance: amoxicillinKlavulansyraSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-00000000000d"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06002 "Amoxicillin+Klavulansyra"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#131196009 "S"
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation2) // Mapped from body/analysis/result/related/triggeredBy

Instance: mecillinamSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-00000000000e"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06044 "Mecillinam"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#131196009 "S"
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation2) // Mapped from body/analysis/result/related/triggeredBy

Instance: nitrofurantoinSensitivity
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-00000000000f"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06048 "Nitrofurantoin"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#131196009 "S"
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation2) // Mapped from body/analysis/result/related/triggeredBy

Instance: trimetoprimSensitivity2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000010"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $npu#NPU06047 "Trimetoprim"
* subject = Reference(patientAnnaAndersson)
* specimen = Reference(labSpecimen1)
* effectiveDateTime = "2018-01-02T14:30:00+01:00"
* performer[0] = Reference(stockholmLab)
* valueCodeableConcept = http://snomed.info/sct#131196009 "S"
* interpretation[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(labOrderOutcomeObservation2) // Mapped from body/analysis/result/related/triggeredBy

Instance: labSpecimen1
InstanceOf: SpecimenEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000011"
* identifier[0].system = "LOAD-MOCKS" // Mapped from body/analysis/identifier
* identifier[0].value = "LOAD-MOCKS-GMH-DEMO-9"
* type = http://snomed.info/sct#258574006 "urine, midstream" // Mapped from body/analysis/specimen/material
* collection.collectedDateTime = "2018-01-02T14:30:00+01:00" // Mapped from body/analysis/specimen/timestamp

Instance: laboratoryServiceRequest
InstanceOf: ServiceRequestLabEu
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000012"
* identifier[0].system = "LOAD-MOCKS" // Mapped from body/referral/identifier
* identifier[0].value = "LOAD-MOCKS-GMH-DEMO-9"
* status = #completed // Assuming the outcome means the request is completed
* intent = #order
* code.text = "Urinodling" // Mapped from body/groupOfAnalyses/name
* subject = Reference(patientAnnaAndersson) // Assuming a patient context
* authoredOn = "2018-01-02T14:30:00+01:00" // Mapped from body/referral/timestamp
* requester = Reference(practitionerJohannaOlsson)
* performer[0] = Reference(Organization/stockholmLab) // Mapped from body/recipientUnit and header/accountableCareUnit

Instance: practitionerJohannaOlsson
InstanceOf: PractitionerEuCore
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000013"
* identifier[0].system = "urn:oid:1.2.752.129.2.1.4.1" // Mapped from body/referral/requester/id
* identifier[0].value = "TESTNMT00123-OJFG"
* name[0].given[0] = "Johanna"
* name[0].family = "Olsson"
* qualification[0].code.coding[0] = http://terminology.hl7.org/CodeSystem/v2-0360#MD // Physician
* qualification[0].code.text = "Läkare" // Mapped from body/referral

Instance: practitionerRoleJohannaOlsson
InstanceOf: PractitionerRoleEuCore
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000014"
* practitioner = Reference(practitionerJohannaOlsson) // Mapped from body/referral/requester
* organization = Reference(stockholmEmergency) // Mapped from body/referral/requester/orgUnit
* code.coding[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor

Instance: stockholmEmergency
InstanceOf: OrganizationEuCore
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000015"
* identifier[0].system = "urn:oid:1.2.752.129.2.1.4.1" // Mapped from body/recipientUnit/id and body/referral/requester/orgUnit/id
* identifier[0].value = "SE2321000198-019221"
* name = "Akutmottagning, Stockholm" // Mapped from body/recipientUnit/name and body/referral/requester/orgUnit/name

Instance: stockholmLab
InstanceOf: OrganizationEuCore
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000016"
* identifier[0].system = "urn:oid:1.2.752.129.2.1.4.1" // Mapped from body/recipientUnit/id and body/referral/requester/orgUnit/id
* identifier[0].value = "SE2321000198-12345"
* name = "Laboratoriemedicin Stockholm" // Mapped from body/recipientUnit/name and body/referral/requester/orgUnit/name

Instance: patientAnnaAndersson
InstanceOf: PatientEuCore
Usage: #example
* id = "7e4b1c10-1a2b-4c3d-8e5f-000000000017"
* name[0].given[0] = "Anna"
* name[0].family = "Andersson"
* birthDate = "1980-01-01"