
<blockquote class="stu-note">
<p>
    Page under construction !
</p>
</blockquote>


### Design Choices

#### Laboratory Report as HL7 FHIR document

HL7 FHIR provides two means to represent a Laboratory or other diagnostic reports:
* by using the DiagnosticReport resource
* by using the FHIR document Bundle, treating the report as any other clincal document.


Considering that in many European countries:
* A Laboratory Report is a **legally signed document**
* Report are often strectured and include different kind of test results
* Several implemention are currently based on CDA document representation; it is therefore preferrable to harmonizing the CDA to FHIR document mapping and the reusage of the existing document sharing infrastructes indipendently on the type of document

The team agreed to adopts a **document represention for the Laboratory Report**.


#### Support for DiagnoticReport

The team however also recognized that typycal HL7 FHIR consumers may expect to get Laboratory Report data by using the DiagnosticReport.

To keep consistency with this double approach (document Vs DiagnosticReport), and with the R5 DiagnosticReport design pattern where is the  DiagnosticReport that refers a Composition and not the opposite, the team agreed to require that the Document Bundle representing the Laboratory Report shall always include a DiagnosticReport resource.

This choice requires additional work to the creator, requesting to have some informaiton consitently reocorded in both DiagnosticReport and Composition, but it enables for more options for the consumer.


#### Pre-adoption of R5 rules for Document bundle

This guides **pre-adopt the R5 rules for the inclusion of the resources in a document Bundle**:

_"The document bundle SHALL include only: <..>
The supporting information: Any resources that are part of the graph of resources that reference or are referenced from the composition set, either directly or indirectly (e.g. recursively in a chain)"_

in opposition to the R4 rules requiring that, with the exception of the Provenance resource and the Biunary including the stylesheet, only resources directly or indirectly - referred **from** the composition can be included.

This choice has been made considering that:
* There were a good consensus in the HL7 FHIR community and in this team that the new are the most appropriate rules for a document bundle.
* In R5 the link between the DiagnosticReport and the Composition is realized with a Reference from the DiagnosticReport. The team decided to follow the same design pattern to faciliate the R4 to R5 transiction.
* Adding a reference from the Composition to the DiagnosticReport would create a unwished circular reference


#### Overview

The following figure graphically summarizes the described design approach


<div>
<img src="lab-structure.png"  alt="Laboratory report Structure" width="60%">
<p></p>
</div>


