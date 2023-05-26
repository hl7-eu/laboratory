// -------------------------------------------------------------------------------				
//  Logical Model				lab-order.fsh
// -------------------------------------------------------------------------------				
Logical: OrderLabEhn				
Id: Order				
Title: "Order (A2, A3)"				
Description:  """Order information (A.2) and reason (A3)"""				
* orderDetails 0..1 BackboneElement "A.2 Order information" """A.2 Order information (Laboratory Result Report could respond to multiple test orders) """				
* orderDetails.identifier 0..* Identifier "A.2.1 Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""				
* orderDetails.dateTime 0..* dateTime "A.2.2 Order date and time" """Date and time of the order placement. - Preferred system(s): ISO 8601"""		 		
* orderDetails.orderPlacerIdentifier 0..* Identifier "A.2.3 Order placer identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case when order placer is not a health professional, e.g. by patients themselves where applicable, appropriate personal identifier should be used. """				
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
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabOrder2Fhir				
Id: fhir				
Title: "eHN Lab Order model to FHIR R4 Map"				
Source: Order				
Target: "hl7.org/fhir/r4"				
				
* -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"				
* orderDetails -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"				
* orderDetails.identifier -> "ServiceRequest.identifier"				
* orderDetails.dateTime -> "ServiceRequest.authoredOn"				
* orderDetails.orderPlacerIdentifier -> "ServiceRequest.requester.resolve().ofType(PractictionerRole).identifier"				
* orderDetails.orderPlacerIdentifier -> "ServiceRequest.requester.resolve().ofType(PractictionerRole).practictioner.resolve().identifier"				
* orderDetails.orderPlacerName -> "ServiceRequest.requester.resolve().ofType(PractictionerRole).practictioner.resolve().name"				
* orderDetails.orderPlacerContacts -> "ServiceRequest.requester.resolve().ofType(PractictionerRole).telecom"				
* orderDetails.orderPlacerContacts -> "ServiceRequest.requester.resolve().ofType(PractictionerRole).location"				
* orderDetails.orderPlacerOrganization -> "ServiceRequest.requester.resolve().ofType(PractictionerRole).organization.resolve()"				
* orderDetails.orderPlacerOrganization -> "ServiceRequest.requester.resolve().ofType(Organization)"				
* reason -> "ServiceRequest.reasonCode"				
* reason.code -> "ServiceRequest.reasonCode"				
// --END				
// --END				
// --END				
