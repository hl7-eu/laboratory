# Alert model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alert model**

## Logical Model: Alert model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSAlert |

 
A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes. Example 1: intolerance to aspirin due to gastrointestinal bleeding. Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough) Example 3: the patient has a rare disease that requires special treatment Example 4: Airway Alert / Difficult Intubation Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices. Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact. Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAlert)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAlert.csv), [Excel](StructureDefinition-EHDSAlert.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAlert",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert",
  "version" : "0.3.0",
  "name" : "EHDSAlert",
  "title" : "Alert model",
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
  "description" : "A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes.\nExample 1: intolerance to aspirin due to gastrointestinal bleeding.\nExample 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)\nExample 3: the patient has a rare disease that requires special treatment\nExample 4: Airway Alert / Difficult Intubation\nExample 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.\nExample 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.\nExample 7: participation in a clinical trial that has to be taken into account in a healthcare contact.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAlert",
        "path" : "EHDSAlert",
        "short" : "Alert model",
        "definition" : "A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes.\nExample 1: intolerance to aspirin due to gastrointestinal bleeding.\nExample 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)\nExample 3: the patient has a rare disease that requires special treatment\nExample 4: Airway Alert / Difficult Intubation\nExample 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.\nExample 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.\nExample 7: participation in a clinical trial that has to be taken into account in a healthcare contact."
      },
      {
        "id" : "EHDSAlert.header.author[x]",
        "path" : "EHDSAlert.header.author[x]",
        "short" : "The author of the alert statement, i.e. the setter of the alert.",
        "definition" : "The author of the alert statement, i.e. the setter of the alert."
      },
      {
        "id" : "EHDSAlert.header.status",
        "path" : "EHDSAlert.header.status",
        "short" : "Current status of the alert, indicates whether this alert is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.",
        "definition" : "Current status of the alert, indicates whether this alert is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.",
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:Flag-status"
        }
      },
      {
        "id" : "EHDSAlert.code",
        "path" : "EHDSAlert.code",
        "short" : "A coded representation of the alert.",
        "definition" : "A coded representation of the alert.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSAlert.description",
        "path" : "EHDSAlert.description",
        "short" : "Narrative representation of the alert.",
        "definition" : "Narrative representation of the alert.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAlert.priority",
        "path" : "EHDSAlert.priority",
        "short" : "A code that identifies the priority of the alert.",
        "definition" : "A code that identifies the priority of the alert.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:Flag-priority-code"
        }
      },
      {
        "id" : "EHDSAlert.period",
        "path" : "EHDSAlert.period",
        "short" : "Time period when alert is active. The period of time from the activation of the alert to inactivation of the alert. If the alert is active, the end of the period should be unspecified.",
        "definition" : "Time period when alert is active. The period of time from the activation of the alert to inactivation of the alert. If the alert is active, the end of the period should be unspecified.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSAlert.sourceReference",
        "path" : "EHDSAlert.sourceReference",
        "short" : "A reference to the resource the alert is about.",
        "definition" : "A reference to the resource the alert is about.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Resource"
          }
        ]
      }
    ]
  }
}

```
