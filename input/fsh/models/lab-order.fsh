// -------------------------------------------------------------------------------				
//  Logical Model				lab-order.fsh
// -------------------------------------------------------------------------------				
Logical: OrderLabEhn				
Id: Order				
Title: "A2, A3 - Order"				
Description:  """Order information and reason. Sections A2 and A3 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* orderDetails 0..1 BackboneElement "A.2 Order information" """A.2 Order information (Laboratory Result Report could respond to multiple test orders) """				
* orderDetails.identifier 0..* Identifier "A.2.1 Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""				
* orderDetails.dateTime 0..* dateTime "A.2.2 Order date and time" """Date and time of the order placement. - Preferred system(s): ISO 8601"""		 		
* orderDetails.orderPlacerIdentifier 0..* Identifier "A.2.3 Order placer identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case the order placer is not a health professional, e.g. by patients themselves where applicable, an appropriate personal identifier should be used. """				
* orderDetails.orderPlacerName 0..* HumanName "A.2.4 Order placer name" """Person name."""				
* orderDetails.orderPlacerContacts 0..* BackboneElement "A.2.5 Order placer contact details" """Contact details of order placer (address and telecom details)."""				
* orderDetails.orderPlacerOrganization 0..* Organization "A.2.6 Order placer organization" """Order placer organization information."""				
* reason 0..* BackboneElement "A.3 Order reason" """A.3 Order reason (Laboratory Result Report could respond to multiple reasons) """				
* reason.code 0..* CodeableConcept "A.3.1 Problem / diagnosis / condition description" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation.
- Preferred system(s): ICD-10 (ICD-11 when available)
- Preferred system(s): SNOMED CT
- Preferred system(s): Orphacode"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
