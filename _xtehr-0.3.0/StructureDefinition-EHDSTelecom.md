# Telecom model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telecom model**

## Logical Model: Telecom model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSTelecom |

 
Model for communication contact information. 

**Usages:**

* Use this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Organisation model](StructureDefinition-EHDSOrganisation.md), [Patient model](StructureDefinition-EHDSPatient.md) and [Related person model](StructureDefinition-EHDSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSTelecom)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSTelecom.csv), [Excel](StructureDefinition-EHDSTelecom.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSTelecom",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom",
  "version" : "0.3.0",
  "name" : "EHDSTelecom",
  "title" : "Telecom model",
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
  "description" : "Model for communication contact information.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSTelecom",
        "path" : "EHDSTelecom",
        "short" : "Telecom model",
        "definition" : "Model for communication contact information."
      },
      {
        "id" : "EHDSTelecom.use",
        "path" : "EHDSTelecom.use",
        "short" : "Purpose of the address (eg. home, work)",
        "definition" : "Purpose of the address (eg. home, work)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSTelecom.type",
        "path" : "EHDSTelecom.type",
        "short" : "Type of communication form (eg. phone, fax, email).",
        "definition" : "Type of communication form (eg. phone, fax, email).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSTelecom.value",
        "path" : "EHDSTelecom.value",
        "short" : "The actual contact point details (i.e. phone number or email address).",
        "definition" : "The actual contact point details (i.e. phone number or email address).",
        "min" : 1,
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
