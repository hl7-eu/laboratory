

### Design Choices

{% include fsh-link-references.md %}

#### DiagnosticReport Vs HL7 FHIR Document

There are two ways - in principle - for representing a Laboratory report in HL7 FHIR:
* by using the DiagnosticReport resource; or 
* by treating the report as any other clinical document, i.e. using a HL7 FHIR document Bundle.


In many European countries:
* A Laboratory Report is a **legally signed document**
* Reports are often structured and may include different kinds of test results
* Several implementations are currently based on HL7 CDA (mainly IHE XD-LAB) and still use document exchange infrastructures (e.g. IHE XD*).

On the other hand, typical HL7 FHIR consumers expect to get Laboratory Reports by searching per DiagnosticReport.

The team looked therefore for a solution balancing the two approaches (FHIR document and DiagnosticReport), taking into account the R5 DiagnosticReport design pattern where the DiagnosticReport Vs Composition relationship is directed from the DiagnosticReport to the Composition resource.

In brief:

* A Laboratory Report is always represented by one and only one DiagnosticReport.
* A DiagnosticReport shall always refers a Composition.
* The referred Composition:
  * defines the report structure, often just a single section;
  * provides a mean for assembling the report as a document (i.e. as a Bundle of type 'document')
* The document Bundle represents the legally signable report and it includes all the data defining the report.

The following figure graphically summarizes the described design approach.

<div>
<img src="lab-structure.png"  alt="Laboratory report design approach" width="80%">
<p>Figure 1 - Overview of the report design approach</p>
<p></p>
</div>

The authors are aware of the fact that this choice requires additional work to the creator, requesting to consistently record in both DiagnosticReport and Composition a set of information. 
However they believe, that it enables for more options for the consumer:
* preserving the existing document-based paradigm and helping the transition from CDA-based solutions by facilitating the reuse of:
  * the existing exchange infrastructures
  * the on-development mapping CDA to FHIR artifacts
* enabling for the REST paradigm


#### Pre-adoption of R5 Rules for Document Bundles

To support the described approach, this guide allows for the **pre-adoption of the R5 rules for the inclusion of the resources in a document Bundle**, that is:

_"The document bundle SHALL include only: <..>
The supporting information: Any resources that are part of the graph of resources that reference or are referenced from the composition set, either directly or indirectly (e.g. recursively in a chain)"_

in opposition to the R4 rules requiring that, with the exception of the Provenance resource and the Binary including the stylesheet, only resources directly or indirectly - referred **from** the composition can be included.

This choice is justified by the fact that:
* There was a good consensus in the HL7 FHIR community for supporting this.
* In R5 the link between the DiagnosticReport and the Composition is realized with a Reference from the DiagnosticReport. The team decided to follow the same design pattern to facilitate the R4 to R5 transition.
* Adding a reference from the Composition to the DiagnosticReport would create an undesirable circular reference.

However, this choice it is not imposed, so that usage contexts whishing to keep a full consistency with R4 rules, may used the [DiagnosticReportReference] extension to refer the DiagnosticReport from the Composition. The adoption of this extension implies the presence of a circular reference Composition to/from  DiagnosticReport.