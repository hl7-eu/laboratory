// -------------------------------------------------------------------------------
//  Concept Model. File: 					labRpt-to-fhir-map.fsh
// -------------------------------------------------------------------------------
Instance: ConceptMap-eu-diagRptStatus2CompStatus
InstanceOf: ConceptMap
Usage: #definition
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"
* name = "ConceptMapDiagRptStatus2CompStatus"
* title = "DiagnosticReport to Composition status"
* status = #draft
* experimental = true
* description = "Proposed relationship between the statused used in the DiagnosticReport resource and that used for the Composition."
* purpose = "It shows how to value the Composition status element based on the DiagnosticReport element."
* sourceUri = "http://hl7.org/fhir/ValueSet/diagnostic-report-status"
* targetUri = "http://hl7.org/fhir/ValueSet/composition-status"

* group[+].source = "http://hl7.org/fhir/diagnostic-report-status|4.0.1"
* group[=].target = "http://hl7.org/fhir/composition-status|4.0.1"

* group[=].element[+].code = #registered
* group[=].element[=].display = "Registered"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #partial
* group[=].element[=].display = "Partial"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #preliminary
* group[=].element[=].display = "Preliminary"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #final
* group[=].element[=].display = "Final"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #amended
* group[=].element[=].display = "Amended"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #corrected
* group[=].element[=].display = "Corrected"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #appended
* group[=].element[=].display = "Appended"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #cancelled
* group[=].element[=].display = "Cancelled"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #entered-in-error
* group[=].element[=].display = "Entered in Error"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "Entered in Error"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #unknown
* group[=].element[=].display = "Unknown"
* group[=].element[=].target.equivalence = #unmatched

* group[+].source = "http://hl7.org/fhir/diagnostic-report-status|5.0.0"
* group[=].target = "http://hl7.org/fhir/composition-status|5.0.0"

* group[=].element[+].code = #registered
* group[=].element[=].display = "Registered"
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #partial
* group[=].element[=].display = "Partial"
* group[=].element[=].target.code = #partial
* group[=].element[=].target.display = "Partial"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #preliminary
* group[=].element[=].display = "Preliminary"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #final
* group[=].element[=].display = "Final"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #amended
* group[=].element[=].display = "Amended"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #corrected
* group[=].element[=].display = "Corrected"
* group[=].element[=].target.code = #corrected
* group[=].element[=].target.display = "Corrected"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #appended
* group[=].element[=].display = "Appended"
* group[=].element[=].target.code = #appended
* group[=].element[=].target.display = "Appended"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #cancelled
* group[=].element[=].display = "Cancelled"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "Cancelled"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #entered-in-error
* group[=].element[=].display = "Entered in Error"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "Entered in Error"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #unknown
* group[=].element[=].display = "Unknown"
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.equivalence = #relatedto
