// -------------------------------------------------------------------------------					
//  Concept Model. File: 					validator-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: validator2FHIR-eu-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "Validator2Fhir"					
* title = "eHN Validator to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Validator Model to this guide Map"					
* purpose = "It shows how the Validator Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Validator"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Validator"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
* group[=].element[+].code = #Validator.identifier					
* group[=].element[=].display = "A.1.7.1 Result validator identifier"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional')"					
* group[=].element[+].code = #Validator.name					
* group[=].element[=].display = "A.1.7.2 Result validator name"					
* group[=].element[=].target.code = #Composition.attester.party.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(Practitioner).name"					
* group[=].element[+].code = #Validator.name					
* group[=].element[=].display = "A.1.7.2 Result validator name"					
* group[=].element[=].target.code = #Composition.attester.party.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).Practitioner.resolve().name"					
* group[=].element[+].code = #Validator.organization					
* group[=].element[=].display = "A.1.7.3 Result validator organisation"					
* group[=].element[=].target.code = #Composition.attester.party.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Validator.dateTime					
* group[=].element[=].display = "A.1.7.4 Validation date and time"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').time"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
