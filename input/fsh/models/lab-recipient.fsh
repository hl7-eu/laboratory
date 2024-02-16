// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient.fsh
// -------------------------------------------------------------------------------				
Logical: RecipientLabEhn				
Id: Recipient				
Title: "A.1.4 - Information recipient"				
Description:  """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable.
Section A1.4 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* identifier 0..1 Identifier "A.1.4.1 Recipient identifier" """The health professional identification number.
Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.
In case when recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""				
* name 0..* HumanName "A.1.4.2 Recipient name" """Person name."""				
* organization 0..* Organization "A.1.4.3 Recipient organization" """The healthcare provider organization information."""		 		
* address 0..* Address "A.1.4.4 Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g., street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose. - Preferred system(s): """				
* country 0..* CodeableConcept "A.1.4.5 Country" """Country of the recipient. - Preferred system(s): ISO 3166"""				
* telecom 0..* ContactPoint "A.1.4.6 Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided. - Preferred system(s): """				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
