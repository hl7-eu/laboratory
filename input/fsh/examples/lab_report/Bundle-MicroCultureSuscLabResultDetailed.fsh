Instance: BundleLabResultMicroCultureSusc
InstanceOf: BundleLabReportEu
Title: "Bundle: Microbiology Culture + Susceptibility"
Description: "Example of Laboratory Report (Bundle) with Microbiology Culture plus Susceptibility Results"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "V1CZ454557891308174803488707671420"
* type = #document
* timestamp = "2022-10-25T14:30:00+01:00"
* entry[composition].fullUrl = "urn:uuid:4789a3ee-92b1-41b2-9b97-83daacf2a239"
* entry[composition].resource = Inline-Composition-micro
* entry[patient].fullUrl = "urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b"
* entry[patient].resource = Inline-Patient-micro
* entry[diagnosticReport].fullUrl = "urn:uuid:b864303b-91ab-4e29-ad74-31a7d6566875"
* entry[diagnosticReport].resource = Inline-Diag-Report-micro
* entry[specimen].fullUrl = "urn:uuid:bab0016e-1800-4e54-b595-72bd9041ffbc"
* entry[specimen].resource = Inline-Specimen-micro
* entry[observation][+].fullUrl = "urn:uuid:40278a69-87aa-470f-a38f-bff1e8aee175"
* entry[observation][=].resource = Inline-Observation-gram-stain
* entry[observation][+].fullUrl = "urn:uuid:1097929f-890e-4e27-a31d-58599f3e2479"
* entry[observation][=].resource = Inline-Observation-wbc
* entry[observation][+].fullUrl = "urn:uuid:fcf220c3-7f3e-44f8-b669-48552a20fa0a"
* entry[observation][=].resource = Inline-Observation-gs-org1
* entry[observation][+].fullUrl = "urn:uuid:2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e"
* entry[observation][=].resource = Inline-Observation-gs-org1-quant
* entry[observation][+].fullUrl = "urn:uuid:331d513e-a57f-4464-9eec-25533aeb6d06"
* entry[observation][=].resource = Inline-Observation-gs-org2
* entry[observation][+].fullUrl = "urn:uuid:931c6459-0fb0-4f02-8268-08e6d94a8f5c"
* entry[observation][=].resource = Inline-Observation-gs-org2-quant
* entry[observation][+].fullUrl = "urn:uuid:8754019d-256b-4df9-94f2-f80c07e08d47"
* entry[observation][=].resource = Inline-Observation-aerobic-culture
* entry[observation][+].fullUrl = "urn:uuid:083ee3df-1381-4ed2-849f-77808eb81a36"
* entry[observation][=].resource = Inline-Observation-org-id1
* entry[observation][+].fullUrl = "urn:uuid:758d2270-a997-4a8f-872f-b3fbaef209fa"
* entry[observation][=].resource = Inline-Observation-org-id1-growth
* entry[observation][+].fullUrl = "urn:uuid:61f8e930-46e0-41ab-9448-0d1dc74925df"
* entry[observation][=].resource = Inline-Observation-org-id1-susc-panel
* entry[observation][+].fullUrl = "urn:uuid:85230b86-9b90-4faf-a750-d5fa82520ce9"
* entry[observation][=].resource = Inline-Observation-org-id1-susc-1
* entry[observation][+].fullUrl = "urn:uuid:1fb64f47-4272-43ae-a119-c3b4c3367829"
* entry[observation][=].resource = Inline-Observation-org-id1-susc-2
* entry[observation][+].fullUrl = "urn:uuid:af249f79-f487-4533-9935-d19ab7043724"
* entry[observation][=].resource = Inline-Observation-org-id1-susc-3
* entry[observation][+].fullUrl = "urn:uuid:a4469ca9-d0be-4c58-853a-44cea24484b8"
* entry[observation][=].resource = Inline-Observation-org-id1-susc-4
* entry[observation][+].fullUrl = "urn:uuid:d49839fe-515c-44b6-8d19-3cc5d48feb49"
* entry[observation][=].resource = Inline-Observation-org-id2
* entry[observation][+].fullUrl = "urn:uuid:1ada4aeb-37cd-4d76-9815-46f627f5036c"
* entry[observation][=].resource = Inline-Observation-org-id2-growth
* entry[observation][+].fullUrl = "urn:uuid:d1636a51-d6c7-48de-9de6-29d741c96937"
* entry[observation][=].resource = Inline-Observation-org-id2-susc-panel
* entry[observation][+].fullUrl = "urn:uuid:7b52c241-226a-43d3-ba6a-f2ca18d5b0dd"
* entry[observation][=].resource = Inline-Observation-org-id2-susc-1
* entry[observation][+].fullUrl = "urn:uuid:3923e71d-31b0-49d3-94f0-2c311600e54d"
* entry[observation][=].resource = Inline-Observation-org-id2-susc-2
* entry[observation][+].fullUrl = "urn:uuid:66e76861-53ed-4560-aa54-2efa5b4aff64"
* entry[observation][=].resource = Inline-Observation-org-id2-susc-3
* entry[observation][+].fullUrl = "urn:uuid:5601b27d-69a7-44eb-be1a-af632aa54109"
* entry[observation][=].resource = Inline-Observation-org-id2-susc-4
* entry[observation][+].fullUrl = "urn:uuid:5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e"
* entry[observation][=].resource = Inline-Observation-anaerobic-culture
* entry[+].fullUrl = "urn:uuid:1e139f41-4d0f-43dd-ad5a-98003c520349"
* entry[=].resource = Inline-Organization-micro

Instance: Inline-Diag-Report-micro
InstanceOf: DiagnosticReportLabEu
Usage: #inline
* id = "b864303b-91ab-4e29-ad74-31a7d6566875"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:4789a3ee-92b1-41b2-9b97-83daacf2a239)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)" // corrected to match lab composition category specificication
* code = $loinc#11502-2 "Laboratory report"
* code.text = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* specimen = Reference(urn:uuid:bab0016e-1800-4e54-b595-72bd9041ffbc)
* result[+] = Reference(urn:uuid:40278a69-87aa-470f-a38f-bff1e8aee175) // Inline-Observation-gram-stain
* result[+] = Reference(urn:uuid:8754019d-256b-4df9-94f2-f80c07e08d47) // Inline-Observation-aerobic-culture
* result[+] = Reference(urn:uuid:5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e) // Inline-Observation-anaerobic-culture

Instance: Inline-Composition-micro
InstanceOf: CompositionLabReportEu
Usage: #inline
* id = "4789a3ee-92b1-41b2-9b97-83daacf2a239"
/* * extension[+].url = $composition-diagnostic-report-reference
* extension[=].valueReference = Reference(DiagnosticReport/b864303b-91ab-4e29-ad74-31a7d6566875) */
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
//* category = $v2-0074#LAB "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)" // corrected to match lab composition category specificication
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* date = "2022-10-25T14:30:00+01:00"
* author[+].display = "MUDr. Aleš Procházka"
* title = "Laboratory Report Bacterial Aerobic & Anaerobic Culture and Susceptibility - 27 Dec, 2020 14:30"
* confidentiality = #N
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party = Reference(urn:uuid:1e139f41-4d0f-43dd-ad5a-98003c520349)
* custodian = Reference(urn:uuid:1e139f41-4d0f-43dd-ad5a-98003c520349)
* section[lab-subsections].title = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* section[lab-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-subsections].section[+].code.text = "Gram Stain"
* section[lab-subsections].section[=].title = "Gram Stain" // Title to be checked
* section[lab-subsections].section[=].entry = Reference(urn:uuid:40278a69-87aa-470f-a38f-bff1e8aee175) // Inline-Observation-gram-stain
* section[lab-subsections].section[+].code.text = "Aerobic Culture"
* section[lab-subsections].section[=].title = "Aerobic Culture" // Title to be checked
* section[lab-subsections].section[=].entry = Reference(urn:uuid:8754019d-256b-4df9-94f2-f80c07e08d47) // Inline-Observation-aerobic-culture Inline-Observation-aerobic-culture
* section[lab-subsections].section[+].code.text = "Anaerobic Culture"
* section[lab-subsections].section[=].title = "Anaerobic Culture" // Title to be checked
* section[lab-subsections].section[=].entry = Reference(urn:uuid:5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e) // Inline-Observation-anaerobic-culture Inline-Observation-anaerobic-culture

Instance: Inline-Patient-micro
InstanceOf: PatientEuCore
Usage: #inline
* id = "5bb42c3f-56fb-4bbc-b939-73910a6cce3b"
* identifier[+].type = $v2-0203#NIIP
* identifier[=].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[=].value = "740512852"
* identifier[+].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[=].value = "A225961454"
* identifier[+].type = $v2-0203#PPN
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[=].value = "5484136"
* name[+].family = "Očkovaný"
* name[=].given[+] = "František"
* gender = #male
* birthDate = "2000-03-21"

Instance: Inline-Organization-micro
InstanceOf: Organization
Usage: #inline
* id = "1e139f41-4d0f-43dd-ad5a-98003c520349"
// * identifier[+].system = "urn:oid:1.2.203" // this is a valid OID representing the Czech Republic, though it is not being recognized as valid by the IG Publisher
* identifier[+].system = "http://example.org/czech-orgs"
* identifier[=].value = "24341"
* name = "Ministry of Health of the Czech Republic"



Instance: Inline-Specimen-micro
InstanceOf: SpecimenEu
Usage: #inline
* id = "bab0016e-1800-4e54-b595-72bd9041ffbc"
* status = #available
* type = $sct#119365002 "Specimen from wound"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Inline-Observation-gram-stain
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "40278a69-87aa-470f-a38f-bff1e8aee175"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Gram Stain"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(urn:uuid:1097929f-890e-4e27-a31d-58599f3e2479) // Inline-Observation-wbc
* hasMember[+] = Reference(urn:uuid:fcf220c3-7f3e-44f8-b669-48552a20fa0a) // Inline-Observation-gs-org1
* hasMember[+] = Reference(urn:uuid:331d513e-a57f-4464-9eec-25533aeb6d06) // Inline-Observation-gs-org2

Instance: Inline-Observation-wbc
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "1097929f-890e-4e27-a31d-58599f3e2479"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"

Instance: Inline-Observation-gs-org1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "fcf220c3-7f3e-44f8-b669-48552a20fa0a"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
* hasMember[+] = Reference(urn:uuid:2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e) // Inline-Observation-gs-org1-quant

Instance: Inline-Observation-gs-org1-quant
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Observed Quantity"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"

Instance: Inline-Observation-gs-org2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "331d513e-a57f-4464-9eec-25533aeb6d06"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#87172008 "Gram-negative rods"
* hasMember[+] = Reference(urn:uuid:931c6459-0fb0-4f02-8268-08e6d94a8f5c) // Inline-Observation-gs-org2-quant

Instance: Inline-Observation-gs-org2-quant
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "931c6459-0fb0-4f02-8268-08e6d94a8f5c"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Observed Quantity"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Inline-Observation-aerobic-culture
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "8754019d-256b-4df9-94f2-f80c07e08d47"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Aerobic Culture"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(urn:uuid:083ee3df-1381-4ed2-849f-77808eb81a36) // Inline-Observation-org-id1
* hasMember[+] = Reference(urn:uuid:d49839fe-515c-44b6-8d19-3cc5d48feb49) // Inline-Observation-org-id2

Instance: Inline-Observation-org-id1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "083ee3df-1381-4ed2-849f-77808eb81a36"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* hasMember[+] = Reference(urn:uuid:758d2270-a997-4a8f-872f-b3fbaef209fa) // Inline-Observation-org-id1-growth
* hasMember[+] = Reference(urn:uuid:61f8e930-46e0-41ab-9448-0d1dc74925df) // Inline-Observation-org-id1-susc-panel

Instance: Inline-Observation-org-id1-growth
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "758d2270-a997-4a8f-872f-b3fbaef209fa"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Inline-Observation-org-id1-susc-panel
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "61f8e930-46e0-41ab-9448-0d1dc74925df"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(urn:uuid:85230b86-9b90-4faf-a750-d5fa82520ce9)
* hasMember[+] = Reference(urn:uuid:1fb64f47-4272-43ae-a119-c3b4c3367829)
* hasMember[+] = Reference(urn:uuid:af249f79-f487-4533-9935-d19ab7043724)
* hasMember[+] = Reference(urn:uuid:a4469ca9-d0be-4c58-853a-44cea24484b8)

Instance: Inline-Observation-org-id1-susc-1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "85230b86-9b90-4faf-a750-d5fa82520ce9"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18900-1 "Cephalothin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#S "Susceptible"

Instance: Inline-Observation-org-id1-susc-2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "1fb64f47-4272-43ae-a119-c3b4c3367829"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#20629-2 "levoFLOXacin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#R "Resistant"

Instance: Inline-Observation-org-id1-susc-3
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "af249f79-f487-4533-9935-d19ab7043724"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18961-3 "Oxacillin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#S "Susceptible"

Instance: Inline-Observation-org-id1-susc-4
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "a4469ca9-d0be-4c58-853a-44cea24484b8"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#19000-9 "Vancomycin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#S "Susceptible"

Instance: Inline-Observation-org-id2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "d49839fe-515c-44b6-8d19-3cc5d48feb49"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#40886007 "Klebsiella oxytoca"
* hasMember[+] = Reference(urn:uuid:1ada4aeb-37cd-4d76-9815-46f627f5036c) // Inline-Observation-org-id2-growth
* hasMember[+] = Reference(urn:uuid:d1636a51-d6c7-48de-9de6-29d741c96937) // Inline-Observation-org-id2-susc-panel

Instance: Inline-Observation-org-id2-growth
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "1ada4aeb-37cd-4d76-9815-46f627f5036c"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Microorganism Growth"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#263866000 "Scanty growth"

Instance: Inline-Observation-org-id2-susc-panel
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "d1636a51-d6c7-48de-9de6-29d741c96937"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(urn:uuid:7b52c241-226a-43d3-ba6a-f2ca18d5b0dd)
* hasMember[+] = Reference(urn:uuid:3923e71d-31b0-49d3-94f0-2c311600e54d)
* hasMember[+] = Reference(urn:uuid:66e76861-53ed-4560-aa54-2efa5b4aff64)
* hasMember[+] = Reference(urn:uuid:5601b27d-69a7-44eb-be1a-af632aa54109)

Instance: Inline-Observation-org-id2-susc-1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "7b52c241-226a-43d3-ba6a-f2ca18d5b0dd"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18864-9 "Ampicillin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 16
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#R "Resistant"

Instance: Inline-Observation-org-id2-susc-2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "3923e71d-31b0-49d3-94f0-2c311600e54d"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 0.5
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#S "Susceptible"

Instance: Inline-Observation-org-id2-susc-3
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "66e76861-53ed-4560-aa54-2efa5b4aff64"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18928-2 "Gentamicin [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 8
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#R "Resistant"

Instance: Inline-Observation-org-id2-susc-4
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "5601b27d-69a7-44eb-be1a-af632aa54109"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18932-4 "Imipenem [Susceptibility]"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $v3-ObservationInterpretation#S "Susceptible"

Instance: Inline-Observation-anaerobic-culture
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#635-3 "Bacteria identified in Specimen by Anaerobe culture"
* code.text = "Anaerobic Culture"
* subject = Reference(urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#264868006 "No growth"
