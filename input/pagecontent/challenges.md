This page aims to summarize some of the challenges to be faced dealing with Laboratory Report in the European context, without pretending to be exhaustive.

### Terminology

As in other care areas, the adoption of different terminologies is one of the main interoperability challenges to be faced, with the known limitations on relying on terminology mappings.

For **test coding** there are in fact two main international laboratory terminology systems that are being used in Europe: 
* Logical Observation Identifiers Names and Codes (LOINC), and
* Nomenclature for Properties and Units (NPU).

with the exception of UK using SNOMED CT.

The same issue arises with other coded elements as specimen types, anatomic specification, specimen collection, processing and examination techniques, devices, containers, measurement units, and ordinal or nominal-scale test results.

Regularly, test qualitative results are expressed via SNOMED CT concepts, quantitatively measured results are documented by standardized units, which are expressed preferably via UCUM to allow computer processing.  As SNOMED CT is the most extensive terminology in health care, this code system offers solutions for the coded representation of laboratory-related facts in most cases.

### Communicate changes done by the Order Filler to a ServiceRequest and late arriving supporting Information

The [HL7 Clinical Order Workflow (COW) IG](https://build.fhir.org/ig/HL7/fhir-cow-ig/en/) specifies that the primary request resource (e.g., Placer `ServiceRequest`) is owned exclusively by the Order Placer, meaning the Order Filler or intermediate actors (such as independent specimen collection/draw centers) are not permitted to mutate it. In standard laboratory workflows, a `ServiceRequest` is created by the Placer and dispatched to the Order Filler using a `Task`.

In practice, supplementary clinical information—such as Ask at Order Entry (AOE) responses, clinical observations, or metadata captured at draw time—often becomes available after the initial `ServiceRequest` and `Task` have already been created and transmitted (e.g., via a Filler-initiated request for additional information). Since this information is important to understand the different Laboratory Observations and the complete Laboratory Report, the recommended way to do this is to create a derived Filler-Order (`ServiceRequest.intent=filler-order` and `ServiceRequest.based` points to the original Placer created `ServiceRequest`) which contains all changes done by the Order Filler to the original `ServiceRequest` like additional `.supportingInfo`, Replacement of Tests or others). 

For the Recipient of a `LaboratoryReport` it is highly recommended to verify if there exists a Filler Order (`ServiceRequest.intent=filler-order`) and to assume that the Filler Order contains the data used to create the `LaboratoryReport`.
