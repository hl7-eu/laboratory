// -------------------------------------------------------------------------------					
//  Concept Model. File: 					author-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-author2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Author2Fhir"					
* title = "eHN Author to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Author Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Author data set defined by the EU eHN guidelines is mapped into this guide"					
//* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Author"					
//* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"					
					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Author"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "A.1.5.1 Author identifier"					
* group[=].element[=].target.code = #Composition.author.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #Composition.author.resolve().ofType(Practictioner).name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #Composition.author.resolve().ofType(PractictionerRole).practictioner.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.3 Author organization"					
* group[=].element[=].target.code = #Composition.author.resolve().ofType(PractictionerRole).organization.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Author"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"					
					
* group[=].element[+].code = #Author.$this					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "A.1.5.1 Author identifier"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve().ofType(Practictioner).name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve().ofType(PractictionerRole).practictioner.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.3 Author organization"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.resolve().ofType(PractictionerRole).organization.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Author"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"					
					
* group[=].element[+].code = #Author.$this					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.performer.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.resolve().ofType(Practictioner).name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.resolve().ofType(PractictionerRole).practictioner.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.3 Author organization"					
* group[=].element[=].target.code = #DiagnosticReport.performer.resolve().ofType(PractictionerRole).organization.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
