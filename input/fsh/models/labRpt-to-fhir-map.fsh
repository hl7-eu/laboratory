// -------------------------------------------------------------------------------					
//  Concept Model. File: 					labRpt-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: labRpt2FHIR-eu-lab					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = ##34#http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris##34#					
* name = ##34#LabRpt2FHIR##34#					
* title = ##34#eHN Lab Report to this guide Map##34#					
* status = #draft					
* experimental = true					
* description = ##34#eHN Lab Report to this guide Map##34#					
* purpose = ##34#It shows how the Laboratory Report data set defined by the EU eHN guidelines is mapped into this guide##34#					
* sourceUri = ##34#http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport##34#					
* targetUri = ##34#http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab##34#					
					
* group[+].source = ##34#http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport##34#					
* group[=].target = ##34#http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab##34#					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = ##34#A.1 Report header data elements##34#					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = ##34#A.1.1 - A1.2 Patient/subject##34#					
* group[=].element[=].target.code = #DiagnosticReport.subject					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = ##34#A.1.3 Health insurance and payment information##34#					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.insurance					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#basedOn.resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)##34#					
* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = ##34#A.1.4 Information recipient##34#					
* group[=].element[=].target.code = #DiagnosticReport.extension:information-recipient					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = ##34#A.1.5 Author##34#					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If the author is the interpreter##34#					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = ##34#A.1.5 Author##34#					
* group[=].element[=].target.code = #DiagnosticReport.performer					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If the author is the perfomer##34#					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = ##34#A.1.6 Legal authenticator##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = ##34#Mapped in the Composition resource##34#					
* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = ##34#A.1.7 Result validator##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = ##34#Mapped in the Composition resource##34#					
* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = ##34#A.1.8 Laboratory report metadata##34#					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.documentId					
* group[=].element[=].display = ##34#A.1.8.0 Document Id##34#					
* group[=].element[=].target.code = #DiagnosticReport.identifier					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If it is the identifier of the report indipendently by its version. Otherwise you should refer to the Bundle.indentifier##34#					
* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = ##34#A.1.8.1 Document type##34#					
* group[=].element[=].target.code = #DiagnosticReport.code					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = ##34#A.1.8.2 Document status##34#					
* group[=].element[=].target.code = #DiagnosticReport.status					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#For FHIR R4 the more granular status is recorded in the DiagnosticReport.status##34#					
* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = ##34#A.1.8.3 Report date and time##34#					
* group[=].element[=].target.code = #DiagnosticReport.effectiveDateTime					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = ##34#A.1.8.4 Document title##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = ##34#Mapped in the Composition resource##34#					
* group[=].element[+].code = #LabReport.header.metadata.studyType					
* group[=].element[=].display = ##34#A.1.8.5 Study type##34#					
* group[=].element[=].target.code = #DiagnosticReport.category					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = ##34#A.1.8.6 Report custodian##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = ##34#Mapped in the Composition resource##34#					
* group[=].element[+].code = #LabReport.header.metadata.confidentiality					
* group[=].element[=].display = ##34#A.1.8.7 Confidentiality##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = ##34#Mapped in the Composition resource##34#					
* group[=].element[+].code = #LabReport.header.metadata.language					
* group[=].element[=].display = ##34#A.1.8.8 Language##34#					
* group[=].element[=].target.code = #DiagnosticReport.language					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.version					
* group[=].element[=].display = ##34#A.1.8.9 Version##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = ##34#Mapped in the Composition resource if it refers to the business report version##34#					
* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = ##34#A.2-A.3 Order##34#					
* group[=].element[=].target.code = #DiagnosticReport.basedOn					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#basedOn.resolve().ofType(ServiceRequest)##34#					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = ##34#A.4 Specimen information##34#					
* group[=].element[=].target.code = #DiagnosticReport.specimen					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = ##34#A.5 Results data elements##34#					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = ##34#A.4 Specimen information##34#					
* group[=].element[=].target.code = #DiagnosticReport.result.specimen					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#result.resolve().ofType(Observation).specimen##34#					
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
					
					
					
* group[+].source = ##34#http://hl7.eu/fhir/laboratory/StructureDefinition/LabReport##34#					
* group[=].target = ##34#http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab##34#					
					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = ##34#A.1 Report header data elements##34#					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = ##34#A.1.1 - A1.2 Patient/subject##34#					
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = ##34#A.1.3 Health insurance and payment information##34#					
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#extension(http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)##34#					
* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = ##34#A.1.4 Information recipient##34#					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = ##34#A.1.5 Author##34#					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = ##34#A.1.6 Legal authenticator##34#					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
"* group[=].element[=].target.comment = ##34#The person authenticated the content and accepted legal responsibility for its content.
attester.where(mode='legal').party.resolve()##34#"					
* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = ##34#A.1.7 Result validator##34#					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
"* group[=].element[=].target.comment = ##34#The person authenticated the content in their professional capacity.
attester.where(mode='professional').party.resolve()##34#"					
* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = ##34#A.1.8 Laboratory report metadata##34#					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.documentId					
* group[=].element[=].display = ##34#A.1.8.0 Document Id##34#					
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = ##34#If it is the identifier of the report indipendently by its version. Otherwise you should refer to the Bundle.indentifier##34#					
* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = ##34#A.1.8.1 Document type##34#					
* group[=].element[=].target.code = #Composition.code					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = ##34#A.1.8.2 Document status##34#					
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#For FHIR R4 the more granular status is recorded in the DiagnosticReport.status. Mapping rules for valuing the Compisition.status are specified in http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus##34#					
* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = ##34#A.1.8.3 Report date and time##34#					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = ##34#A.1.8.4 Document title##34#					
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.studyType					
* group[=].element[=].display = ##34#A.1.8.5 Study type##34#					
* group[=].element[=].target.code = #Composition.category					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = ##34#A.1.8.6 Report custodian##34#					
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.confidentiality					
* group[=].element[=].display = ##34#A.1.8.7 Confidentiality##34#					
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.language					
* group[=].element[=].display = ##34#A.1.8.8 Language##34#					
* group[=].element[=].target.code = #Composition.language					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.version					
* group[=].element[=].display = ##34#A.1.8.9 Version##34#					
* group[=].element[=].target.code = #Composition.extension:versionNumber					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = ##34#if it refers to the business report version##34#					
* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = ##34#A.2-A.3 Order##34#					
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#extension(http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest)##34#					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = ##34#A.4 Specimen information##34#					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry.specimen					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If no sub sections##34#					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = ##34#A.5 Results data elements##34#					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If no sub sections##34#					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = ##34#A.4 Specimen information##34#					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry.specimen					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If sub sections##34#					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = ##34#A.5 Results data elements##34#					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If sub sections##34#					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
