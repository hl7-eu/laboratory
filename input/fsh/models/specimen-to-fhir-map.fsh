// -------------------------------------------------------------------------------					
//  Concept Model. File: 					specimen-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-specimen2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Specimen2Fhir"					
* title = "eHN Specimen to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Specimen Model to this guide Map"					
* purpose = "It shows how the Specimen data set defined by the EU eHN guidelines is mapped into this guide"					
//* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/SpecimenLab"					
//* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"					

* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/SpecimenLab"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab"					
					
* group[=].element[+].code = #SpecimenLab.identifier					
* group[=].element[=].display = "A.4.1 Specimen identifier"					
* group[=].element[=].target.code = #Specimen.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.speciesType					
* group[=].element[=].display = "A.4.2 Type of species"					
* group[=].element[=].target.code = #Specimen.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #SpecimenLab.material					
* group[=].element[=].display = "A.4.3 Material"					
* group[=].element[=].target.code = #Specimen.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #SpecimenLab.collected					
* group[=].element[=].display = "A.4.4 Collection period"					
* group[=].element[=].target.code = #Specimen.collection.collected[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "A.4.5 Anatomic location"					
* group[=].element[=].target.code = #Specimen.collection.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
					
* group[=].element[+].code = #SpecimenLab.morphology					
* group[=].element[=].display = "A.4.6 Morphology"					
* group[=].element[=].target.code = #Specimen.feature.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #relatedto					
* group[=].element[=].target.comment = "to be checked. This is an R5 element"					
* group[=].element[+].code = #SpecimenLab.sourceDevice					
* group[=].element[=].display = "A.4.7 Source Device"					
//---END					
//---END					
//---END					
