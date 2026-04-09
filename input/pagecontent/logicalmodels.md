
### EHDS Logical Data Models

Logical data models (or information models) for the **European Health Data Space (EHDS)** are **currently being developed** by the [**Xt-EHR Joint Action**](https://www.xt-ehr.eu/). These models will form the **basis of the Joint Action proposal** for the future EHDS Implementing Act.

They represent **evolving, refined interpretations** of the data sets described in the [**eHealth Network (eHN) Guidelines**](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines), and are expected to be further updated during the Joint Action process.

This Implementation Guide (IG) aims to **align with the emerging EHDS logical models** and to **provide HL7 FHIR profiles** that **realise the requirements identified in these models**.


Below is a simplified representation of a laboratory report. The data set comprises several basic parts, as visualised in the diagrams below.

{% include img.html img="LabReportModel-1.png" caption="Figure 1: Laboratory dataset model" width="70%" %}
{% include img.html img="ObservationModel.png" caption="Figure 2: Laboratory observation dataset model" width="70%" %}


### EHDS Logical Data Models

The EHDS logical models currently supported in this version of the guide are listed below.
For the most recent and in-progress versions, please refer to the [**Xt-EHR EHDS Logical Information Models**](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common) Implementation Guide.


<div class="model-map-block">
      <div class="callout-wrapper">
      <div class="callout-box">
        <strong>Ongoing alignment:</strong>
            The models are expected to continue evolving, with updates incorporated into this Implementation Guide to maintain alignment with the EHDS Implementing Acts.
      </div>
      </div>
</div>

---

### Xt-EHR Logical Models

#### Laboratory Report Model

| **Model** | **Description** |
| --- | --- |
| [EHDSLaboratoryReport](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSLaboratoryReport.html) | EHDS logical model for laboratory result reports |
| [EHDSLaboratoryObservation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSLaboratoryObservation.html) | EHDS refined base model for observations performed by the laboratory |

---

#### Common Models used by the Laboratory Report Model

| **Model** | **Description** |
| --- | --- |
| [EHDSPatient](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPatient.html) | EHDS refined base model for Patient (subject of care) |
| [EHDSRelatedPerson](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSRelatedPerson.html) | EHDS refined base model for a person related to the patient |
| [EHDSHealthProfessional](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSHealthProfessional.html) | EHDS refined base model for Health Professional |
| [EHDSOrganisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSOrganisation.html) | EHDS refined base model for healthcare organisations and providers |
| [EHDSAttachment](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAttachment.html) | EHDS refined base model for containing or referencing attachments. |
| [EHDSDevice](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSDevice.html) | EHDS refined base model for Device information |
| [EHDSCondition](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSCondition.html) | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern |
| [EHDSMedicationAdministration](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedicationAdministration.html) | EHDS refined base model for medication administered to the patient |
| [EHDSImmunisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSImmunisation.html) | EHDS refined base model for immunisation |
| [EHDSObservation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSObservation.html) | EHDS refined base model for medical test results and other clinical observations |
| [EHDSSpecimen](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSSpecimen.html) | EHDS refined base model for specimen information |
| [EHDSServiceRequest](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSServiceRequest.html) | EHDS refined base model for requested laboratory services |

---



