// -------------------------------------------------------------------------------					
//  Concept Model. File: 					labRpt-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-labRpt2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "ConceptMapLabRpt2DiagRpt"					
* title = "eHN Lab Report to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Lab Report to this guide Map"					
* purpose = "It shows how the Laboratory Report data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = "A.1 Report header data elements"					
* group[=].element[=].target.code = #DiagnosticReport.$this					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = "A.1.1 - A1.2 Patient/subject"					
* group[=].element[=].target.code = #DiagnosticReport.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = "A.1.3 Health insurance and payment information"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = "A.1.4 Information recipient"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.performer.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the perfomer"					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = "A.1.6 Legal authenticator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = "A.1.7 Result validator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = "A.1.8 Laboratory report metadata"					
* group[=].element[=].target.code = #DiagnosticReport.$this					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = "A.1.8.1 Document type"					
* group[=].element[=].target.code = #DiagnosticReport.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = "A.1.8.2 Document status"					
* group[=].element[=].target.code = #DiagnosticReport.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = "A.1.8.3 Report date and time"					
* group[=].element[=].target.code = #DiagnosticReport.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = "A.1.8.4 Document title"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = "A.1.8.5 Report custodian"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = "A.2-A.3 Order"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.resolve().ofType(ServiceRequest)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.4 Specimen information"					
* group[=].element[=].target.code = #DiagnosticReport.specimen.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "A.5 Results data elements"					
* group[=].element[=].target.code = #DiagnosticReport.result.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = "A.1 Report header data elements"					
* group[=].element[=].target.code = #Composition.$this					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = "A.1.1 - A1.2 Patient/subject"					
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = "A.1.3 Health insurance and payment information"					
* group[=].element[=].target.code = #Composition.extension(http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = "A.1.4 Information recipient"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #Composition.author.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = "A.1.6 Legal authenticator"					
* group[=].element[=].target.code = #Composition.attester.where(mode='legal').resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The person authenticated the content and accepted legal responsibility for its content."					
* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = "A.1.7 Result validator"					
* group[=].element[=].target.code = #Composition.attester.where(mode='professional').resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The person authenticated the content in their professional capacity."					
* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = "A.1.8 Laboratory report metadata"					
* group[=].element[=].target.code = #Composition.$this					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = "A.1.8.1 Document type"					
* group[=].element[=].target.code = #Composition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = "A.1.8.2 Document status"					
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked?"					
* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = "A.1.8.3 Report date and time"					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = "A.1.8.4 Document title"					
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = "A.1.8.5 Report custodian"					
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = "A.2-A.3 Order"					
* group[=].element[=].target.code = #Composition.extension(http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.4 Specimen information"					
* group[=].element[=].target.code = #Composition.Composition.section:lab-no-subsections.entry.resolve().specimen.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If no sub sections"					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "A.5 Results data elements"					
* group[=].element[=].target.code = #Composition.Composition.section:lab-no-subsections.entry.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If no sub sections"					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.4 Specimen information"					
* group[=].element[=].target.code = #Composition.Composition.section:lab-subsections.section.entry.resolve().specimen.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If sub sections"					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "A.5 Results data elements"					
* group[=].element[=].target.code = #Composition.Composition.section:lab-subsections.section.entry.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If sub sections"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
