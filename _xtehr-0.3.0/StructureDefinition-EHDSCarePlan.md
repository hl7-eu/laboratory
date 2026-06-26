# Care plan model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Care plan model**

## Logical Model: Care plan model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSCarePlan |

 
Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSCarePlan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSCarePlan.csv), [Excel](StructureDefinition-EHDSCarePlan.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSCarePlan",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan",
  "version" : "0.3.0",
  "name" : "EHDSCarePlan",
  "title" : "Care plan model",
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
  "description" : "Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSCarePlan",
        "path" : "EHDSCarePlan",
        "short" : "Care plan model",
        "definition" : "Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains."
      },
      {
        "id" : "EHDSCarePlan.header.subject",
        "path" : "EHDSCarePlan.header.subject",
        "short" : "The patient whose intended care is described in the plan.",
        "definition" : "The patient whose intended care is described in the plan."
      },
      {
        "id" : "EHDSCarePlan.header.identifier",
        "path" : "EHDSCarePlan.header.identifier",
        "short" : "Identifier for the care plan",
        "definition" : "Identifier for the care plan"
      },
      {
        "id" : "EHDSCarePlan.header.author[x]",
        "path" : "EHDSCarePlan.header.author[x]",
        "short" : "The responsible party (custodian) for the care plan.",
        "definition" : "The responsible party (custodian) for the care plan."
      },
      {
        "id" : "EHDSCarePlan.header.status",
        "path" : "EHDSCarePlan.header.status",
        "short" : "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record.",
        "definition" : "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record.",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Request status"
        }
      },
      {
        "id" : "EHDSCarePlan.title",
        "path" : "EHDSCarePlan.title",
        "short" : "Human-friendly name for the care plan",
        "definition" : "Human-friendly name for the care plan",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSCarePlan.description",
        "path" : "EHDSCarePlan.description",
        "short" : "A description of the scope and nature of the plan.",
        "definition" : "A description of the scope and nature of the plan.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSCarePlan.period",
        "path" : "EHDSCarePlan.period",
        "short" : "Indicates when the plan did (or is intended to) come into effect and end.",
        "definition" : "Indicates when the plan did (or is intended to) come into effect and end.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSCarePlan.addresses[x]",
        "path" : "EHDSCarePlan.addresses[x]",
        "short" : "Conditions/problems/concerns/diagnoses/etc whose management and/or mitigation are handled by this plan.",
        "definition" : "Conditions/problems/concerns/diagnoses/etc whose management and/or mitigation are handled by this plan.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, Orphacode"
        }
      },
      {
        "id" : "EHDSCarePlan.activity[x]",
        "path" : "EHDSCarePlan.activity[x]",
        "short" : "The details of the proposed activity represented in a specific resource.",
        "definition" : "The details of the proposed activity represented in a specific resource.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "EHDSCarePlan.goal",
        "path" : "EHDSCarePlan.goal",
        "short" : "Describes the intended objective(s) of carrying out the care plan.",
        "definition" : "Describes the intended objective(s) of carrying out the care plan.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
