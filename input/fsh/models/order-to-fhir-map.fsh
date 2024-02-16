// -------------------------------------------------------------------------------					
//  Concept Model. File: 					order-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: order2FHIR-eu-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "Order2Fhir"					
* title = "eHN Order to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Order to this guide Map"					
* purpose = "It shows how the Order data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Order"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Order"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab"					
					
* group[=].element[+].code = #Order.orderDetails					
* group[=].element[=].display = "A.2 Order information"					
* group[=].element[=].target.code = #ServiceRequest					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.orderDetails.identifier					
* group[=].element[=].display = "A.2.1 Order Id"					
* group[=].element[=].target.code = #ServiceRequest.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.orderDetails.identifier					
* group[=].element[=].display = "A.2.1 Order Id"					
* group[=].element[=].target.code = #ServiceRequest.requisition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if the Composite Request ID."					
* group[=].element[+].code = #Order.orderDetails.dateTime					
* group[=].element[=].display = "A.2.2 Order date and time"					
* group[=].element[=].target.code = #ServiceRequest.authoredOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Order.orderDetails.orderPlacerIdentifier					
* group[=].element[=].display = "A.2.3 Order placer identifier"					
* group[=].element[=].target.code = #ServiceRequest.requester.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if the Composite Request ID."					
* group[=].element[+].code = #Order.orderDetails.orderPlacerName					
* group[=].element[=].display = "A.2.4 Order placer name"					
* group[=].element[=].target.code = #ServiceRequest.requester.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(Practitioner).name"					
* group[=].element[+].code = #Order.orderDetails.orderPlacerName					
* group[=].element[=].display = "A.2.4 Order placer name"					
* group[=].element[=].target.code = #ServiceRequest.requester.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).Practitioner.resolve().name"					
* group[=].element[+].code = #Order.orderDetails.orderPlacerContacts					
* group[=].element[=].display = "A.2.5 Order placer contact details"					
* group[=].element[=].target.code = #ServiceRequest.requester.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(Practitioner).telecom"					
* group[=].element[+].code = #Order.orderDetails.orderPlacerContacts					
* group[=].element[=].display = "A.2.5 Order placer contact details"					
* group[=].element[=].target.code = #ServiceRequest.requester.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(Practitioner).address"					
* group[=].element[+].code = #Order.orderDetails.orderPlacerContacts					
* group[=].element[=].display = "A.2.5 Order placer contact details"					
* group[=].element[=].target.code = #ServiceRequest.requester.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).telecom"					
* group[=].element[+].code = #Order.orderDetails.orderPlacerOrganization					
* group[=].element[=].display = "A.2.6 Order placer organization"					
* group[=].element[=].target.code = #ServiceRequest.requester.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Order.reason					
* group[=].element[=].display = "A.3 Order reason"					
* group[=].element[=].target.code = #ServiceRequest.reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.reason					
* group[=].element[=].display = "A.3 Order reason"					
* group[=].element[=].target.code = #ServiceRequest.reasonReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.reason.code					
* group[=].element[=].display = "A.3.1 Problem / diagnosis / condition description"					
* group[=].element[=].target.code = #ServiceRequest.reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
