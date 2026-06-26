# Encounter model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter model**

## Logical Model: Encounter model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSEncounter |

 
The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEncounter.csv), [Excel](StructureDefinition-EHDSEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEncounter",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter",
  "version" : "0.3.0",
  "name" : "EHDSEncounter",
  "title" : "Encounter model",
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
  "description" : "The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEncounter",
        "path" : "EHDSEncounter",
        "short" : "Encounter model",
        "definition" : "The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model."
      },
      {
        "id" : "EHDSEncounter.header.author[x]",
        "path" : "EHDSEncounter.header.author[x]",
        "short" : "Author (typically a health professional) who is responsible for this encounter",
        "definition" : "Author (typically a health professional) who is responsible for this encounter"
      },
      {
        "id" : "EHDSEncounter.header.status",
        "path" : "EHDSEncounter.header.status",
        "short" : "Status of the encounter (e.g. discharged, discontinued, completed)",
        "definition" : "Status of the encounter (e.g. discharged, discontinued, completed)"
      },
      {
        "id" : "EHDSEncounter.priority",
        "path" : "EHDSEncounter.priority",
        "short" : "Indicates the urgency of the encounter (e.g. urgent, routine).",
        "definition" : "Indicates the urgency of the encounter (e.g. urgent, routine).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.type",
        "path" : "EHDSEncounter.type",
        "short" : "Type of the encounter (inpatient, ambulatory, teleconsultation).",
        "definition" : "Type of the encounter (inpatient, ambulatory, teleconsultation).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.period",
        "path" : "EHDSEncounter.period",
        "short" : "The actual start and end time of the encounter.",
        "definition" : "The actual start and end time of the encounter.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.serviceProvider",
        "path" : "EHDSEncounter.serviceProvider",
        "short" : "The organisation (facility) responsible for this encounter",
        "definition" : "The organisation (facility) responsible for this encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.referringProfessional",
        "path" : "EHDSEncounter.referringProfessional",
        "short" : "Referring healthcare professional",
        "definition" : "Referring healthcare professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.basedOn[x]",
        "path" : "EHDSEncounter.basedOn[x]",
        "short" : "Reference to the request that initiated this encounter",
        "definition" : "Reference to the request that initiated this encounter",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.reason[x]",
        "path" : "EHDSEncounter.reason[x]",
        "short" : "Reason(s) for admission, e.g. problem, procedure or finding.",
        "definition" : "Reason(s) for admission, e.g. problem, procedure or finding.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission",
        "path" : "EHDSEncounter.admission",
        "short" : "Details about the admission to a healthcare service",
        "definition" : "Details about the admission to a healthcare service",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.admitter",
        "path" : "EHDSEncounter.admission.admitter",
        "short" : "Admitting healthcare professional",
        "definition" : "Admitting healthcare professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.admitSource",
        "path" : "EHDSEncounter.admission.admitSource",
        "short" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "definition" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Admit Source"
        }
      },
      {
        "id" : "EHDSEncounter.dischargeDiagnosis[x]",
        "path" : "EHDSEncounter.dischargeDiagnosis[x]",
        "short" : "The diagnoses at the time of discharge.",
        "definition" : "The diagnoses at the time of discharge.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.dischargeDestination",
        "path" : "EHDSEncounter.dischargeDestination",
        "short" : "Location or organisation to which the patient is going after discharge.",
        "definition" : "Location or organisation to which the patient is going after discharge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.dischargeDestination.type",
        "path" : "EHDSEncounter.dischargeDestination.type",
        "short" : "Type of location (e.g. home, hospital, nursing home, etc.)",
        "definition" : "Type of location (e.g. home, hospital, nursing home, etc.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.dischargeDestination.location[x]",
        "path" : "EHDSEncounter.dischargeDestination.location[x]",
        "short" : "The location or organisation (including contact details)",
        "definition" : "The location or organisation (including contact details)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.serviceLocation",
        "path" : "EHDSEncounter.serviceLocation",
        "short" : "List of locations where the patient was present during this encounter.",
        "definition" : "List of locations where the patient was present during this encounter.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.serviceLocation.period",
        "path" : "EHDSEncounter.serviceLocation.period",
        "short" : "Time period during which the patient was present at the location",
        "definition" : "Time period during which the patient was present at the location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.serviceLocation.organisationPart[x]",
        "path" : "EHDSEncounter.serviceLocation.organisationPart[x]",
        "short" : "Organisation or part of an organisation (e.g. department) where the patient was present during the encounter.",
        "definition" : "Organisation or part of an organisation (e.g. department) where the patient was present during the encounter.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.subEncounter",
        "path" : "EHDSEncounter.subEncounter",
        "short" : "Reference to encounters that are considered parts of this encounter.",
        "definition" : "Reference to encounters that are considered parts of this encounter.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.note",
        "path" : "EHDSEncounter.note",
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
