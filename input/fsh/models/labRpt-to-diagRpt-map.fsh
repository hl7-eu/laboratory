// -------------------------------------------------------------------------------					
//  Concept Model. File: 					labRpt-to-diagRpt-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMapLabRpt2DiagRpt					
InstanceOf: ConceptMap					
Usage: #definition					
* url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "ConceptMapLabRpt2DiagRpt"					
* title = "eHN Lab Report to HL7 FHIR DiagnosticReport Map"					
* status = #draft					
* experimental = true					
* description = "eHN Lab Report to HL7 FHIR DiagnosticReport Map"					
* purpose = "It shows how the Labporatory Report data set defined by the EU eHN guidlines is mapped into The HL/ HFIR resource Diagnostic Report"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"					
					
* group[0].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"					
					
* group[=].element[+].code = #header					
* group[=].element[=].display = "A.1 Report header data elements"					
* group[=].element[=].target.code = #DiagnosticReport.DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #header.subject					
* group[=].element[=].display = "A.1.1 - A1.2 Patient/subject"					
* group[=].element[=].target.code = #DiagnosticReport.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #header.payer					
* group[=].element[=].display = "A.1.3 Health insurance and payment information"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #header.informationRecipient					
* group[=].element[=].display = "A.1.4 Information recipient"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.performer.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If resultsInterpreter does not exists"					
* group[=].element[+].code = #header.legalAuthenticator					
* group[=].element[=].display = "A.1.6 Legal authenticator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #header.validator					
* group[=].element[=].display = "A.1.7 Result validator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #header.metadata					
* group[=].element[=].display = "A.1.8 Laboratory report metadata"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #header.metadata.type					
* group[=].element[=].display = "A.1.8.1 Document type"					
* group[=].element[=].target.code = #DiagnosticReport.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #header.metadata.status					
* group[=].element[=].display = "A.1.8.2 Document status"					
* group[=].element[=].target.code = #DiagnosticReport.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #header.metadata.dateTime					
* group[=].element[=].display = "A.1.8.3 Report date and time"					
* group[=].element[=].target.code = #DiagnosticReport.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #header.metadata.title					
* group[=].element[=].display = "A.1.8.4 Document title"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #header.metadata.custodian					
* group[=].element[=].display = "A.1.8.5 Report custodian"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #order					
* group[=].element[=].display = "A.2-A.3 Order"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.resolve().ofType(ServiceRequest)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #specimen					
* group[=].element[=].display = "A.4 Specimen information"					
* group[=].element[=].target.code = #DiagnosticReport.specimen.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #result					
* group[=].element[=].display = "A.5 Results data elements"					
* group[=].element[=].target.code = #DiagnosticReport.result.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
