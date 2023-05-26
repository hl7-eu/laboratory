// -------------------------------------------------------------------------------				
//  Logical Model				lab-validator.fsh
// -------------------------------------------------------------------------------				
Logical: ValidatorLabEhn				
Id: Validator				
Title: "Result validator (A.1.7)"				
Description:  """A.1.7 Result validator"""				
* identifier 0..1 Identifier "A.1.7.1 Result validator identifier" """The health professional identification number. Either an internal identifier assign by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.  - Preferred system(s): """				
* name 0..* HumanName "A.1.7.2 Result validator name" """Person name. - Preferred system(s): """				
* organization 0..* Organization "A.1.7.3 Result validator organisation" """The healthcare provider organisation information. - Preferred system(s): """		 		
* dateTime 0..1 dateTime "A.1.7.4 Validation date and time" """Date and time when the document was validated. - Preferred system(s): ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabValidator2Fhir				
Id: fhir				
Title: "eHN Lab Validator model to FHIR R4 Map"				
Source: Validator				
Target: "hl7.org/fhir/r4"				
				
* -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#professional)"				
* identifier -> ".party.resolve().ofType(PractictionerRole).identifier"				
* identifier -> ".party.resolve().ofType(PractictionerRole).practictioner.resolve().identifier"				
* name -> ".party.resolve().ofType(PractictionerRole).practictioner.resolve().name"				
* organization -> ".party.resolve().ofType(PractictionerRole).organization.resolve()"				
* organization -> ".party.resolve().ofType(Organization)"				
* dateTime -> ".time"				
// --END				
// --END				
// --END				
// --END				
// --END				
