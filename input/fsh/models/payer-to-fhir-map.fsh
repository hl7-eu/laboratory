// -------------------------------------------------------------------------------					
//  Concept Model. File: 					payer-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-payer2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Payer2Fhir"					
* title = "eHN Payer to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Payer Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Payer data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Payer"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Payer"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab"					
					
* group[=].element[+].code = #Payer.insurance					
* group[=].element[=].display = "A.1.3.1 Health insurance information"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).$this					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Payer.insurance.identifier					
* group[=].element[=].display = "A.1.3.1.1 Health insurance code"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).payor.ofType(Organization).resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.name					
* group[=].element[=].display = "A.1.3.1.2 Health insurance name"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).payor.ofType(Organization).resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).policyHolder.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).beneficiary.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).subscriberId					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.resolve().ofType(Coverage).subscriber.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
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
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
