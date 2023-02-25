// -------------------------------------------------------------------------------				
//  Logical Model				lab-report.fsh
// -------------------------------------------------------------------------------				
Logical: LabReportEhn				
Id: LabReport				
Title: "Laboratory Report"				
Description:  """Laboratory Report"""				
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""				
* header.subject 1..1 SubjectLabEhn "A.1.1 - A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  """				
* header.payer 0..1 PayerLabEhn "A.1.3 Health insurance and payment information" """A.1.3 Health insurance and payment information"""				
* header.informationRecipient 0..1 RecipientLabEhn "A.1.4 Information recipient" """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""				
* header.author 0..* AuthorLabEhn "A.1.5 Author" """A.1.5 Author (by whom the Laboratory result report or a subset of its results was authored)"""				
* header.legalAuthenticator 0..* LegalAuthenticatorLabEhn "A.1.6 Legal authenticator" """A.1.6 Legal authenticator (The person taking responsibility for the medical content of the document)"""				
* header.validator 0..* ValidatorLabEhn "A.1.7 Result validator" """A.1.7 Result validator"""				
* header.metadata 1..1 BackboneElement "A.1.8 Laboratory report metadata" """A.1.8 Laboratory report metadata"""				
* header.metadata.type 1..1 CodeableConcept "A.1.8.1 Document type" """A coded type of the document. Fixed value ""Laboratory report"" - Preferred system(s): LOINC"""				
* header.metadata.status 1..1 CodeableConcept "A.1.8.2 Document status" """The status of the laboratory test result report. E.g., preliminary, final. - Preferred system(s): hl7:DiagnosticReportStatus"""				
* header.metadata.dateTime 1..1 dateTime "A.1.8.3 Report date and time" """Date and time of the result report creation. - Preferred system(s): ISO 8601"""				
* header.metadata.title 0..1 string "A.1.8.4 Document title" """Document title, e.g. ""Laboratory Result report"" - Preferred system(s): """				
* header.metadata.custodian 0..1 BackboneElement "A.1.8.5 Report custodian" """Organisation that is in charge of maintaining the laboratory report - Preferred system(s): """				
* order 0..* OrderLabEhn "A.2-A.3 Order" """A.2 Order information (Laboratory Result Report could respond to multiple test orders)
A.3 Order reason (Laboratory Result Report could respond to multiple reasons)
"""				
* specimen 0..* SpecimenLabEhn "A.4 Specimen information" """A.4 Specimen information"""				
* result 0..* ResultLabEhn "A.5 Results data elements" """A.5 Results data elements"""				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLab2Fhir				
Id: fhir				
Title: "eHN Lab model to FHIR R4 Map"				
Source: LabReport				
Target: "hl7.org/fhir/r4"				
				
* -> "Bundle.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/Bundle-lab-xpandh')"				
* header -> "Composition.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/Composition-lab-xpandh')"				
* header.subject -> "Composition.subject"				
* header.payer -> "ServiceRequest.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/ServiceRequest-lab-xpandh').insurance.resolve()"				
* header.informationRecipient -> ".extension('http://hl7.org/fhir/StructureDefinition/cqf-receivingOrganization') [TBD}"				
* header.author -> "Composition.author"				
* header.legalAuthenticator -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#legal)"				
* header.validator -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#professional)"				
* header.metadata -> "Composition"				
* header.metadata.type -> "Composition.type"				
* header.metadata.status -> "Composition.status"				
* header.metadata.dateTime -> "Bundle.timestamp"				
* header.metadata.title -> "Composition.title"				
* header.metadata.custodian -> "Composition.custodian"				
* order -> "Composition.extension('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"				
* order -> "Composition.extension('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/composition-basedOn-order-or-requisition').valueIdentifier"				
* order -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/DiagnosticReport-lab-xpandh').basedOn.extension('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/diagnostic-report-basedOn-requisition').valueIdentifier"				
* order -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/DiagnosticReport-lab-xpandh').basedOn.resolve()"				
* specimen -> "Observation.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/Observation-results-laboratory-eu-xpandh').specimen.resolve()"				
* specimen -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/DiagnosticReport-lab-xpandh').specimen.resolve()"				
* result -> "Composition.section:no-subsections.entry.resolve()"				
* result -> "Composition.section:subsections.section.entry.resolve()"				
* result -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/DiagnosticReport-lab-xpandh').result.resolve()"				
// --END				
// --END				
// --END				
// --END				
