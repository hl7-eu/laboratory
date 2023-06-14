// -------------------------------------------------------------------------------					
//  Concept Model. File: 					recipient-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-recipient2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "RecipientMapPayer2FHIR"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Recipient Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient"					
* targetUri = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient"					
* group[=].target = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[=].element[+].code = #Recipient.identifier					
* group[=].element[=].display = "A.1.4.1 Recipient identifier"					
* group[=].element[=].target.code = #http://hl7.eu/fhir/StructureDefinition/information-recipient.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.name					
* group[=].element[=].display = "A.1.4.2 Recipient name"					
* group[=].element[=].target.code = #http://hl7.eu/fhir/StructureDefinition/information-recipient.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "A.1.4.3 Recipient organization"					
* group[=].element[=].target.code = #http://hl7.eu/fhir/StructureDefinition/information-recipient.resolve().ofType(Organization)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if the recipient is the organization"					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "A.1.4.3 Recipient organization"					
* group[=].element[=].target.code = #http://hl7.eu/fhir/StructureDefinition/information-recipient.resolve().ofType(PractionerRole).,organization"					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the organization the professional belong to"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
