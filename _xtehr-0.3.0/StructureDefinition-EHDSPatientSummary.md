# Patient summary model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient summary model**

## Logical Model: Patient summary model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientSummary | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSPatientSummary |

 
The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard. 

Patient summary consists of several sections of which some are suggested to be mandatory to support. For each mandatory section, implementers should as a minimum be able to produce a generated narrative text of the content, as well as certain structured elements. There are only few elements that are suggested as required to support at this point.

While the overall use cases for exchanging a full Patient Summary (PS) remain consistent—typically aiming to support patients access to its own data, transfer of data between systems and cross-border care (both emergency access, and continuity of care)—it is acknowledged that, in practice, implementers will need to support multiple variants of these use cases, depending on the context. In some cases, only a subset of the PS (e.g. just medications, allergies, or vaccinations) will be relevant or exchanged. As such, each section of the Patient Summary is described and handled independently, with clear guidance on both the narrative and structured data elements expected for that section.

The information elements and value sets suggested are mainly taken from eHN Guideline, MyHealth@EU and HL7 FHIR IPS. Some additions or adjustments have been made, based on input from the working group of this deliverable. These are described in each section.

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPatientSummary)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPatientSummary.csv), [Excel](StructureDefinition-EHDSPatientSummary.xlsx) 

### Notes:

#### Differences and relationship to eHN Guidelines

The main proposed changes of the proposed EEHRxF logical model, compared with the eHN Guideline are:

* The structure has been flattened to facilitate implementation of only parts of the Patient summary and better support a data centric approach. The result is that all sections are at the same level, not having the grouper-sections "Alerts", "Medical problems", "Medical history", and "Patient provided data" that the eHN GL does.
* All content sections are kept the same as in the Guideline. However, we do suggest that the two problem sections are combined into one. This is to better support different use cases and current available data. See under the section "Problems" for more information.
* In line with the International Patient Summary and MyHealth@EU specifications, there is an empty list reason elements for all sections that are suggested to be mandatory
* Each section has a Generated narrative text element. This is in line with the FHIR International Patient Summary implementation guide, and supports the right for natural persons to get the content in an easily readable format (Article 3 in the EHDS regulation).
* Instead of top level preferred code systems, which in many cases are not meant to be implemented in full, we have added value sets that are in use in the MyHealth@EU and HL7 Europe specifications as examples. We also include some value sets based on suggestions from participating Member states.
* The logical models have cardinality, and repeatable elements are split into their own models, which is often reused between different priority categories (e.g. problems, procedures). The individual information elements in these reusable models are based on the eHN Guideline, unless otherwise stated.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPatientSummary",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientSummary",
  "version" : "0.3.0",
  "name" : "EHDSPatientSummary",
  "title" : "Patient summary model",
  "status" : "draft",
  "date" : "2026-02-06T19:33:31+01:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.xt-ehr.eu/"
        }
      ]
    }
  ],
  "description" : "The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientSummary",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDocument",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPatientSummary",
        "path" : "EHDSPatientSummary",
        "short" : "Patient summary model",
        "definition" : "The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard."
      },
      {
        "id" : "EHDSPatientSummary.header.period",
        "path" : "EHDSPatientSummary.header.period",
        "short" : "Time period of information covered in the document",
        "definition" : "Time period of information covered in the document"
      },
      {
        "id" : "EHDSPatientSummary.alerts",
        "path" : "EHDSPatientSummary.alerts",
        "short" : "Section: Alerts",
        "definition" : "Substantial alerts or warnings that health professionals should be aware of.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.alerts.generatedNarrative",
        "path" : "EHDSPatientSummary.alerts.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.alerts.emptyReason",
        "path" : "EHDSPatientSummary.alerts.emptyReason",
        "short" : "Reason for absence of data",
        "definition" : "Reason for absence of data",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.alerts.medicalAlert",
        "path" : "EHDSPatientSummary.alerts.medicalAlert",
        "short" : "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat.",
        "definition" : "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat.",
        "requirements" : "ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.alerts.note",
        "path" : "EHDSPatientSummary.alerts.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.allergiesAndIntolerances",
        "path" : "EHDSPatientSummary.allergiesAndIntolerances",
        "short" : "Section: Allergies and intolerances",
        "definition" : "Section: Allergies and intolerances",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.allergiesAndIntolerances.generatedNarrative",
        "path" : "EHDSPatientSummary.allergiesAndIntolerances.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.allergiesAndIntolerances.allergyIntolerance",
        "path" : "EHDSPatientSummary.allergiesAndIntolerances.allergyIntolerance",
        "short" : "List of structured allergies and intolerances",
        "definition" : "List of structured allergies and intolerances",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.allergiesAndIntolerances.emptyReason",
        "path" : "EHDSPatientSummary.allergiesAndIntolerances.emptyReason",
        "short" : "Use if no Allergies are listed",
        "definition" : "Reason for absence of data (indicates whether the person is known to have no allergies or the data is considered incomplete)",
        "requirements" : "This element is present in MyHealth@EU specifications and ISO IPS. The proposed way of modelling is identical to the newest version of FHIR IPS IG. See general description of Patient summary modelling for more information about this element. MH@EU has a similar concept, but it is modelled in slightly different way.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.47eHDSIAbsentOrUnknownAllergy; http://hl7.org/fhir/ValueSet/list-empty-reason"
        }
      },
      {
        "id" : "EHDSPatientSummary.allergiesAndIntolerances.note",
        "path" : "EHDSPatientSummary.allergiesAndIntolerances.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.problems",
        "path" : "EHDSPatientSummary.problems",
        "short" : "Section: Medical problems",
        "definition" : "Conditions and symptoms affecting the health of the patient.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.problems.generatedNarrative",
        "path" : "EHDSPatientSummary.problems.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.problems.emptyReason",
        "path" : "EHDSPatientSummary.problems.emptyReason",
        "short" : "Use if no conditions are listed",
        "definition" : "Use if no conditions are listed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.problems.problem",
        "path" : "EHDSPatientSummary.problems.problem",
        "short" : "Health conditions affecting the health of the patient.",
        "definition" : "Health conditions affecting the health of the patient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.problems.note",
        "path" : "EHDSPatientSummary.problems.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicationSummary",
        "path" : "EHDSPatientSummary.medicationSummary",
        "short" : "Section: Medication summary",
        "definition" : "Current and relevant past medicines.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicationSummary.generatedNarrative",
        "path" : "EHDSPatientSummary.medicationSummary.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicationSummary.emptyReason",
        "path" : "EHDSPatientSummary.medicationSummary.emptyReason",
        "short" : "Use if no medicines are listed",
        "definition" : "Use if no medicines are listed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicationSummary.medicationUse",
        "path" : "EHDSPatientSummary.medicationSummary.medicationUse",
        "short" : "Medication treatment/prescription relevant for this patient summary. Typically, medications whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not.",
        "definition" : "Medication treatment/prescription relevant for this patient summary. Typically, medications whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicationSummary.note",
        "path" : "EHDSPatientSummary.medicationSummary.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicalDevicesAndImplants",
        "path" : "EHDSPatientSummary.medicalDevicesAndImplants",
        "short" : "Section: Medical devices and implants",
        "definition" : "The devices that are implanted in the patient and external medical devices and equipment that the health\r\nstatus depends on.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicalDevicesAndImplants.generatedNarrative",
        "path" : "EHDSPatientSummary.medicalDevicesAndImplants.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicalDevicesAndImplants.emptyReason",
        "path" : "EHDSPatientSummary.medicalDevicesAndImplants.emptyReason",
        "short" : "Reason for absence of data",
        "definition" : "Reason for absence of data",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicalDevicesAndImplants.deviceUse",
        "path" : "EHDSPatientSummary.medicalDevicesAndImplants.deviceUse",
        "short" : "Describes the patient's implanted and external medical devices and equipment that their health status depends on. Includes devices (such as cardiac pacemakers, implantable defibrillator, prothesis, ferromagnetic bone implants etc.) that are important to know by the HP.",
        "definition" : "Describes the patient's implanted and external medical devices and equipment that their health status depends on. Includes devices (such as cardiac pacemakers, implantable defibrillator, prothesis, ferromagnetic bone implants etc.) that are important to know by the HP.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.medicalDevicesAndImplants.note",
        "path" : "EHDSPatientSummary.medicalDevicesAndImplants.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.procedures",
        "path" : "EHDSPatientSummary.procedures",
        "short" : "Section: Procedures",
        "definition" : "Significant procedures performed on the patient.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.procedures.generatedNarrative",
        "path" : "EHDSPatientSummary.procedures.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.procedures.emptyReason",
        "path" : "EHDSPatientSummary.procedures.emptyReason",
        "short" : "Reason for absence of data",
        "definition" : "Reason for absence of data",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.procedures.procedure",
        "path" : "EHDSPatientSummary.procedures.procedure",
        "short" : "List of procedures",
        "definition" : "List of procedures",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.procedures.note",
        "path" : "EHDSPatientSummary.procedures.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.immunisations",
        "path" : "EHDSPatientSummary.immunisations",
        "short" : "Section: Immunisations",
        "definition" : "A patient's immunisation status (vaccination and other prophylaxis). The section should include current immunisation status and may contain the entire history that is relevant to the period of time being summarised. Adverse reactions against vaccines should be documented in the allergy section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.immunisations.generatedNarrative",
        "path" : "EHDSPatientSummary.immunisations.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.immunisations.immunisation",
        "path" : "EHDSPatientSummary.immunisations.immunisation",
        "short" : "Immunisations given to the patient and their status at the point of care.",
        "definition" : "Immunisations given to the patient and their status at the point of care.",
        "requirements" : "eHN PS Guideline",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.immunisations.note",
        "path" : "EHDSPatientSummary.immunisations.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.functionalStatus",
        "path" : "EHDSPatientSummary.functionalStatus",
        "short" : "Section: Functional status",
        "definition" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.functionalStatus.generatedNarrative",
        "path" : "EHDSPatientSummary.functionalStatus.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.functionalStatus.condition",
        "path" : "EHDSPatientSummary.functionalStatus.condition",
        "short" : "Condition information describing patient's functional status or disability.",
        "definition" : "Condition information describing patient's functional status or disability.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.functionalStatus.assessment",
        "path" : "EHDSPatientSummary.functionalStatus.assessment",
        "short" : "Assessment results regarding functional status.",
        "definition" : "Assessment results regarding functional status.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.functionalStatus.note",
        "path" : "EHDSPatientSummary.functionalStatus.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.socialHistory",
        "path" : "EHDSPatientSummary.socialHistory",
        "short" : "Section: Social history",
        "definition" : "Observations on social factors such as alcohol consumption or smoking. From the healthcare perspective, life-style factors relate to well-being but can also provide a source of risk factors.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.socialHistory.generatedNarrative",
        "path" : "EHDSPatientSummary.socialHistory.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.socialHistory.observation",
        "path" : "EHDSPatientSummary.socialHistory.observation",
        "short" : "Social history observations related to health",
        "definition" : "Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.socialHistory.note",
        "path" : "EHDSPatientSummary.socialHistory.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.pregnancyHistory",
        "path" : "EHDSPatientSummary.pregnancyHistory",
        "short" : "Section: Pregnancy history",
        "definition" : "To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. ",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.pregnancyHistory.generatedNarrative",
        "path" : "EHDSPatientSummary.pregnancyHistory.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.pregnancyHistory.currentPregnancyStatus",
        "path" : "EHDSPatientSummary.pregnancyHistory.currentPregnancyStatus",
        "short" : "Current pregnancy status",
        "definition" : "Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.pregnancyHistory.previousPregnancies",
        "path" : "EHDSPatientSummary.pregnancyHistory.previousPregnancies",
        "short" : "History of previous pregnancies",
        "definition" : "Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.pregnancyHistory.note",
        "path" : "EHDSPatientSummary.pregnancyHistory.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.travelHistory",
        "path" : "EHDSPatientSummary.travelHistory",
        "short" : "Section: Travel history",
        "definition" : "Captures relevant information about the patient's recent travel history that may be of clinical relevance — particularly in relation to exposure to infectious diseases, epidemiological risks, or environmental factors. The intent is to support clinical decision-making and risk assessment, especially in contexts such as outbreaks or endemic disease regions.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.travelHistory.generatedNarrative",
        "path" : "EHDSPatientSummary.travelHistory.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.travelHistory.travelHistory",
        "path" : "EHDSPatientSummary.travelHistory.travelHistory",
        "short" : "Travel history for one country",
        "definition" : "Travel history for one country",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTravelHistory"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.travelHistory.note",
        "path" : "EHDSPatientSummary.travelHistory.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.patientStory",
        "path" : "EHDSPatientSummary.patientStory",
        "short" : "Section: Patient story",
        "definition" : "A concise narrative from the patient’s perspective about their present health state. This is a record of things that a person feels are important to communicate about their needs, strengths, values, concerns and preferences to others providing support and care.",
        "requirements" : "ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.patientStory.note",
        "path" : "EHDSPatientSummary.patientStory.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.advanceDirectives",
        "path" : "EHDSPatientSummary.advanceDirectives",
        "short" : "Section: Advance Directives",
        "definition" : "Provision for healthcare decisions if, in the future, a person is unable to make those decisions.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.advanceDirectives.generatedNarrative",
        "path" : "EHDSPatientSummary.advanceDirectives.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.advanceDirectives.advanceDirective",
        "path" : "EHDSPatientSummary.advanceDirectives.advanceDirective",
        "short" : "Provision for healthcare decisions if, in the future, a person is unable to make those decisions",
        "definition" : "Provision for healthcare decisions if, in the future, a person is unable to make those decisions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.advanceDirectives.note",
        "path" : "EHDSPatientSummary.advanceDirectives.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.observationResults",
        "path" : "EHDSPatientSummary.observationResults",
        "short" : "Section: Observation results",
        "definition" : "Relevant observation results obtained on the patient. These may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.observationResults.generatedNarrative",
        "path" : "EHDSPatientSummary.observationResults.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.observationResults.result",
        "path" : "EHDSPatientSummary.observationResults.result",
        "short" : "Observation results pertaining to the subject of care's health condition and which might have impact on future treatments",
        "definition" : "Observation results pertaining to the subject of care's health condition and which might have impact on future treatments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.observationResults.note",
        "path" : "EHDSPatientSummary.observationResults.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.carePlans",
        "path" : "EHDSPatientSummary.carePlans",
        "short" : "Section: Care plans",
        "definition" : "Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.carePlans.generatedNarrative",
        "path" : "EHDSPatientSummary.carePlans.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.carePlans.carePlan",
        "path" : "EHDSPatientSummary.carePlans.carePlan",
        "short" : "Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a period of time, possibly limited to care for a specific condition or set of conditions.",
        "definition" : "Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a period of time, possibly limited to care for a specific condition or set of conditions.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan"
          }
        ]
      },
      {
        "id" : "EHDSPatientSummary.carePlans.note",
        "path" : "EHDSPatientSummary.carePlans.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
