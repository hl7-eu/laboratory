//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* value[x] only Reference (ServiceRequest) or Identifier

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: DiagnosticReportBasedOnRequisition
Id:   diagnostic-report-basedOn-requisition
Title:  "DiagnosticReport Based On Requesition"
Description: "This extension provides a link to the requisition (ServiceRequest.requisition [i.e., 'groupIdentifier']) that this DiagnosticReport is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
// DiagnosticReport already includes 'basedOn' with Reference(ServiceRequest)
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport.basedOn"
* value[x] only Identifier

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: Conformance
Parent: http://hl7.org/fhir/StructureDefinition/Extension
Id: conformance-cen-ips
Title: "Conformance attribute"
Description: "This attribute captures the level of requirement (mandatory, required, required if known, optional, conditional) for each specified element"
//-------------------------------------------------------------------------------------------
* ^status = #draft
* ^abstract = true
* ^context[0].type = #element
* ^context[0].expression = "ElementDefinition"
* . ^short = "Conformance"
* . ^definition = "The element shall assume one of the following values: \r\n\r\nM ; Mandatory (exceptions not allowed); A mandatory element shall always be present and - where applicable - shall be valorised with valid values. No exceptions or empty/null values are allowed in this case.\r\nIf it refers to a composite element (e.g. a section, a list; a label concept) the presence of the included elements is determined by the conformance rules of these sub-elements.\r\nRecipient shall understand mandatory elements.\r\nIf a ‘mandatory’ element is missing then the document is no longer a conformant IPS.\r\nA derived model (that includes also implementable specifications) shall maintain an equivalent conformance strength.\r\n\r\nR ; Required (exceptions allowed);  A required element shall always be present and - where applicable - should be valorised with valid values. Exceptions or empty/null values are allowed in this case.\r\nIf it refers to a composite element (e.g. a section, a list; a label concept a complex data type) the presence of the included elements is determined by the conformance rules of these sub-elements.\r\nRecipient shall understand required elements.\r\nIf a ‘required’ element is missing then the document is no longer a conformant IPS.\r\nA derived model (that includes also implementable specifications) shall maintain an equivalent conformance strength; or may further constrain it (e.g. from ‘R’ to ‘M’).\r\n\r\nRK ; Required, if known; A “Required if known” element is one that should be provided.\r\nIf there is information available, the element must be present and - where applicable - valorised with valid values.\r\nIf there is no information available, the element may be omitted, may be left empty, or may be valorised with exceptional or null values depending on the implementation.\r\nIf it refers to a composite element (e.g. a section, a list, a label concept, a complex data type) the presence of the included elements is determined by the conformance rules of these sub-elements.\r\nRecipient shall understand required elements.\r\nA derived model (that includes also implementable specifications) shall maintain an equivalent conformance strength; or may further constrain it (e.g. from ‘RK’ to ‘R’).\r\n\r\nC; Conditional (has associated condition predicates); Depending on predicate conditions the element may assume different conformance strengths (e.g. O, R, RK) or not being present.\r\nA predicate can be simple (for example: «element A exists»; «attribute b = value1») or complex (for example: «element C exists» AND «the attribute x of element D = value2).\r\nA conditional element may be evaluated on a single condition (if predicate A then ‘Required’ else ‘Optional’) or on multiple conditions (e.g. if predicate A then ‘Required’; if predicate B then ‘Optional’; else ‘Not Present’).\r\nThe resulting conformance strength (M, R, RK, O, ...) is determined by the conditions.\r\nIf it refers to a composite element (e.g. a section, a list, a label concept, a complex data type) the presence of the included elements is determined by the combination of the predicate conditions of this element and the conformance rules of its sub-elements. For example:\r\n1. no exception is raised if a required sub-element is missing, when the parent is correctly omitted.\r\n2. an exception is raised if a required sub-element is missing, when the parent is present.\r\nDerived models or implementable specifications shall maintain an equivalent conformance strength; but it is allowed to modify the conformance strength if the predicate condition permits.\r\nRecipient shall understand conditional elements, when required. For example, a conditional element that could be optional or not present could be omitted by a derived model and ignored by a recipient. Or, a condition for which a conditional element become required doesn’t apply to a jurisdiction, in that case a jurisdictional specification could omit that element and recipient could ignore it.\r\nDepending on the conditions, exception is or is not raised if the data are missing.\r\n\r\nO; Optional ; This data element can be omitted from a derived model, including from implementations.\r\nRecipient may ignore optional elements.\r\nIf it refers to a composite element (e.g. a section, a list, a label concept, a complex data type) the presence of the included elements is determined by the presence of this element and the conformance rules of its sub-elements. For example, no exception is raised if a required sub-element is missing, when the parent is omitted.\r\nThe reason for specifying the optional data elements is to ensure that both sender and recipient use the appropriate semantic interpretation of these elements.\r\nNo exception is raised if the data are missing."
* . ^alias[0] = "Conformance"
* value[x] only code
* value[x] from http://hl7.eu/fhir/ig/xpandh/ValueSet/conformance-cen-ips (required) */

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: DiagnosticReportReference
Id:   composition-DiagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: "This extension provides a reference to the DiagnosticReport instance that is associated with this document."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* value[x] only Reference (DiagnosticReport)
*/