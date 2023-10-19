Instance: dr-lab-example
InstanceOf: DiagnosticReportLabEu
Usage: #example
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(comp-lab-example)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)" // corrected to match lab composition category specificication
* code = $loinc#11502-2 "Laboratory report"
* code.text = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* specimen.display = "Specimen from wound collected on October 25th, 2022"
* result[+] = Reference(obs-gram-stain) 
* result[+] = Reference(obs-aerobic-culture)
* result[+] = Reference(obs-anaerobic-culture)

Instance: comp-lab-example
InstanceOf: CompositionLabReportEu
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* category[studyType] = $loinc#26436-6 "Laboratory Studies (set)"
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(pat-lab-example)
* date = "2022-10-25T14:30:00+01:00"
* author[+].display = "MUDr. Aleš Procházka"
* title = "Laboratory Report Bacterial Aerobic & Anaerobic Culture and Susceptibility - 27 Dec, 2020 14:30"
* confidentiality = #N
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party.display = "Best Laboratory"
* custodian.display = "Best Laboratory"
* section[lab-subsections].title = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* section[lab-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-subsections].section[+].code.text = "Gram Stain"
* section[lab-subsections].section[=].title = "Gram Stain" // Title to be checked
* section[lab-subsections].section[=].entry = Reference(obs-gram-stain)
* section[lab-subsections].section[+].code.text = "Aerobic Culture"
* section[lab-subsections].section[=].title = "Aerobic Culture" // Title to be checked
* section[lab-subsections].section[=].entry = Reference(obs-aerobic-culture) // obs-aerobic-culture
* section[lab-subsections].section[+].code.text = "Anaerobic Culture"
* section[lab-subsections].section[=].title = "Anaerobic Culture" // Title to be checked
* section[lab-subsections].section[=].entry = Reference(obs-anaerobic-culture) // obs-anaerobic-culture

Instance: pat-lab-example
InstanceOf: PatientEuLab
Usage: #example
* identifier[+].type = $v2-0203#NIIP
* identifier[=].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[=].value = "740512852"
* identifier[+].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[=].value = "A225961454"
* identifier[+].type = $v2-0203#PPN
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[=].value = "5484136"
* name[+].family = "Očkovaný Moreira"
  * extension[fathersFamily][+].valueString = "Moreira"
  * extension[mothersFamily][+].valueString = "Očkovaný"
* name[=].given[+] = "František"
* gender = #male
* birthDate = "2000-03-21"


/* Instance: Specimen-micro
InstanceOf: SpecimenEu
Usage: #example
* id = "bab0016e-1800-4e54-b595-72bd9041ffbc"
* status = #available
* type = $sct#119365002 "Specimen from wound"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00" */

Instance: obs-gram-stain
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "40278a69-87aa-470f-a38f-bff1e8aee175" */
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Gram Stain"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(obs-wbc) // obs-wbc
* hasMember[+] = Reference(obs-gs-org1) // obs-gs-org1

Instance: obs-wbc
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "1097929f-890e-4e27-a31d-58599f3e2479" */
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"

Instance: obs-gs-org1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "fcf220c3-7f3e-44f8-b669-48552a20fa0a" */
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
* hasMember[+] = Reference(obs-gs-org1-quant) 

Instance: obs-gs-org1-quant
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e" */
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Observed Quantity"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"


Instance: obs-aerobic-culture
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "8754019d-256b-4df9-94f2-f80c07e08d47" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code.text = "Aerobic Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(obs-org-id1) 

Instance: obs-org-id1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "083ee3df-1381-4ed2-849f-77808eb81a36" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* hasMember[+] = Reference(obs-org-id1-growth) 
* hasMember[+] = Reference(obs-org-id1-susc-panel)

Instance: obs-org-id1-growth
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "758d2270-a997-4a8f-872f-b3fbaef209fa" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code.text = "Microorganism Growth"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: obs-org-id1-susc-panel
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "61f8e930-46e0-41ab-9448-0d1dc74925df" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(obs-org-id1-susc-1)
* hasMember[+] = Reference(obs-org-id1-susc-2)
* hasMember[+] = Reference(obs-org-id1-susc-3)
* hasMember[+] = Reference(obs-org-id1-susc-4)

Instance: obs-org-id1-susc-1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "85230b86-9b90-4faf-a750-d5fa82520ce9" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18900-1 "Cephalothin [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: obs-org-id1-susc-2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "1fb64f47-4272-43ae-a119-c3b4c3367829" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#20629-2 "levoFLOXacin [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: obs-org-id1-susc-3
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "af249f79-f487-4533-9935-d19ab7043724" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18961-3 "Oxacillin [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: obs-org-id1-susc-4
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "a4469ca9-d0be-4c58-853a-44cea24484b8" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#19000-9 "Vancomycin [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"


Instance: obs-anaerobic-culture
InstanceOf: ObservationResultsLaboratoryEu
Usage: #example
/* * id = "5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e" */
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#635-3 "Bacteria identified in Specimen by Anaerobe culture"
* code.text = "Anaerobic Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#264868006 "No growth"

Instance: prrole-lab-example
InstanceOf: PractitionerRoleEu
Usage: #example
/* * id = "88868d3e-7ab1-4ee5-983e-b979c4971f5c" */
* practitioner = Reference(pr-lab-example)

Instance: pr-lab-example
InstanceOf: PractitionerEu
Usage: #example
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "MTCORV58E63L294G"
* identifier.assigner.display = "MEF"
* name.family = "Cervone"
* name.given = "Matteo"
* name.prefix = "Dr"
* telecom[+].system = #email
* telecom[=].value = "matteo.cervone@gmail.it"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "matteo.cervone@pec.it"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "3478129873"
* telecom[=].use = #mobile
* address.line = "Via Milano 7"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00184"
* address.country = "100"

Instance: srv-request-example
InstanceOf: ServiceRequestLabEu
Usage: #example
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.9"
* identifier.value = "[NRE]"
* identifier.assigner.display = "Ministero delle Finanze"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #asap
* code = http://loinc.org#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(pat-lab-example)