// -------------------------------------------------------------------------------					
//  Concept Model. File: 					legalAuth-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-legalAuth2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "LegalAuth2Fhir"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Legal Authenticator Model to this guide Map"					
* purpose = "It shows how theLegal Authenticator Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
//* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/LegalAuthenticator"					
//* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/LegalAuthenticator"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
* group[=].element[+].code = #LegalAuthenticator.identifier					
* group[=].element[=].display = "A.1.6.1 Legal authenticator identifier"					
* group[=].element[=].target.code = #Composition.attester.where(mode='legal').party.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #LegalAuthenticator.name					
* group[=].element[=].display = "A.1.6.2 Legal authenticator name"					
* group[=].element[=].target.code = #Composition.attester.where(mode='legal').party.resolve().ofType(Practictioner).name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #LegalAuthenticator.name					
* group[=].element[=].display = "A.1.6.2 Legal authenticator name"					
* group[=].element[=].target.code = #Composition.attester.where(mode='legal').party.resolve().ofType(PractictionerRole).practictioner.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #LegalAuthenticator.organization					
* group[=].element[=].display = "A.1.6.3 Legal authenticator organization"					
* group[=].element[=].target.code = #Composition.attester.where(mode='legal').party.resolve().ofType(PractictionerRole).organization.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #LegalAuthenticator.dateTime					
* group[=].element[=].display = "A.1.6.4 Authentication date and time"					
* group[=].element[=].target.code = #Composition.attester.where(mode='legal').time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
