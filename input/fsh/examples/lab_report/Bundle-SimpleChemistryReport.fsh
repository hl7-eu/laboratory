Instance: SimpleChemistryResultReport
InstanceOf: BundleLabReportEu
Title: "Laboratory Result Report"
Description: "Laboratory Result Report Example includes two sections with different study types:
- Chemistry study
- Hematology study"
Usage: #example
* identifier.system = "urn:oid:2.16.840.1.113883.2.51.1.1"
* identifier.value = "8ccab76a-82ed-403e-b974-6b28022b0997"
* identifier.assigner.display = "HL7 Europe"
* type = #document
* timestamp = "2023-03-27T13:13:19+02:00"
* entry[+].fullUrl = "urn:uuid:26032a57-083a-4ddf-b019-e566ae02f740"
* entry[=].resource = Inline-Instance-for-Composition-26032a57-083a-4ddf-b019-e566ae02f740-1
* entry[+].fullUrl = "urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8"
* entry[=].resource = Inline-Patient-de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8
* entry[+].fullUrl = "urn:uuid:195a7abc-d109-404a-9dc7-ad2e80bafc8a"
* entry[=].resource = Inline-Instance-for-Specimen-5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb
* entry[+].fullUrl = "urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb"
* entry[=].resource = Inline-Instance-Specimen-25dfb673-e7d6-43d0-b50b-6739f1ea9c91
* entry[+].fullUrl = "urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91"
* entry[=].resource = Inl-Inst-DocumentReference-c92e7441-a6ac-4a4e-9a0b-1c2ee6bfe7dd
* entry[+].fullUrl = "urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c"
* entry[=].resource = Inline-Instance-for-PractiotionerRole-26032a57-083a-4ddf-b019-e566ae02f740-4
* entry[+].fullUrl = "urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2"
* entry[=].resource = Inl-Instance-Practitioner-ab279a0b-320f-483b-9a5d-f1f7e8ceacb2
* entry[+].fullUrl = "urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30"
* entry[=].resource = Inl-Ins-Lab-technician-e512e2e2-9600-4c69-a269-af3ab5421e09
* entry[+].fullUrl = "urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09"
* entry[=].resource = Inline-Instance-for-PractitionerRole-26032a57-083a-4ddf-b019-e566ae02f740-5
* entry[+].fullUrl = "urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-6
* entry[+].fullUrl = "urn:uuid:ce122b36-f942-4cee-8c6d-b13ece8cf23c"
* entry[=].resource = ce122b36-f942-4cee-8c6d-b13ece8cf23c
* entry[+].fullUrl = "urn:uuid:0bbabe57-7c43-4211-9e19-81fcec65686d"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-7
* entry[+].fullUrl = "urn:uuid:84476dc3-a732-455f-910e-f2b44428dcc9"
* entry[=].resource = 84476dc3-a732-455f-910e-f2b44428dcc9
* entry[+].fullUrl = "urn:uuid:8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3"
* entry[=].resource = 8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3
* entry[+].fullUrl = "urn:uuid:13792187-4721-4309-a8a4-4a57ffb4e6a1"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-8
* entry[+].fullUrl = "urn:uuid:852cec21-4ff9-4cea-b86d-00de92b46894"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-9
* entry[+].fullUrl = "urn:uuid:90820822-94a8-41c1-9567-c349e9e33d7c"
* entry[=].resource = 90820822-94a8-41c1-9567-c349e9e33d7c
* entry[+].fullUrl = "urn:uuid:31a6839b-c6e2-4807-8412-0bde8016fc99"
* entry[=].resource = 31a6839b-c6e2-4807-8412-0bde8016fc99
* entry[+].fullUrl = "urn:uuid:c430fae1-3768-4697-aeb5-2181b73941cd"
* entry[=].resource = c430fae1-3768-4697-aeb5-2181b73941cd
* entry[+].fullUrl = "urn:uuid:1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-10
* entry[+].fullUrl = "urn:uuid:1b4b120e-0371-4878-b4c9-b69434e84c72"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-11
* entry[+].fullUrl = "urn:uuid:eb62a039-7e02-44cb-ba17-7e4fb42acdde"
* entry[=].resource = eb62a039-7e02-44cb-ba17-7e4fb42acdde
* entry[+].fullUrl = "urn:uuid:508f4b29-09ca-4c94-8343-657f1923303a"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-12
* entry[+].fullUrl = "urn:uuid:206fa15d-51ae-4f3d-b8d0-71ee6290ff52"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-13
* entry[+].fullUrl = "urn:uuid:83ef1c55-566b-4547-affd-f6d7b993a094"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-14
* entry[+].fullUrl = "urn:uuid:1a3064fd-9658-47f1-98f3-3f368761a9da"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-15
* entry[+].fullUrl = "urn:uuid:6373bbff-d136-4cfe-a7bc-fab4bff2fc21"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-16
* entry[+].fullUrl = "urn:uuid:0a0cfca8-f1d3-4ed5-8b04-0d6cdcee3a17"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-17
* entry[+].fullUrl = "urn:uuid:8ebee945-761e-4b44-bedd-c6b1804b6a0e"
* entry[=].resource = 8ebee945-761e-4b44-bedd-c6b1804b6a0e
* entry[+].fullUrl = "urn:uuid:5679723c-4fae-4ba7-9f09-5438a827bfda"
* entry[=].resource = Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-18
* entry[+].fullUrl = "urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee"
* entry[=].resource = Inline-Instance-for-Observation-763f7902-8103-4d10-8bd1-546a726d43ee
* entry[+].fullUrl = "urn:uuid:18bd102e-0abf-42b0-b4e6-97e47fd385eb"
* entry[=].resource = Inline-Instance-for-Observation-18bd102e-0abf-42b0-b4e6-97e47fd385eb

Instance: Inline-Instance-for-Composition-26032a57-083a-4ddf-b019-e566ae02f740-1
InstanceOf: Composition
Usage: #inline
* id = "26032a57-083a-4ddf-b019-e566ae02f740"
/* * extension[+].url = $composition-diagnostic-report-reference
* extension[=].valueReference = Reference(DiagnosticReport/5679723c-4fae-4ba7-9f09-5438a827bfda) */
* language = #it-IT
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.2.120.4.4"
* identifier.value = "c030702.TSTSMN63A01F205H.20220325112426.TSS1Tkju"
* identifier.assigner.display = "Regione Lazio"
* status = #final
* type = http://loinc.org#11502-2 "Laboratory report"
* type.text = "Referto di laboratorio"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* date = "2022-03-30T11:24:26+01:00"
* author[+] = Reference(urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c)
* author[+] = Reference(urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30)
* title = "REFERTO DI LABORATORIO"
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
* section.title = "Esami delle Urine"
* section.code = http://loinc.org#18729-4 "Urinalysis studies (set)"
* section.code.text = "ESAMI DELLE URINE"
* section.section.title = "Albumina nelle Urine"
* section.section.code.coding[+] = http://loinc.org#14957-5 "Microalbumin [Mass/volume] in Urine"
* section.section.code.coding[+] = urn:oid:2.16.840.1.113883.2.9.2.30.6.11#0090334.02 "XXX"
* section.section.code.text = "Microalbumin Massa/Volume in Urine"
* section.section.text.status = #generated
* section.section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><table id=\"nota1\"><thead><tr><th>Esame</th><th>Metodo utilizzato per l'esame</th><th>Materiale utilizzato per l'esame</th><th>Risultato dell'esame</th><th>Commenti e note</th><th>Unità di Misura</th><th>Range di Riferimento</th><th>Criteri per il range di riferimento</th><th>Interpretazione</th><th>Allegati multimediali</th></tr></thead><tbody><tr><td>Microalbumina massa/volume in urine</td><td/><td>Urine</td><td>20</td><td/><td>mg/L</td><td> 0 - 20 </td><td/><td>N</td><td/></tr></tbody></table></li></ul></div>"
* section.section.entry = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)

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

* contact[+].relationship.coding[+] = $v3-RoleCode#MTH "matka"
* contact[=].relationship.coding[+] = $v2-0131#N "příbuzný"
* contact[=].name.use = #usual
* contact[=].name.family = "Mrakomorová"
* contact[=].name.given[+] = "Biologická"
* contact[=].name.given[+] = "Matka"
* contact[=].name.text = "Biologická Matka Mrakomorová"
* contact[=].telecom[+].use = #mobile
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].value = "+420 604 123 456"

* contact[+].relationship.coding[+] = $v3-RoleCode#FRND "přítel/přítelkyně"
* contact[=].relationship.coding[+] = $v2-0131#C "Emergentní kontakt"
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
InstanceOf: Specimen
Usage: #inline
* id = "5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb"
* type = $sct#122575003	"Urine specimen"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-Specimen-25dfb673-e7d6-43d0-b50b-6739f1ea9c91
InstanceOf: Specimen
Usage: #inline
* id = "25dfb673-e7d6-43d0-b50b-6739f1ea9c91"
* type = $sct#119297000	"Blood specimen"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inl-Inst-DocumentReference-c92e7441-a6ac-4a4e-9a0b-1c2ee6bfe7dd
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* author = Reference(urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2)
* custodian = Reference(urn:uuid:ce122b36-f942-4cee-8c6d-b13ece8cf23c)
* content.attachment.contentType = urn:ietf:bcp:13#text/plain
* content.attachment.title = "string"
* context.related = Reference(Composition/26032a57-083a-4ddf-b019-e566ae02f740)

Instance: Inline-Instance-for-PractiotionerRole-26032a57-083a-4ddf-b019-e566ae02f740-4
InstanceOf: PractitionerRole
Usage: #inline
* id = "88868d3e-7ab1-4ee5-983e-b979c4971f5c"
* practitioner = Reference(urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2)

Instance: Inl-Instance-Practitioner-ab279a0b-320f-483b-9a5d-f1f7e8ceacb2
InstanceOf: Practitioner
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

Instance: Inline-Instance-for-PractitionerRole-26032a57-083a-4ddf-b019-e566ae02f740-5
InstanceOf: PractitionerRole
Usage: #inline
* id = "84b2e517-abc2-4268-975d-b12fa8174d30"
* practitioner = Reference(urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f)

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-6
InstanceOf: Practitioner
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

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-7
InstanceOf: Practitioner
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
InstanceOf: Practitioner
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
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3)

Instance: 8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3
InstanceOf: Practitioner
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

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-8
InstanceOf: PractitionerRole
Usage: #inline
* id = "13792187-4721-4309-a8a4-4a57ffb4e6a1"
* practitioner = Reference(urn:uuid:852cec21-4ff9-4cea-b86d-00de92b46894)

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-9
InstanceOf: Practitioner
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

Instance: 90820822-94a8-41c1-9567-c349e9e33d7c
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:31a6839b-c6e2-4807-8412-0bde8016fc99)
* organization = Reference(urn:uuid:c430fae1-3768-4697-aeb5-2181b73941cd)
* code = urn:oid:2.16.840.1.113883.2.9.5.1.88#PRE

Instance: 31a6839b-c6e2-4807-8412-0bde8016fc99
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "STVMG77F45N079MF"
* identifier.assigner.display = "MEF"
* name.family = "Maggi"
* name.given = "Silvia"
* telecom.system = #email
* telecom.value = "maggi.silvia@gmail.com"
* telecom.use = #home
* address.line = "Via Vittorio Veneto 3"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00187"
* address.country = "100"

Instance: c430fae1-3768-4697-aeb5-2181b73941cd
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

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-10
InstanceOf: ServiceRequest
Usage: #inline
* id = "1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.9"
* identifier.value = "[NRE]"
* identifier.assigner.display = "Ministero delle Finanze"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #asap
* code = http://loinc.org#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-11
InstanceOf: PractitionerRole
Usage: #inline
* id = "1b4b120e-0371-4878-b4c9-b69434e84c72"
* practitioner = Reference(urn:uuid:eb62a039-7e02-44cb-ba17-7e4fb42acdde)
* organization = Reference(urn:uuid:508f4b29-09ca-4c94-8343-657f1923303a)

Instance: eb62a039-7e02-44cb-ba17-7e4fb42acdde
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "MRSSIO79H59Z317K"
* identifier.assigner.display = "MEF"
* name.family = "Rossi"
* name.given = "Mario"

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-12
InstanceOf: Organization
Usage: #inline
* id = "508f4b29-09ca-4c94-8343-657f1923303a"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.3"
* identifier.value = "327700102"
* identifier.assigner.display = "Ministero della Salute"
* name = "Nuovo Ospedale S.Agostino (MO)"
* partOf = Reference(urn:uuid:206fa15d-51ae-4f3d-b8d0-71ee6290ff52)

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-13
InstanceOf: Organization
Usage: #inline
* id = "206fa15d-51ae-4f3d-b8d0-71ee6290ff52"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.1"
* identifier.value = "080105"
* identifier.assigner.display = "Ministero della Salute"

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-14
InstanceOf: PractitionerRole
Usage: #inline
* id = "83ef1c55-566b-4547-affd-f6d7b993a094"
* practitioner = Reference(urn:uuid:1a3064fd-9658-47f1-98f3-3f368761a9da)

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-15
InstanceOf: Practitioner
Usage: #inline
* id = "1a3064fd-9658-47f1-98f3-3f368761a9da"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "SVATPR85Y37T079B"
* identifier.assigner.display = "MEF"
* name.family = "Turri"
* name.given = "Silvia"

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-16
InstanceOf: Location
Usage: #inline
* id = "6373bbff-d136-4cfe-a7bc-fab4bff2fc21"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.6"
* identifier.value = "XXX"
* identifier.assigner.display = "Ministero della Salute"
* managingOrganization = Reference(urn:uuid:0a0cfca8-f1d3-4ed5-8b04-0d6cdcee3a17)

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-17
InstanceOf: Organization
Usage: #inline
* id = "0a0cfca8-f1d3-4ed5-8b04-0d6cdcee3a17"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.2"
* identifier.value = "XXX"
* identifier.assigner.display = "Ministero della Salute"
* name = "[nome_presidio]"
* telecom.system = #phone
* telecom.value = "0115678965"
* telecom.use = #work
* partOf = Reference(urn:uuid:8ebee945-761e-4b44-bedd-c6b1804b6a0e)

Instance: 8ebee945-761e-4b44-bedd-c6b1804b6a0e
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.1"
* identifier.value = "XXX"
* identifier.assigner.display = "Ministero della Salute"

Instance: Inline-Instance-for-IT-CDA2FHIR-26032a57-083a-4ddf-b019-e566ae02f740-18
InstanceOf: DiagnosticReport
Usage: #inline
* id = "5679723c-4fae-4ba7-9f09-5438a827bfda"
* extension[+].url = $diagnostic-report-composition-r5
* extension[=].valueReference = Reference(Composition/26032a57-083a-4ddf-b019-e566ae02f740)
* status = #registered
* category = $v2-0074#LAB "Laboratory"
* code = http://loinc.org#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)
* result = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)

Instance: Inline-Instance-for-Observation-763f7902-8103-4d10-8bd1-546a726d43ee
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "763f7902-8103-4d10-8bd1-546a726d43ee"
* status = #final
* code.coding[+] = http://loinc.org#14682-9 "Creatinine [Moles/volume] in Serum or Plasma"
* code.text = "Creatinine [Moles/Vol]"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "" // ToDo: consider cardinality
* valueQuantity.value = 25
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#umol/L
* valueQuantity.unit = "umol/L"
* interpretation = $obs-interpretation#LU "Significantly low"
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)
* referenceRange.low.value = 62
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 106
* referenceRange.high.unit = "umol/L"
* referenceRange.type = $reference-range-meaning#normal "Normal Range"

Instance: Inline-Instance-for-Observation-18bd102e-0abf-42b0-b4e6-97e47fd385eb
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "18bd102e-0abf-42b0-b4e6-97e47fd385eb"
* status = #final
* code.coding[+] = http://loinc.org#2947-0 "Sodium [Moles/volume] in Blood"
* code.coding[+] = urn:oid:1.2.203.24341.11.2.2#2504 "Na (S; látková konc. [mmol/l] spektrofotometrie-FAES)"
* code.text = "Sodium (Bld) [Moles/Vol]"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant"  // ToDo: consider cardinality
* performer[=] = Reference(urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09)
* valueQuantity.value = 156
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#umol/L
* valueQuantity.unit = "umol/L"
* interpretation = $obs-interpretation#HH "Critical high"
* specimen = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)
* referenceRange.low.value = 136
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 144
* referenceRange.high.unit = "umol/L"
* referenceRange.type = $reference-range-meaning#normal "Normal Range"