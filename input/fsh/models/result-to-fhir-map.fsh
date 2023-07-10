// -------------------------------------------------------------------------------					
//  Concept Model. File: 					result-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-eu-result2FHIR					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Result2Fhir"					
* title = "eHN Result to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Result Model to this guide Map"					
* purpose = "It shows how the Result data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Result"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"					
					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Result"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"					
					
* group[=].element[+].code = #Result.narrative					
* group[=].element[=].display = "A.5.1 Laboratory report narrative"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Result.narrative.report					
//---END					
* group[=].element[=].display = "A.5.1.1 Narrative report"					
//-- unmatched					
//-- unmatched					
//---END					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "A.5.1.2 Comments, interpretation and recommendations"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "A.5.2 Observation details"					
* group[=].element[=].target.code = #Observation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.dateTime					
* group[=].element[=].display = "A.5.2.1 Observation date"					
* group[=].element[=].target.code = #Observation.effective[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "A.5.2.3 Observation code"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "A.5.2.3 Observation code"					
* group[=].element[=].target.code = #Observation.hasMember.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "A.5.2.3 Observation code"					
* group[=].element[=].target.code = #Observation.component.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.code.name					
* group[=].element[=].display = "A.5.2.3.1 Observation name"					
* group[=].element[=].target.code = #Observation.code.coding.display					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If the 'code' is the Observation.code. Similar mapping for the other cases."					
* group[=].element[+].code = #Result.observation.code.originalName					
* group[=].element[=].display = "A.5.2.3.2 Observation original name"					
* group[=].element[=].target.code = #Observation.code.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If the 'code' is the Observation.code. Similar mapping for the other cases."					
* group[=].element[+].code = #Result.observation.code.displayName					
* group[=].element[=].display = "A.5.2.3.3 Observation display name"					
* group[=].element[=].target.code = #Observation.code.coding.display					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The coding refers to a coded concept different from that used for A.5.2.3.1.
If the 'code' is the Observation.code. Similar mapping for the other cases."					
* group[=].element[+].code = #Result.observation.code.displayName					
* group[=].element[=].display = "A.5.2.3.3 Observation display name"					
* group[=].element[=].target.code = #Observation.code.coding.display.extension:translation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The coding refers to the same coded concept used for A.5.2.3.1.
If the 'code' is the Observation.code. Similar mapping for the other cases."					
* group[=].element[+].code = #Result.observation.method					
* group[=].element[=].display = "A.5.2.4 Observation method"					
* group[=].element[=].target.code = #Observation.method					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "A.5.2.5 Observation device"					
* group[=].element[=].target.code = #Observation.device					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if the measuring device"					
* group[=].element[+].code = #Result.observation.order					
* group[=].element[=].display = "A.5.2.8 Order"					
* group[=].element[=].target.code = #Observation.basedOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer					
* group[=].element[=].display = "A.5.2.9 Performer"					
* group[=].element[=].target.code = #Observation.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.reporter					
* group[=].element[=].display = "A.5.2.10 Reporter"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "interpreter or a person responsible for validation of this result. To be checked"					
* group[=].element[+].code = #Result.observation.result					
* group[=].element[=].display = "A.5.2.11 Observation result"					
* group[=].element[=].target.code = #Observation.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.result					
* group[=].element[=].display = "A.5.2.11 Observation result"					
* group[=].element[=].target.code = #Observation.component.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.interpretation					
* group[=].element[=].display = "A.5.2.12 Observation interpretation"					
* group[=].element[=].target.code = #Observation.interpretation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.interpretation					
* group[=].element[=].display = "A.5.2.12 Observation interpretation"					
* group[=].element[=].target.code = #Observation.component.interpretation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.description					
* group[=].element[=].display = "A.5.2.13 Result description"					
* group[=].element[=].target.code = #Observation.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #Result.observation.accreditationStatus					
* group[=].element[=].display = "A.5.2.14 Accreditation status"					
* group[=].element[=].target.code = #Observation.performer.qualification					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked
performer ofType PractictionerRole"					
* group[=].element[+].code = #Result.observation.accreditationStatus					
//---END					
//---END					
//---END					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Result"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"					
					
* group[=].element[+].code = #Result.narrative					
* group[=].element[=].display = "A.5.1 Laboratory report narrative"					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "A.5.1.1 Narrative report"					
* group[=].element[=].target.code = #DiagnosticReport.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "A.5.1.2 Comments, interpretation and recommendations"					
* group[=].element[=].target.code = #DiagnosticReport.conclusion					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if related to the overall report conclusions"					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "A.5.2 Observation details"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.dateTime					
* group[=].element[=].display = "A.5.2.1 Observation date"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "A.5.2.3 Observation code"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code.name					
* group[=].element[=].display = "A.5.2.3.1 Observation name"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code.originalName					
* group[=].element[=].display = "A.5.2.3.2 Observation original name"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code.displayName					
* group[=].element[=].display = "A.5.2.3.3 Observation display name"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.method					
* group[=].element[=].display = "A.5.2.4 Observation method"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "A.5.2.5 Observation device"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.order					
* group[=].element[=].display = "A.5.2.8 Order"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.performer					
* group[=].element[=].display = "A.5.2.9 Performer"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.reporter					
* group[=].element[=].display = "A.5.2.10 Reporter"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.result					
* group[=].element[=].display = "A.5.2.11 Observation result"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.interpretation					
* group[=].element[=].display = "A.5.2.12 Observation interpretation"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.description					
* group[=].element[=].display = "A.5.2.13 Result description"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.accreditationStatus					
* group[=].element[=].display = "A.5.2.14 Accreditation status"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Result"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"					
					
* group[=].element[+].code = #Result.narrative					
* group[=].element[=].display = "A.5.1 Laboratory report narrative"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "A.5.1.1 Narrative report"					
* group[=].element[=].target.code = #Composition.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "A.5.1.1 Narrative report"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if single section"					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "A.5.1.1 Narrative report"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if multiple sections"					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "A.5.1.2 Comments, interpretation and recommendations"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if single section"					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "A.5.1.2 Comments, interpretation and recommendations"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if multiple sections"					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "A.5.2 Observation details"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if single section"					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "A.5.2 Observation details"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if multiple sections"					
* group[=].element[+].code = #Result.observation.dateTime					
* group[=].element[=].display = "A.5.2.1 Observation date"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "A.5.2.3 Observation code"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code.name					
* group[=].element[=].display = "A.5.2.3.1 Observation name"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code.originalName					
* group[=].element[=].display = "A.5.2.3.2 Observation original name"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.code.displayName					
* group[=].element[=].display = "A.5.2.3.3 Observation display name"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.method					
* group[=].element[=].display = "A.5.2.4 Observation method"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "A.5.2.5 Observation device"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.order					
* group[=].element[=].display = "A.5.2.8 Order"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.performer					
* group[=].element[=].display = "A.5.2.9 Performer"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.reporter					
* group[=].element[=].display = "A.5.2.10 Reporter"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.result					
* group[=].element[=].display = "A.5.2.11 Observation result"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.interpretation					
* group[=].element[=].display = "A.5.2.12 Observation interpretation"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.description					
* group[=].element[=].display = "A.5.2.13 Result description"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
* group[=].element[+].code = #Result.observation.accreditationStatus					
* group[=].element[=].display = "A.5.2.14 Accreditation status"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
//---END					
//---END					
//---END					
//---END					
//---END					
