# Artifacts Summary - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### EHDS Patient Summary Logical Models 

Information Models for implementing EEHRxF Patient Summary under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements. The Patient Summary is currently being defined in a [separate branch](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/branches/patient-summary/artifacts.html#ehds-patient-summary-logical-models)

| | |
| :--- | :--- |
| [Patient summary model](StructureDefinition-EHDSPatientSummary.md) | The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard. |

### EHDS ePrescription and eDispense Logical Models 

Information Models for implementing EEHRxF services for medication prescription and dispense services.

| | |
| :--- | :--- |
| [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md) | Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information. |
| [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md) | Logical model for medication prescription. A prescription contains one or more prescription items (medications). |

### EHDS Laboratory Domain Logical Models 

Information Models for implementing EEHRxF services in the laboratory domain under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."

| | |
| :--- | :--- |
| [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md) | Model for observation performed by laboratory |
| [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) | Laboratory result report model. |

### EHDS Imaging Domain Logical Models 

Information Models for implementing EEHRxF services in the imaging domain under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."

| | |
| :--- | :--- |
| [Imaging report model](StructureDefinition-EHDSImagingReport.md) | Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice. |
| [Imaging study model](StructureDefinition-EHDSImagingStudy.md) | Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images. |

### EHDS Discharge Report Domain Logical Models 

Information Models for implementing EEHRxF Discharge report under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."

| | |
| :--- | :--- |
| [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) | A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Address model](StructureDefinition-EHDSAddress.md) | EHDS refined base model for Address structure |
| [Administered dosage model](StructureDefinition-EHDSAdministeredDosage.md) | Model contains elements needed for registering an individual medication administration. It is derived from the full dosage regimen model in order to keep the consistency between the shared elements. |
| [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md) | Healthcare directives concerning life or after life wishes of the patient |
| [Alert model](StructureDefinition-EHDSAlert.md) | A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes. Example 1: intolerance to aspirin due to gastrointestinal bleeding. Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough) Example 3: the patient has a rare disease that requires special treatment Example 4: Airway Alert / Difficult Intubation Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices. Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact. Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact. |
| [Allergy intolerance model](StructureDefinition-EHDSAllergyIntolerance.md) | Model for allergy or intolerance. |
| [Attachment model](StructureDefinition-EHDSAttachment.md) | This model is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type. |
| [Body structure model](StructureDefinition-EHDSBodyStructure.md) | Model for body structure |
| [Care plan model](StructureDefinition-EHDSCarePlan.md) | Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains. |
| [Condition model](StructureDefinition-EHDSCondition.md) | Model for a clinical condition, problem, diagnosis, or other event, situation, or issue that has risen to a level of concern. |
| [Current pregnancy status model](StructureDefinition-EHDSCurrentPregnancy.md) | Current pregnancy status |
| [DataSet model](StructureDefinition-EHDSDataSet.md) | Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources. |
| [Device model](StructureDefinition-EHDSDevice.md) | Model for device information |
| [Device use model](StructureDefinition-EHDSDeviceUse.md) | Model for information about the use of a device in the care of patient. |
| [Document model](StructureDefinition-EHDSDocument.md) | Model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes. |
| [Dosage model](StructureDefinition-EHDSDosage.md) | The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element. |
| [Encounter model](StructureDefinition-EHDSEncounter.md) | The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model. |
| [Endpoint model](StructureDefinition-EHDSEndpoint.md) | Model covers technical details of an endpoint that can be used for electronic services |
| [Health professional model](StructureDefinition-EHDSHealthProfessional.md) | Model for information about a health professional. |
| [Human name model](StructureDefinition-EHDSHumanName.md) | Model for human name |
| [Immunisation model](StructureDefinition-EHDSImmunisation.md) | Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope. |
| [Location model](StructureDefinition-EHDSLocation.md) | Model for details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated. |
| [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md) | The model covers details about single medication administrations within the scope of imaging and laboratory procedures. |
| [Medication model](StructureDefinition-EHDSMedication.md) | Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries. |
| [Medication use model](StructureDefinition-EHDSMedicationUse.md) | Statement about a single medication as part of a medication summary. |
| [Observation model](StructureDefinition-EHDSObservation.md) | Model for information about an oservation and its results. |
| [Organisation model](StructureDefinition-EHDSOrganisation.md) | Model for information about an organisation |
| [Patient model](StructureDefinition-EHDSPatient.md) | Model for information about a patient (subject of care). |
| [Pregnancy history model](StructureDefinition-EHDSPregnancyHistory.md) | Pregnancy history for one pregnancy |
| [Procedure model](StructureDefinition-EHDSProcedure.md) | The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage. |
| [Related person model](StructureDefinition-EHDSRelatedPerson.md) | Model for information about a guardian or other person related to the subject of care |
| [Service request model](StructureDefinition-EHDSServiceRequest.md) | The model covers details about a requested service or services. One order may include several requests. |
| [Specimen model](StructureDefinition-EHDSSpecimen.md) | Model for a specimen to be used for analysis |
| [Telecom model](StructureDefinition-EHDSTelecom.md) | Model for communication contact information. |
| [Travel history model](StructureDefinition-EHDSTravelHistory.md) | Relevant information about the patient's recent travel history, for one visit |

