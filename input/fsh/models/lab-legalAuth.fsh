// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth.fsh
// -------------------------------------------------------------------------------				
Logical: LegalAuthenticatorLabEhn				
Id: LegalAuthenticator				
Title: "A.1.6 - Legal authenticator"				
Description:  """Legal authenticator (The person taking responsibility for the medical content of the document).
Section A1.6 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* identifier 0..1 Identifier "A.1.6.1 Legal authenticator identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.  - Preferred system(s): """				
* name 0..* HumanName "A.1.6.2 Legal authenticator name" """Person name. - Preferred system(s): """				
* organization 0..* Organization "A.1.6.3 Legal authenticator organization" """The healthcare provider organization information. - Preferred system(s): """		 		
* dateTime 0..1 dateTime "A.1.6.4 Authentication date and time" """Date and time when the document was authorized. - Preferred system(s): ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
