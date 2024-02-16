// -------------------------------------------------------------------------------				
//  Logical Model				lab-author.fsh
// -------------------------------------------------------------------------------				
Logical: AuthorLabEhn				
Id: Author				
Title: "A.1.5 - Author"				
Description:  """Author (by whom the Laboratory result report or a subset of its results was authored). Section A1.5 of the eHN guideline."""				
* insert SetFmmandStatusRule (2, informative)				
* identifier 0..1 Identifier "A.1.5.1 Author identifier" """The health professional or authoring device identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.  - Preferred system(s): """				
* name 0..* HumanName "A.1.5.2 Author name" """Person or device name. - Preferred system(s): """				
* organization 0..* Organization "A.1.5.3 Author organization" """The healthcare provider organization information. - Preferred system(s): """		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
