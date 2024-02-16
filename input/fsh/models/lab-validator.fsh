// -------------------------------------------------------------------------------				
//  Logical Model				lab-validator.fsh
// -------------------------------------------------------------------------------				
Logical: ValidatorLabEhn				
Id: Validator				
Title: "A.1.7 - Result validator"				
Description:  """Result validator. Section A1.7 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* identifier 0..1 Identifier "A.1.7.1 Result validator identifier" """The health professional identification number. Either an internal identifier assign by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.  - Preferred system(s): """				
* name 0..* HumanName "A.1.7.2 Result validator name" """Person name. - Preferred system(s): """				
* organization 0..* Organization "A.1.7.3 Result validator organisation" """The healthcare provider organisation information. - Preferred system(s): """		 		
* dateTime 0..1 dateTime "A.1.7.4 Validation date and time" """Date and time when the document was validated. - Preferred system(s): ISO 8601"""				
//--- END				
//--- END				
//--- END				
