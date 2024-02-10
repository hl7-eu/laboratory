Instance: BundleHepatitisPanel
InstanceOf: BundleLabReportEu
Title: "Bundle: Hepatitis Panel"
Description: "Example of Laboratory Report (Bundle) including a Hepatitis Panel"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "V1CZ454557891308174803488707671420"
* type = #document
* timestamp = "2022-10-25T14:30:00+01:00"

* entry[composition].fullUrl = "urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* entry[composition].resource = Inline-Composition-hepatitis-panel
* entry[patient].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
* entry[patient].resource = Inline-Patient-hepatitis-panel
* entry[diagnosticReport].fullUrl = "urn:uuid:3a743273-237a-446a-a8da-9e7521cce614"
* entry[diagnosticReport].resource = Inline-Diag-Report-hepatitis-panel
* entry[specimen].fullUrl = "urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13"
* entry[specimen].resource = Inline-Specimen-hepatitis-panel
* entry[observation][+].fullUrl = "urn:uuid:2c72163e-b741-44a3-aff7-c52f17f7a1ba"
* entry[observation][=].resource = Inline-Observation-hepatitis-panel
* entry[observation][+].fullUrl = "urn:uuid:104a5829-565b-46a6-85d6-36751ef79a40"
* entry[observation][=].resource = Inline-Observation-hepatitis-1
* entry[observation][+].fullUrl = "urn:uuid:01b8ec35-9b20-45a4-bd41-42eeae2fd521"
* entry[observation][=].resource = Inline-Observation-hepatitis-2
* entry[observation][+].fullUrl = "urn:uuid:096e27da-0768-47e4-b33c-9f1be93e1f88"
* entry[observation][=].resource = Inline-Observation-hepatitis-3
* entry[observation][+].fullUrl = "urn:uuid:861e7b48-5497-410a-bed8-2cde814e09fc"
* entry[observation][=].resource = Inline-Observation-hepatitis-4
* entry[observation][+].fullUrl = "urn:uuid:cc96d499-3e0e-4588-a021-4fe576766112"
* entry[observation][=].resource = Inline-Observation-hepatitis-5
* entry[+].fullUrl = "urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70"
* entry[=].resource = Inline-Organization-hepatitis-panel

Instance: Inline-Composition-hepatitis-panel
InstanceOf: Composition
Usage: #inline
* id = "4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
/* * extension[+].url = $composition-diagnostic-report-reference
* extension[=].valueReference = Reference(DiagnosticReport/3a743273-237a-446a-a8da-9e7521cce614) */
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* date = "2022-10-25T14:30:00+01:00"
* author[+].display = "MUDr. Aleš Procházka"
* title = "Laboratory Report Hepatitis Panel - 27 Dec, 2020 14:30"
* confidentiality = #N
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party = Reference(urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70)
* custodian = Reference(urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70)
* section[+].title = "Hepatitis screening panel"
* section[=].code = LaboratoryLocalCS#3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* section[=].code.text = "Acute Hepatitis Panel, reflex to confirmation"
* section[=].entry[+] = Reference(urn:uuid:2c72163e-b741-44a3-aff7-c52f17f7a1ba)

Instance: Inline-Diag-Report-hepatitis-panel
InstanceOf: DiagnosticReport-eu-lab
Usage: #inline
* id = "3a743273-237a-446a-a8da-9e7521cce614"
// * extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4)
* status = #final
/* * category = $v2-0074#MB "Microbiology" */
* code.coding[+] = $loinc#11502-2 "Laboratory report"
* code.coding[+] = LaboratoryLocalCS#3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* code.text = "Acute Hepatitis Panel, reflex to confirmation"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* specimen = Reference(urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* result[+] = Reference(urn:uuid:2c72163e-b741-44a3-aff7-c52f17f7a1ba)

Instance: Inline-Patient-hepatitis-panel
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
* name[+].family = "Očkovaný"
* name[=].given[+] = "František"
* gender = #male
* birthDate = "2000-03-21"

Instance: Inline-Organization-hepatitis-panel
InstanceOf: Organization
Usage: #inline
* id = "608b5309-2609-4d03-b6da-c758bfa1de70"
// * identifier[+].system = "urn:oid:1.2.203" // this is a valid OID representing the Czech Republic, though it is not being recognized as valid by the IG Publisher
* identifier[+].system = "http://example.org/czech-orgs"
* identifier[=].value = "24341"
* name = "Ministry of Health of the Czech Republic"



Instance: Inline-Specimen-hepatitis-panel
InstanceOf: Specimen-uv-ips
Usage: #inline
* id = "3c9bd730-3ff9-40ee-9da1-4f3d5c526f13"
* status = #available
* type = $sct#119364003 "Serum specimen"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Inline-Observation-hepatitis-panel
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "2c72163e-b741-44a3-aff7-c52f17f7a1ba"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = LaboratoryLocalCS#3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* code.text = "Acute Hepatitis Panel, reflex to confirmation"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(urn:uuid:104a5829-565b-46a6-85d6-36751ef79a40)
* hasMember[+] = Reference(urn:uuid:01b8ec35-9b20-45a4-bd41-42eeae2fd521)
* hasMember[+] = Reference(urn:uuid:096e27da-0768-47e4-b33c-9f1be93e1f88)
* hasMember[+] = Reference(urn:uuid:861e7b48-5497-410a-bed8-2cde814e09fc)
* hasMember[+] = Reference(urn:uuid:cc96d499-3e0e-4588-a021-4fe576766112)

Instance: Inline-Observation-hepatitis-1
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "104a5829-565b-46a6-85d6-36751ef79a40"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.coding[+] = LaboratoryLocalCS#0020089 "Hepatitis B Surface Antigen"
* code.coding[+] = $loinc#5196-1 "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay"
* code.text = "Hepatitis B Surface Antigen"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#260385009 "Negative"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* referenceRange[+].type = $reference-range-meaning#normal "Normal Range"
* referenceRange[=].text = "Negative"

Instance: Inline-Observation-hepatitis-2
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "01b8ec35-9b20-45a4-bd41-42eeae2fd521"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.coding[+] = LaboratoryLocalCS#0020092 "Hepatitis B Core Antibody, IgM"
* code.coding[+] = $loinc#24113-3 "Hepatitis B virus core IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* code.text = "Hepatitis B Core Antibody, IgM"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#260385009 "Negative"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* referenceRange[+].type = $reference-range-meaning#normal "Normal Range"
* referenceRange[=].text = "Negative"

Instance: Inline-Observation-hepatitis-3
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "096e27da-0768-47e4-b33c-9f1be93e1f88"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.coding[+] = LaboratoryLocalCS#0020093 "Hepatitis A Antibody, IgM"
* code.coding[+] = $loinc#13950-1 "Hepatitis A virus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* code.text = "Hepatitis A Antibody, IgM"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#260385009 "Negative"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* referenceRange[+].type = $reference-range-meaning#normal "Normal Range"
* referenceRange[=].text = "Negative"

Instance: Inline-Observation-hepatitis-4
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "861e7b48-5497-410a-bed8-2cde814e09fc"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.coding[+] = LaboratoryLocalCS#3003128 "Hepatitis C Antibody by CIA Interp"
* code.coding[+] = $loinc#13955-0 "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
* code.text = "Hepatitis C Antibody by CIA Interp"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $obs-interpretation#A "Abnormal"
* specimen = Reference(urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* referenceRange[+].type = $reference-range-meaning#normal "Normal Range"
* referenceRange[=].text = "Negative"

Instance: Inline-Observation-hepatitis-5
InstanceOf: ObservationResultsLaboratoryEu
Usage: #inline
* id = "cc96d499-3e0e-4588-a021-4fe576766112"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.coding[+] = LaboratoryLocalCS#2002404 "Hepatitis C Antibody by CIA Index"
* code.coding[+] = $loinc#57006-9 "Hepatitis C virus IgG Ab [Units/volume] in Serum by Immunoassay"
* code.text = "Hepatitis C Antibody by CIA Index"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity = 9.89 $ucum#[arb'U]/mL
* valueQuantity.unit = "IV"
* interpretation = $obs-interpretation#H "High"
* interpretation.text = "Low Positive"
* specimen = Reference(urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* referenceRange[+].high = 0.79 $ucum#[arb'U]/mL
* referenceRange[=].high.unit = "IV"
* referenceRange[=].type = $reference-range-meaning#normal "Normal Range"
* referenceRange[+].low = 0.80 $ucum#[arb'U]/mL
* referenceRange[=].low.unit = "IV"
* referenceRange[=].high = 0.99 $ucum#[arb'U]/mL
* referenceRange[=].high.unit = "IV"
* referenceRange[=].type.text = "Equivocal"
* referenceRange[+].low = 1.00 $ucum#[arb'U]/mL
* referenceRange[=].low.unit = "IV"
* referenceRange[=].high = 10.99 $ucum#[arb'U]/mL
* referenceRange[=].high.unit = "IV"
* referenceRange[=].type.text = "Low Positive"
* referenceRange[+].low = 11.00 $ucum#[arb'U]/mL
* referenceRange[=].low.unit = "IV"
* referenceRange[=].type.text = "High Positive"
