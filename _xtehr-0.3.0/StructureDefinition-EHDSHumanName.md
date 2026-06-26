# Human name model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Human name model**

## Logical Model: Human name model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSHumanName |

 
Model for human name 

**Usages:**

* Use this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Patient model](StructureDefinition-EHDSPatient.md) and [Related person model](StructureDefinition-EHDSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSHumanName)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSHumanName.csv), [Excel](StructureDefinition-EHDSHumanName.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSHumanName",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName",
  "version" : "0.3.0",
  "name" : "EHDSHumanName",
  "title" : "Human name model",
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
  "description" : "Model for human name",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSHumanName",
        "path" : "EHDSHumanName",
        "short" : "Human name model",
        "definition" : "Model for human name"
      },
      {
        "id" : "EHDSHumanName.use",
        "path" : "EHDSHumanName.use",
        "short" : "Identifies the purpose of this name.",
        "definition" : "Identifies the purpose of this name.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Name Use"
        }
      },
      {
        "id" : "EHDSHumanName.text",
        "path" : "EHDSHumanName.text",
        "short" : "Specifies the entire name as it should be displayed e.g. on an application UI.",
        "definition" : "Specifies the entire name as it should be displayed e.g. on an application UI.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.family",
        "path" : "EHDSHumanName.family",
        "short" : "The family name/surname/last name of a person.",
        "definition" : "The family name/surname/last name of a person.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.given",
        "path" : "EHDSHumanName.given",
        "short" : "The given name/first name.",
        "definition" : "The given name/first name.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.prefix",
        "path" : "EHDSHumanName.prefix",
        "short" : "Name parts that come before the name. Prefixes appear in the correct order for presenting the name.",
        "definition" : "Name parts that come before the name. Prefixes appear in the correct order for presenting the name.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.suffix",
        "path" : "EHDSHumanName.suffix",
        "short" : "Name parts that come after the name. Suffixes appear in the correct order for presenting the name.",
        "definition" : "Name parts that come after the name. Suffixes appear in the correct order for presenting the name.",
        "min" : 0,
        "max" : "*",
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
