// -------------------------------------------------------------------------------				
//  Logical Model				lab-subject.fsh
// -------------------------------------------------------------------------------				
Logical: SubjectLabEhn				
Id: Subject				
Title: "A1.1, A1.2 - Subject of care"				
Description:  """Patient or Subject of care. Sections A1.1 and A1.2 of the eHN guideline."""				
* identification 1..1 BackboneElement "A.1.1 Identification of the patient/subject" """A.1.1 Identification of the patient/subject"""				
* identification.familyName 0..* string "A.1.1.1 Familyname/surname" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""				
* identification.givenName 0..* string "A.1.1.2 Given name" """The given name/first name of the patient (also known as forename or first name). This field can contain more than one element. """		 		
* identification.dateOfBirth 0..1 dateTime "A.1.1.3 Date of birth" """The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided. - Preferred system(s): Complete date, without time, following the ISO 8601 """				
* identification.identifier 0..1 Identifier "A.1.1.4 Personal identifier" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) for Czech patient. Multiple identifiers could be provided. """				
* identification.gender 0..1 CodeableConcept "A.1.1.5 Gender" """This field must contain a recognised valid value for 'administrative gender'. 
If different, 'physiological gender' should be communicated elsewhere
Preferred system(s): - Preferred system(s): HL7 Administrative Gender """				
* addressTelecom 0..* BackboneElement "A.1.2 Patient/subject related contact information" """A.1.2 Patient/subject related contact information"""				
* addressTelecom.address 0..* Address "A.1.2.1 Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose. - Preferred system(s):  ISO 3166"""				
* addressTelecom.telecom 0..* ContactPoint "A.1.2.2 Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided. - Preferred system(s): """				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
