Instance: SimpleChemistryResultReport
InstanceOf: BundleLabReportEu
Title: "Laboratory Result Report"
Description: "Laboratory Result Report Example includes one section with single study type:
- Chemistry study
with two observations expressed in LOINC as well as Czech national codes.
Administrative part of the example was taken from Italian example report bundle, so there might be some inconsistencies."
Usage: #example
* identifier.system = "urn:oid:2.16.840.1.113883.2.51.1.1"
* identifier.value = "8ccab76a-82ed-403e-b974-6b28022b0997"
* identifier.assigner.display = "HL7 Europe"
* type = #document
* timestamp = "2023-03-27T13:13:19+02:00"
* entry[composition].fullUrl = "urn:uuid:26032a57-083a-4ddf-b019-e566ae02f740"  // composition
* entry[composition].resource = Inline-Instance-for-Composition-26032a57-083a-4ddf-b019-e566ae02f740
* entry[patient].fullUrl = "urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8" // Patient
* entry[patient].resource = Inline-Patient-de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8
* entry[specimen][+].fullUrl = "urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb" // Specimen 1
* entry[specimen][=].resource = Inline-Instance-for-Specimen-5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb
* entry[specimen][+].fullUrl = "urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91"  // Specimen 2
* entry[specimen][=].resource = Inline-Instance-Specimen-25dfb673-e7d6-43d0-b50b-6739f1ea9c91
* entry[practitionerRole][+].fullUrl = "urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c"  // Author 1: Practitioner role
* entry[practitionerRole][=].resource = Inline-Instance-for-PractiotionerRole-88868d3e-7ab1-4ee5-983e-b979c4971f5c
* entry[practitioner][+].fullUrl = "urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2"  // Author 1: Practitioner
* entry[practitioner][=].resource = Inl-Instance-Practitioner-ab279a0b-320f-483b-9a5d-f1f7e8ceacb2
* entry[practitionerRole][+].fullUrl = "urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30"  // Author 2: Practitioner role
* entry[practitionerRole][=].resource = Inline-Instance-for-PractitionerRole-84b2e517-abc2-4268-975d-b12fa8174d30
* entry[practitioner][+].fullUrl = "urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f"  // Author 2: Practitioner
* entry[practitioner][=].resource = Inline-Instance-for-IT-CDA2FHIR-68740937-f732-4ff9-a2e4-bf502d2d125f
* entry[practitioner][+].fullUrl = "urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09"  // Observation Performer: Practitioner (lab technitian)
* entry[practitioner][=].resource = Inl-Ins-Lab-technician-e512e2e2-9600-4c69-a269-af3ab5421e09
* entry[organization][+].fullUrl = "urn:uuid:ce122b36-f942-4cee-8c6d-b13ece8cf23c" // custodian: Organization
* entry[organization][=].resource = ce122b36-f942-4cee-8c6d-b13ece8cf23c
* entry[practitioner][+].fullUrl = "urn:uuid:0bbabe57-7c43-4211-9e19-81fcec65686d"  // profesisonal attester: Practitioner
* entry[practitioner][=].resource = Inline-Instance-for-IT-CDA2FHIR-0bbabe57-7c43-4211-9e19-81fcec65686d
* entry[practitionerRole][+].fullUrl = "urn:uuid:84476dc3-a732-455f-910e-f2b44428dcc9"  // legal attester: PractitionerRole
* entry[practitionerRole][=].resource = 84476dc3-a732-455f-910e-f2b44428dcc9
* entry[practitioner][+].fullUrl = "urn:uuid:8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3"  // legal attester: Practitioner
* entry[practitioner][=].resource = 8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3
* entry[practitionerRole][+].fullUrl = "urn:uuid:13792187-4721-4309-a8a4-4a57ffb4e6a1"  // attester: practitioner role
* entry[practitionerRole][=].resource = Inline-Instance-for-IT-CDA2FHIR-13792187-4721-4309-a8a4-4a57ffb4e6a1
* entry[practitioner][+].fullUrl = "urn:uuid:852cec21-4ff9-4cea-b86d-00de92b46894"  // attester: practitioner
* entry[practitioner][=].resource = Inline-Instance-for-IT-CDA2FHIR-852cec21-4ff9-4cea-b86d-00de92b46894
* entry[serviceRequest][+].fullUrl = "urn:uuid:1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"  // order:service request
* entry[serviceRequest][=].resource = Inline-ServiceRequest-for-IT-CDA2FHIR
* entry[practitionerRole][+].fullUrl = "urn:uuid:1b4b120e-0371-4878-b4c9-b69434e84c72"  // event.detail: practitioner role
* entry[practitionerRole][=].resource = Inline-Instance-for-IT-CDA2FHIR-1b4b120e-0371-4878-b4c9-b69434e84c72
* entry[practitioner][+].fullUrl = "urn:uuid:eb62a039-7e02-44cb-ba17-7e4fb42acdde"  // event.detail: practitioner
* entry[practitioner][=].resource = eb62a039-7e02-44cb-ba17-7e4fb42acdde
* entry[organization][+].fullUrl = "urn:uuid:508f4b29-09ca-4c94-8343-657f1923303a"  // event.detail: organization
* entry[organization][=].resource = Inline-Instance-for-IT-CDA2FHIR-508f4b29-09ca-4c94-8343-657f1923303a
* entry[organization][+].fullUrl = "urn:uuid:206fa15d-51ae-4f3d-b8d0-71ee6290ff52"  // event.detail.organization.partof: organization
* entry[organization][=].resource = Inline-Instance-for-IT-CDA2FHIR-206fa15d-51ae-4f3d-b8d0-71ee6290ff52
* entry[diagnosticReport][+].fullUrl = "urn:uuid:5679723c-4fae-4ba7-9f09-5438a827bfda"  // diagnostic report
* entry[diagnosticReport][=].resource = Inline-Instance-for-IT-CDA2FHIR-5679723c-4fae-4ba7-9f09-5438a827bfda
* entry[observation][+].fullUrl = "urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee"  // observation 1
* entry[observation][=].resource = Inline-Instance-for-Observation-763f7902-8103-4d10-8bd1-546a726d43ee
* entry[observation][+].fullUrl = "urn:uuid:18bd102e-0abf-42b0-b4e6-97e47fd385eb"  // observation 2
* entry[observation][=].resource = Inline-Instance-for-Observation-18bd102e-0abf-42b0-b4e6-97e47fd385eb

Instance: Inline-Instance-for-Composition-26032a57-083a-4ddf-b019-e566ae02f740
InstanceOf: CompositionLabReportEu
Usage: #inline

* extension[information-recipient]
  * valueReference = Reference(urn:uuid:508f4b29-09ca-4c94-8343-657f1923303a)
    * display = "Nuovo Ospedale S.Agostino (MO)"

* extension[basedOn-order-or-requisition].valueReference = Reference(Inline-ServiceRequest-for-IT-CDA2FHIR)

* id = "26032a57-083a-4ddf-b019-e566ae02f740"
* language = #cs-CZ
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.2.120.4.4"
* identifier.value = "c030702.TSTSMN63A01F205H.20220325112426.TSS1Tkju"
* identifier.assigner.display = "Regione Lazio"
* status = #final
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* type = http://loinc.org#11502-2 "Laboratory report"
* type.text = "Laboratorní zpráva"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* date = "2022-03-30T11:24:26+01:00"
* author[+] = Reference(urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c)
* author[+] = Reference(urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30)
* title = "Laboratorní zpráva"
* confidentiality = #N
* attester[+].mode = #professional
* attester[=].party = Reference(urn:uuid:0bbabe57-7c43-4211-9e19-81fcec65686d)
* attester[+].mode = #legal
* attester[=].time = "2022-03-25T11:00:00+01:00"
* attester[=].party = Reference(urn:uuid:84476dc3-a732-455f-910e-f2b44428dcc9)
* attester[+].mode = #professional
* attester[=].time = "2022-03-25T11:00:00+01:00"
* attester[=].party = Reference(urn:uuid:13792187-4721-4309-a8a4-4a57ffb4e6a1)
* custodian = Reference(urn:uuid:ce122b36-f942-4cee-8c6d-b13ece8cf23c)
* event.period.start = "2022-03-24T11:24:26+01:00"
* event.detail = Reference(urn:uuid:1b4b120e-0371-4878-b4c9-b69434e84c72)
* section[lab-subsections].title = "Laboratory examinations"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"
* section[lab-subsections].code.text = "Laboratory studies"
* section[lab-subsections].section[+].title = "Urine examinations"  // this title should be aligned with ibservation codes
* section[lab-subsections].section[=].code.coding[+] = http://loinc.org#18729-4 "Urinalysis studies (set)"
* section[lab-subsections].section[=].code.coding[+] = urn:oid:2.16.840.1.113883.2.9.2.30.6.11#0090334.02 "XXX"
* section[lab-subsections].section[=].code.text = "ESAMI DELLE URINE"
* section[lab-subsections].section[=].text.status = #generated
// ToDo: correct html text
* section[lab-subsections].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><table id=\"nota1\"><thead><tr><th>Esame</th><th>Metodo utilizzato per l'esame</th><th>Materiale utilizzato per l'esame</th><th>Risultato dell'esame</th><th>Commenti e note</th><th>Unità di Misura</th><th>Range di Riferimento</th><th>Criteri per il range di riferimento</th><th>Interpretazione</th><th>Allegati multimediali</th></tr></thead><tbody><tr><td>Microalbumina massa/volume in urine</td><td/><td>Urine</td><td>20</td><td/><td>mg/L</td><td> 0 - 20 </td><td/><td>N</td><td/></tr></tbody></table></li></ul></div>"
* section[lab-subsections].section[=].entry = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)

* section[lab-subsections].section[+].title = "Blood examinations"  // this title should be aligned with ibservation codes
* section[lab-subsections].section[=].code.coding[+] = http://loinc.org#18719-5 "Chemistry studies (set)"
* section[lab-subsections].section[=].code.text = "Examination of blood"
* section[lab-subsections].section[=].text.status = #generated
// ToDo: correct html text
* section[lab-subsections].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><table id=\"nota1\"><thead><tr><th>Esame</th><th>Metodo utilizzato per l'esame</th><th>Materiale utilizzato per l'esame</th><th>Risultato dell'esame</th><th>Commenti e note</th><th>Unità di Misura</th><th>Range di Riferimento</th><th>Criteri per il range di riferimento</th><th>Interpretazione</th><th>Allegati multimediali</th></tr></thead><tbody><tr><td>Microalbumina massa/volume in urine</td><td/><td>Urine</td><td>20</td><td/><td>mg/L</td><td> 0 - 20 </td><td/><td>N</td><td/></tr></tbody></table></li></ul></div>"
* section[lab-subsections].section[=].entry = Reference(urn:uuid:18bd102e-0abf-42b0-b4e6-97e47fd385eb)



Instance: Inline-Patient-de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8
InstanceOf: PatientEu
Usage: #inline
* id = "de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8"
* identifier[+].type = $v2-0203#NIIP
//* identifier[=].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[=].system = "https://ncez.mzcr.cz/standards/fhir/sid/rcis"
* identifier[=].value = "740512852"
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/rid"
* identifier[=].value = "456789123"
* identifier[+].type = $v2-0203#PPN
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[=].value = "5484136"
* name[+].family = "Očkovaný"
* name[=].given[+] = "František"
* name[=].text = "František Očkovaný"
* gender = #male
* birthDate = "2000-03-21"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Malé náměstí 13a, 150 00, Praha 5"
* address[=].line[+] = "Malé náměstí 13a"
* address[=].line[=].extension[Streetname].valueString = "Malé náměstí"
* address[=].line[=].extension[Housenumber].valueString = "13a"
* address[=].city = "Praha 5"
* address[=].postalCode = "150 00"
* address[=].country = "CZ"
* telecom[+].system = #email
* telecom[=].value = "frantisek.ockovany@gmail.com"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+420332244556"
* telecom[=].use = #mobile

* contact[+].relationship.coding[+] = $v3-RoleCode#MTH // "matka"
* contact[=].relationship.coding[+] = $v2-0131#N // "příbuzný"
* contact[=].name.use = #usual
* contact[=].name.family = "Mrakomorová"
* contact[=].name.given[+] = "Biologická"
* contact[=].name.given[+] = "Matka"
* contact[=].name.text = "Biologická Matka Mrakomorová"
* contact[=].telecom[+].use = #mobile
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].value = "+420 604 123 456"

* contact[+].relationship.coding[+] = $v3-RoleCode#FRND // "přítel/přítelkyně"
* contact[=].relationship.coding[+] = $v2-0131#C // "Emergentní kontakt"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420 601 111 111"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
* contact[=].address[=].line[+] = "Horná ulica 18"
* contact[=].address[=].line[=].extension[Streetname].valueString = "Horná ulica"
* contact[=].address[=].line[=].extension[Housenumber].valueString = "18"
* contact[=].address[=].city = "Trenčín"
* contact[=].address[=].postalCode = "123 45"
* contact[=].address[=].country = "SK"

* communication.language = urn:ietf:bcp:47#cs
* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* generalPractitioner.identifier.value = "123456789"
* generalPractitioner.display = "MUDr. Josef Švejk"


Instance: Inline-Instance-for-Specimen-5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb
InstanceOf: SpecimenEu
Usage: #inline
* id = "5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb"
* type = $sct#122575003	"Urine specimen"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-Specimen-25dfb673-e7d6-43d0-b50b-6739f1ea9c91
InstanceOf: SpecimenEu
Usage: #inline
* id = "25dfb673-e7d6-43d0-b50b-6739f1ea9c91"
* type = $sct#119297000	"Blood specimen"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-for-PractiotionerRole-88868d3e-7ab1-4ee5-983e-b979c4971f5c
InstanceOf: PractitionerRoleEu
Usage: #inline
* id = "88868d3e-7ab1-4ee5-983e-b979c4971f5c"
* practitioner = Reference(urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2)

Instance: Inl-Instance-Practitioner-ab279a0b-320f-483b-9a5d-f1f7e8ceacb2
InstanceOf: PractitionerEu
Usage: #inline
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

Instance: Inline-Instance-for-PractitionerRole-84b2e517-abc2-4268-975d-b12fa8174d30
InstanceOf: PractitionerRoleEu
Usage: #inline
* id = "84b2e517-abc2-4268-975d-b12fa8174d30"
* practitioner = Reference(urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f)

Instance: Inline-Instance-for-IT-CDA2FHIR-68740937-f732-4ff9-a2e4-bf502d2d125f
InstanceOf: PractitionerEu
Usage: #inline
* id = "68740937-f732-4ff9-a2e4-bf502d2d125f"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "FPSSBN85G54D398H"
* identifier.assigner.display = "MEF"
* name.family = "Mancusi"
* name.given = "Filippo"

Instance: ce122b36-f942-4cee-8c6d-b13ece8cf23c
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.2"
* identifier.value = "120148"
* identifier.assigner.display = "Ministero della Salute"
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

Instance: Inline-Instance-for-IT-CDA2FHIR-0bbabe57-7c43-4211-9e19-81fcec65686d
InstanceOf: PractitionerEu
Usage: #inline
* id = "0bbabe57-7c43-4211-9e19-81fcec65686d"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "MURRSI88Y67R012G"
* identifier.assigner.display = "MEF"
* name.family = "Rossi"
* name.given = "Maura"
* telecom.system = #phone
* telecom.value = "062866794"
* telecom.use = #work

Instance: Inl-Ins-Lab-technician-e512e2e2-9600-4c69-a269-af3ab5421e09
InstanceOf: PractitionerEu
Usage: #inline
* id = "e512e2e2-9600-4c69-a269-af3ab5421e09"
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier.value = "SOMNUMBER"
* identifier.assigner.display = "NRZP"
* name.family = "Technik"
* name.given = "Laboratorní"
* telecom.system = #phone
* telecom.value = "603 123 456"
* telecom.use = #work


Instance: 84476dc3-a732-455f-910e-f2b44428dcc9
InstanceOf: PractitionerRoleEu
Usage: #inline
* practitioner = Reference(urn:uuid:8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3)

Instance: 8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3
InstanceOf: PractitionerEu
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "GPSDGK80E76C765V"
* identifier.assigner.display = "MEF"
* name.family = "Righi"
* name.given = "Federico"
* name.prefix = "Dttr."
* telecom[+].system = #email
* telecom[=].value = "righi.federico@gmail.com"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "330987986"
* telecom[=].use = #mobile
* address.line = "Via Corvetto 3"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00164"
* address.country = "100"

Instance: Inline-Instance-for-IT-CDA2FHIR-13792187-4721-4309-a8a4-4a57ffb4e6a1
InstanceOf: PractitionerRoleEu
Usage: #inline
* id = "13792187-4721-4309-a8a4-4a57ffb4e6a1"
* practitioner = Reference(urn:uuid:852cec21-4ff9-4cea-b86d-00de92b46894)

Instance: Inline-Instance-for-IT-CDA2FHIR-852cec21-4ff9-4cea-b86d-00de92b46894
InstanceOf: PractitionerEu
Usage: #inline
* id = "852cec21-4ff9-4cea-b86d-00de92b46894"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "RBTAMA67H99H467D"
* identifier.assigner.display = "MEF"
* name.family = "Rossi"
* name.given = "Roberta"
* telecom[+].system = #email
* telecom[=].value = "maggi.roberta@gmail.com"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "22998276800"
* telecom[=].use = #home
* address.line = "Via Corvetto 3"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00164"
* address.country = "100"

Instance: Inline-ServiceRequest-for-IT-CDA2FHIR
InstanceOf: ServiceRequestLabEu
Usage: #inline
* id = "1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"
* identifier.system = "http://example.org/lis-order"
* identifier.value = "123456"
// USARE QUESTO come Group ID
* requisition.assigner.display = "Ministero delle Finanze"
* requisition.system = "urn:oid:2.16.840.1.113883.2.9.4.3.9"
* requisition.value = "0901001234567234"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #asap
* code = $loinc#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-for-IT-CDA2FHIR-1b4b120e-0371-4878-b4c9-b69434e84c72
InstanceOf: PractitionerRoleEu
Usage: #inline
* id = "1b4b120e-0371-4878-b4c9-b69434e84c72"
* practitioner = Reference(urn:uuid:eb62a039-7e02-44cb-ba17-7e4fb42acdde)
* organization = Reference(urn:uuid:508f4b29-09ca-4c94-8343-657f1923303a)

Instance: eb62a039-7e02-44cb-ba17-7e4fb42acdde
InstanceOf: PractitionerEu
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "MRSSIO79H59Z317K"
* identifier.assigner.display = "MEF"
* name.family = "Rossi"
* name.given = "Mario"

Instance: Inline-Instance-for-IT-CDA2FHIR-508f4b29-09ca-4c94-8343-657f1923303a
InstanceOf: Organization
Usage: #inline
* id = "508f4b29-09ca-4c94-8343-657f1923303a"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.3"
* identifier.value = "327700102"
* identifier.assigner.display = "Ministero della Salute"
* name = "Nuovo Ospedale S.Agostino (MO)"
* partOf = Reference(urn:uuid:206fa15d-51ae-4f3d-b8d0-71ee6290ff52)

Instance: Inline-Instance-for-IT-CDA2FHIR-206fa15d-51ae-4f3d-b8d0-71ee6290ff52
InstanceOf: Organization
Usage: #inline
* id = "206fa15d-51ae-4f3d-b8d0-71ee6290ff52"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.1"
* identifier.value = "080105"
* identifier.assigner.display = "Ministero della Salute"

Instance: Inline-Instance-for-IT-CDA2FHIR-5679723c-4fae-4ba7-9f09-5438a827bfda
InstanceOf: DiagnosticReportLabEu
Usage: #inline
* id = "5679723c-4fae-4ba7-9f09-5438a827bfda"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/26032a57-083a-4ddf-b019-e566ae02f740)
* status = #registered
* category[studyType] = $loinc#18719-5 "Chemistry studies (set)"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* specimen[+] = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)  // Urine specimen
* result[+] = Reference(Observation/763f7902-8103-4d10-8bd1-546a726d43ee)
* specimen[+] = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)   // Blood specimen
* result[+] = Reference(Observation/18bd102e-0abf-42b0-b4e6-97e47fd385eb)

Instance: Inline-Instance-for-Observation-763f7902-8103-4d10-8bd1-546a726d43ee
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "763f7902-8103-4d10-8bd1-546a726d43ee"
* status = #final
* code.coding[+] = http://loinc.org#22700-9 "Urea [Moles/volume] in Urine"
* code.coding[+] = urn:oid:1.2.203.24341.11.2.2#03088 "Urea (U; látková konc. [mmol/l] Absorpční spektrofotometrie)"
* code.text = "Urea (U) [Moles/Vol]"
* method = $sct#70621000052105 "Spectrophotometric technique"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* valueQuantity.value = 310
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L
* valueQuantity.unit = "mmol/L"
* interpretation = $obs-interpretation#LU "Significantly low"
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)  // urine specimen
* referenceRange.low.value = 67
* referenceRange.low.unit = "mmol/L"
* referenceRange.high.value = 580
* referenceRange.high.unit = "mmol/L"
* referenceRange.type = $reference-range-meaning#normal "Normal Range"

Instance: Inline-Instance-for-Observation-18bd102e-0abf-42b0-b4e6-97e47fd385eb
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "18bd102e-0abf-42b0-b4e6-97e47fd385eb"
* status = #final
* code.coding[+] = http://loinc.org#2947-0 "Sodium [Moles/volume] in Blood"
* code.coding[+] = urn:oid:1.2.203.24341.11.2.2#2504 "Na (S; látková konc. [mmol/l] spektrofotometrie-FAES)"
* code.text = "Sodium (Bld) [Moles/Vol]"
* method = $sct#70621000052105 "Spectrophotometric technique"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Laboratorní Technik"  // ToDo: consider cardinality
* performer[=] = Reference(urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09)
* valueQuantity.value = 156
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#umol/L
* valueQuantity.unit = "umol/L"
* valueQuantity.extension[Uncertainty].valueDecimal = 0.1
* interpretation = $obs-interpretation#HH "Critical high"
* specimen = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)
* referenceRange.low.value = 136
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 144
* referenceRange.high.unit = "umol/L"
* referenceRange.type = $reference-range-meaning#normal "Normal Range"