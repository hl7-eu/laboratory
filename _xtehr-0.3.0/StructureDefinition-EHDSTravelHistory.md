# Travel history model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Travel history model**

## Logical Model: Travel history model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTravelHistory | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSTravelHistory |

 
Relevant information about the patient's recent travel history, for one visit 

**Usages:**

* Use this Logical Model: [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSTravelHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSTravelHistory.csv), [Excel](StructureDefinition-EHDSTravelHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSTravelHistory",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTravelHistory",
  "version" : "0.3.0",
  "name" : "EHDSTravelHistory",
  "title" : "Travel history model",
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
  "description" : "Relevant information about the patient's recent travel history, for one visit",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTravelHistory",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSTravelHistory",
        "path" : "EHDSTravelHistory",
        "short" : "Travel history model",
        "definition" : "Relevant information about the patient's recent travel history, for one visit"
      },
      {
        "id" : "EHDSTravelHistory.country",
        "path" : "EHDSTravelHistory.country",
        "short" : "Country visited",
        "definition" : "Country visited",
        "requirements" : "eHN PS Guideline",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166"
        }
      },
      {
        "id" : "EHDSTravelHistory.period",
        "path" : "EHDSTravelHistory.period",
        "short" : "Date of entry and departure",
        "definition" : "The period during which the patient visited the country",
        "requirements" : "eHN PS Guideline",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      }
    ]
  }
}

```
