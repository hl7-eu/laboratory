

### Design Choices

#### Laboratory Report as HL7 FHIR Document

There are two ways that could be considered for representing a Laboratory report in HL7 FHIR:
* by using the DiagnosticReport resource; or 
* by treating the report as any other clinical document, i.e. using a HL7 FHIR document Bundle.


Considering that in many European countries:
* A Laboratory Report is a **legally signed document**
* Reports are often structured and may include different kinds of test results
* Several implementations are currently based on HL7 CDA (mainly IHE XD-LAB) and still use document exchange infrastructures (e.g. IHE XD*).

The team agreed to adopt the **document representation for the Laboratory Report**.
This in fact:
* preserves the existingdocument-based paradigm, enabling for the REST one
* helps with the transition from the CDA-based solutions, by facilitating the reuse of the existing exchange infrastructures and of the on-development mapping artifacts used for the CDA to FHIR transformation


#### Support for DiagnosticReport

The team however recognized that typical HL7 FHIR consumers may expect to get Laboratory Reports by searching per DiagnosticReport.

The team looked therefore for a solution balancing the two approaches (FHIR document and DiagnosticReport); taking into account the R5 DiagnosticReport design pattern where the DiagnosticReport Vs Composition relationship is directed from the DiagnosticReport to the Composition resource.

The team agreed then that the Document Bundle representing the Laboratory Report shall always also include a DiagnosticReport resource.

This choice requires additional work to the creator, requesting to have some information consistently recorded in both DiagnosticReport and Composition, but it enables for more options for the consumer.

The following figure graphically summarizes the described design approach


<div>
<img src="lab-structure.png"  alt="Laboratory report Structure" width="60%">
<p>Figure 1 - Overview of the report structure</p>
<p></p>
</div>

#### Pre-adoption of R5 Rules for Document Bundles

To support the described approach, this guide **pre-adopts the R5 rules for the inclusion of the resources in a document Bundle**:

_"The document bundle SHALL include only: <..>
The supporting information: Any resources that are part of the graph of resources that reference or are referenced from the composition set, either directly or indirectly (e.g. recursively in a chain)"_

in opposition to the R4 rules requiring that, with the exception of the Provenance resource and the Binary including the stylesheet, only resources directly or indirectly - referred **from** the composition can be included.

This choice has been made considering that:
* There was a good consensus in the HL7 FHIR community and in this team that the new rules are the most appropriate for a document bundle.
* In R5 the link between the DiagnosticReport and the Composition is realized with a Reference from the DiagnosticReport. The team decided to follow the same design pattern to facilitate the R4 to R5 transition.
* Adding a reference from the Composition to the DiagnosticReport would create an undesirable circular reference.





