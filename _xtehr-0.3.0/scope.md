# Scope and Content - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* **Scope and Content**

## Scope and Content

### Scope

The Xt-EHR Logical Information Models guide includes computable data models developed for implementing EHDS priority categories:

* ePrescription and eDispensation
* Patient Summary
* Medical Images and Reports
* Medical Test Results and Reports
* Discharge Reports

All models are developed from eHealth Network guidelines and X-eHealth project and refined to be machine-processable and consistent with eachother.

### Content

The focus of the guides is logical models in different representations (see [How to read this guide](howto.md)). While the implementation guide uses HL7 FHIR tooling for publishing, the models themselves are technology-agnostic and they are not tied to HL7 FHIR resources. These models can be used for designing services or self-assessing the conformity to future EHDS requirements and recommendations. The models represent the requirements for interoperability software component and therefore designed for data exchange. They are not covering all details and relationships needed for information system's data base design, logging and provenance requirements, or internal workflows.

In addition to models, links to related HL7 FHIR specifications are provided. Referenced HL7 Europe FHIR implementation guides are based on Xt-EHR logical models, and the mapping to logical model elements is provided in the FHIR implementation guides.

### Target audience

The models are designed for a wider audience than HL7 FHIR implementation guides. Within this guide, multiple presentations (including simplified mindmap-like diagrams) are provided to target different readers and their needs.

The logical information models are useful for:

* Clinicians who are assessing the content or helping EHR vendors to design new services;
* Analysts to understand the requirements and possibilities of implementing EHDS use cases;
* Software designers to design new services and assess the conformance of the existing services;
* Developers for creating or following mappings between different formats.

