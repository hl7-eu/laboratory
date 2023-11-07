
RuleSet: ExtensionContext(path)
// copied by mCode
* ^context[+].type = #element
* ^context[=].expression = "{path}"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
/* * ^context[+].type = #element
* ^context[=].expression = "Composition" */
* insert ExtensionContext(Composition)
* ^url = "http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition"
* value[x] only Reference (ServiceRequest) or Identifier

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Commented based on the suggestion form the 2023-05-26 meeting see https://github.com/hl7-eu/laboratory/issues/11 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: DiagnosticReportBasedOnRequisition
Id:   diagnostic-report-basedOn-requisition
Title:  "DiagnosticReport Based On Requesition"
Description: "This extension provides a link to the requisition (ServiceRequest.requisition [i.e., 'groupIdentifier']) that this DiagnosticReport is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
// DiagnosticReport already includes 'basedOn' with Reference(ServiceRequest)
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport.basedOn"
* value[x] only Identifier */

Extension: InformationRecipient
Id:   information-recipient
Title: "Information recipient"
Description: "This extension applies to the Composition resource and is used to represent an intended recipient of the composition."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
/* * ^context[+].type = #element
* ^context[=].expression = "Composition" */
* insert ExtensionContext(Composition)
* ^url = "http://hl7.eu/fhir/StructureDefinition/information-recipient"
* value[x] only Reference (Practitioner or Device or Patient or RelatedPerson or PractitionerRole or Organization)	


// ------------------------------------

Extension: BodyLocationQualifier
Id: body-location-qualifier
Title: "Body Location Qualifier"
Description: """Qualifier to refine an body location. These include qualifiers for relative location, directionality, number, and plane, and exclude qualifiers for laterality.
Inspired to the mCode extension."""

* insert ExtensionContext(Specimen.collection.bodySite)
* insert ExtensionContext(Procedure.bodySite)
* insert ExtensionContext(Condition.bodySite)
* insert ExtensionContext(Observation.bodySite)
* ^url = "http://hl7.eu/fhir/StructureDefinition/body-location-qualifier"
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (example)
* value[x] 1..1

// ------------------------------------
Extension: LateralityQualifier
Id: laterality-qualifier
Title: "Laterality Qualifier"
Description: """Qualifier to specify laterality.
Inspired to the mCode extension."""

* insert ExtensionContext(Specimen.collection.bodySite)
* insert ExtensionContext(Procedure.bodySite)
* insert ExtensionContext(Condition.bodySite)
* insert ExtensionContext(Observation.bodySite)
* ^url = "http://hl7.eu/fhir/StructureDefinition/laterality-qualifier"
* value[x] only CodeableConcept
* value[x] from LateralityQualifierVS (example)
* value[x] 1..1