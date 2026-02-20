# Pregnancy history model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy history model**

## Logical Model: Pregnancy history model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSPregnancyHistory |

 
Pregnancy history for one pregnancy 

**Usages:**

* Use this Logical Model: [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPregnancyHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPregnancyHistory.csv), [Excel](StructureDefinition-EHDSPregnancyHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPregnancyHistory",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory",
  "version" : "0.3.0",
  "name" : "EHDSPregnancyHistory",
  "title" : "Pregnancy history model",
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
  "description" : "Pregnancy history for one pregnancy",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPregnancyHistory",
        "path" : "EHDSPregnancyHistory",
        "short" : "Pregnancy history model",
        "definition" : "Pregnancy history for one pregnancy"
      },
      {
        "id" : "EHDSPregnancyHistory.header.author[x]",
        "path" : "EHDSPregnancyHistory.header.author[x]",
        "short" : "Author of this observation",
        "definition" : "Author of this observation"
      },
      {
        "id" : "EHDSPregnancyHistory.header.status",
        "path" : "EHDSPregnancyHistory.header.status",
        "short" : "Status of this observation",
        "definition" : "Status of this observation"
      },
      {
        "id" : "EHDSPregnancyHistory.endDate",
        "path" : "EHDSPregnancyHistory.endDate",
        "short" : "The end date of the pregnancy.",
        "definition" : "The end date of the pregnancy.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSPregnancyHistory.outcome",
        "path" : "EHDSPregnancyHistory.outcome",
        "short" : "The outcome of the pregnancy.",
        "definition" : "The outcome of the pregnancy.",
        "requirements" : "eHN PS Guideline, ISO IPS",
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
        "id" : "EHDSPregnancyHistory.numberOfFetuses",
        "path" : "EHDSPregnancyHistory.numberOfFetuses",
        "short" : "Number of children/fetuses in this specific pregnancy",
        "definition" : "Number of children/fetuses in this specific pregnancy",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSPregnancyHistory.note",
        "path" : "EHDSPregnancyHistory.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "requirements" : "eHN PS Guideline, ISO IPS",
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
