// -------------------------------------------------------------------------------				
//  Logical Model				lab-report.fsh
// -------------------------------------------------------------------------------				
Logical: LabReportEhn				
Id: LabReport				
Title: "A - Laboratory Report"				
Description:  """Laboratory Report. eHN guideline model."""				
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""				
* header.subject 1..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Subject "A.1.1 - A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  """				
* header.payer 0..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Payer "A.1.3 Health insurance and payment information" """A.1.3 Health insurance and payment information"""				
* header.informationRecipient 0..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient "A.1.4 Information recipient" """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""				
* header.author 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Author "A.1.5 Author" """A.1.5 Author (by whom the Laboratory result report or a subset of its results was authored)"""				
* header.legalAuthenticator 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/LegalAuthenticator "A.1.6 Legal authenticator" """A.1.6 Legal authenticator (The person taking responsibility for the medical content of the document)"""				
* header.validator 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Validator "A.1.7 Result validator" """A.1.7 Result validator"""				
* header.metadata 1..1 BackboneElement "A.1.8 Laboratory report metadata" """A.1.8 Laboratory report metadata"""				
* header.metadata.documentId 1..1 Identifier "A.1.8.0 Document Id" """Unique identifier of the document"""				
* header.metadata.type 1..1 CodeableConcept "A.1.8.1 Document type" """A coded type of the document. Fixed value ""Laboratory report"" - Preferred system(s): LOINC"""				
* header.metadata.status 1..1 CodeableConcept "A.1.8.2 Document status" """The status of the laboratory test result report. E.g., preliminary, final. - Preferred system(s): hl7:DiagnosticReportStatus"""				
* header.metadata.dateTime 1..1 dateTime "A.1.8.3 Report date and time" """Date and time of the result report creation. - Preferred system(s): ISO 8601"""				
* header.metadata.title 0..1 string "A.1.8.4 Document title" """Document title, e.g. 'Laboratory Result report'"""				
* header.metadata.studyType 0..* CodeableConcept "A.1.8.5 Study type" """Type (or types) of the laboratory study performed.  - Preferred system(s): LOINC SNOMED CT """				
* header.metadata.custodian 0..1 BackboneElement "A.1.8.6 Report custodian" """Organisation that is in charge of maintaining the laboratory report """				
* header.metadata.confidentiality 0..1 CodeableConcept "A.1.8.7 Confidentiality" """Level of confidentiality of the document. Implicit value is normal. - Preferred system(s): hl7:Confidentiality"""				
* header.metadata.language 0..1 CodeableConcept "A.1.8.8 Language" """Language in which the document is written. Language is expressed by the ISO language code.- Preferred system(s):  BCP 47"""				
* header.metadata.version 0..1 string "A.1.8.9 Version" """Version of the document."""				
* order 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Order "A.2-A.3 Order" """A.2 Order information (Laboratory Result Report could respond to multiple test orders)
A.3 Order reason (Laboratory Result Report could respond to multiple reasons)
"""				
* specimen 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/SpecimenLab "A.4 Specimen information" """A.4 Specimen information"""				
* result 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Result "A.5 Results data elements" """A.5 Results data elements"""				
//--- END				
//--- END				
//--- END				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
