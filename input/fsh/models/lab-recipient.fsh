// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient.fsh
// -------------------------------------------------------------------------------				
Logical: RecipientLabEhn				
Id: Recipient				
Title: "A.1.4 - Information recipient"				
Description:  """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""				
* identifier 0..1 Identifier "A.1.4.1 Recipient identifier" """The health professional identification number.
Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.
In case when recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""				
* name 0..* HumanName "A.1.4.2 Recipient name" """Person name."""				
* organization 0..* Organization "A.1.4.3 Recipient organization" """The healthcare provider organization information."""		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabRecipient2Fhir				
Id: fhir				
Title: "eHN Lab Recipient model to FHIR R4 Map"				
Source: Recipient				
Target: "hl7.org/fhir/r4"				
				
* -> "Organization"				
* -> "PractictionerRole"				
* -> "Practictioner"				
* -> "Patient"				
* -> "RelatedPerson"				
* identifier -> ".identifier"				
* name -> "Organization.name"				
* name -> "PractictionerRole.practitioner.resolve().name"				
* name -> "Practictioner.name"				
* name -> "Patientn.name"				
* name -> "RelatedPerson.name"				
* organization -> "PractictionerRole.organization.resolve()"				
// --END				
// --END				
// --END				
