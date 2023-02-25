// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth.fsh
// -------------------------------------------------------------------------------				
Logical: LegalAuthenticatorLabEhn				
Id: LegalAuthenticator				
Title: "Legal authenticator (A.1.6)"				
Description:  """A.1.6 Legal authenticator (The person taking responsibility for the medical content of the document)"""				
* identifier 0..1 Identifier "A.1.6.1 Legal authenticator identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.  - Preferred system(s): """				
* name 0..* HumanName "A.1.6.2 Legal authenticator name" """Person name. - Preferred system(s): """				
* organization 0..* Organization "A.1.6.3 Legal authenticator organization" """The healthcare provider organization information. - Preferred system(s): """		 		
* dateTime 0..1 dateTime "A.1.6.4 Authentication date and time" """Date and time when the document was authorized. - Preferred system(s): ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabLegalAuthenticator2Fhir				
Id: fhir				
Title: "eHN Lab LegalAuthenticator model to FHIR R4 Map"				
Source: LegalAuthenticator				
Target: "hl7.org/fhir/r4"				
				
* -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#legal)"				
* identifier -> ".party.resolve().ofType(PractictionerRole).identifier"				
* name -> ".party.resolve().ofType(PractictionerRole).practictioner.resolve().name"				
* organization -> ".party.resolve().ofType(PractictionerRole).organization.resolve()"				
* organization -> ".party.resolve().ofType(Organization)"				
* dateTime -> ".time"				
// --END				
// --END				
// --END				
				
