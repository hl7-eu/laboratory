# ePrescription - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* **ePrescription**

## ePrescription

### Information Models

#### Conceptual view

Components of a prescription and its representation as EHDS information models:

* Prescription: [EHDSMedicationPrescription](StructureDefinition-EHDSMedicationPrescription.md)
* Patient: [EHDSPatient](StructureDefinition-EHDSPatient.md)
* Prescriber: [EHDSHealthProfessional](StructureDefinition-EHDSHealthProfessional.md)
* Medication: [EHDSMedication](StructureDefinition-EHDSMedication.md)
* Usage instructions: [EHDSDosage](StructureDefinition-EHDSDosage.md)

### FHIR Implementation Guide

FHIR Implementation Guide is being developed in a cross-project working group lead by HL7 Europe and IHE (see [working group information](https://confluence.hl7.org/spaces/HEU/pages/358255737/Implementation+Guides)). Business and data requirements defined in Xt-EHR Task 6.2 are discussed further in the working group in order to gather feedback from the implementers. Approved requirements are adopted by HL7 Europe MPD FHIR IG.

### IHE Profile

FHIR-based IHE profile for this use case is in draft status, please see the [IHE Medication Prescription and Dispense profile](https://ihe.github.io/pharm-mpd/) for more information.

IHE Profile has a global scope and is not part of Xt-EHR deliverable. However, the HL7 Europe / IHE joint working group (see above) allows mutually beneficial cooperation and early alignment.

### Supporting Information

* [eHealth Network Guideline on ePrescription and eDispensation of Authorised Medicinal Products](https://health.ec.europa.eu/document/download/b744f30b-a05e-4b9c-9630-ad96ebd0b2f0_en?filename=ehn_guidelines_eprescriptions_en.pdf)
* [IHE Medication Prescription and Dispense profile](https://ihe.github.io/pharm-mpd/) (draft)
* ISO/DIS 17523 "Health informatics - Requirements for electronic prescriptions"
* MyHealth@EU [requirements catalogue](https://webgate.ec.europa.eu/fpfis/wikis/display/EHDSI/1.+MyHealth@EU+Requirements+Catalogue) and [CDA specification](https://art-decor.ehdsi.eu/publication/)
* [SNOMED CT Medicinal Product Model Specification](https://confluence.ihtsdotools.org/display/DOCMPM)
* [EDQM Standard Terms](https://standardterms.edqm.eu/)
* [European Medicines Agency ISO IDMP implementation guidance](https://www.ema.europa.eu/en/human-regulatory-overview/research-development/data-medicines-iso-idmp-standards-overview/substance-product-organisation-referential-spor-master-data/substance-product-data-management-services), including [FHIR IG](https://www.ema.europa.eu/en/documents/regulatory-procedural-guideline/product-management-services-pms-implementation-international-organisation-standardization-iso-standards-identification-medicinal-products-idmp-europe-chapter-2_en.pdf)
* [EMA SPOR](https://spor.ema.europa.eu/sporwi/)
* UNICOM project: [web page](https://unicom-project.eu/), [FHIR IG](https://hl7-eu.github.io/unicom-ig), [public deliverables](https://unicom-project.eu/public-deliverables/)
* [Links to national medicines registers](https://www.ema.europa.eu/en/medicines/national-registers-authorised-medicines)

