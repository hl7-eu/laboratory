# Address model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Address model**

## Logical Model: Address model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSAddress |

 
EHDS refined base model for Address structure 

**Usages:**

* Use this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Location model](StructureDefinition-EHDSLocation.md), [Organisation model](StructureDefinition-EHDSOrganisation.md), [Patient model](StructureDefinition-EHDSPatient.md) and [Related person model](StructureDefinition-EHDSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAddress)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAddress.csv), [Excel](StructureDefinition-EHDSAddress.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAddress",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress",
  "version" : "0.3.0",
  "name" : "EHDSAddress",
  "title" : "Address model",
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
  "description" : "EHDS refined base model for Address structure",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAddress",
        "path" : "EHDSAddress",
        "short" : "Address model",
        "definition" : "EHDS refined base model for Address structure"
      },
      {
        "id" : "EHDSAddress.use",
        "path" : "EHDSAddress.use",
        "short" : "Purpose of the address",
        "definition" : "Purpose of the address",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 AddressUse"
        }
      },
      {
        "id" : "EHDSAddress.type",
        "path" : "EHDSAddress.type",
        "short" : "Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.",
        "definition" : "Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 AddressType"
        }
      },
      {
        "id" : "EHDSAddress.text",
        "path" : "EHDSAddress.text",
        "short" : "Text representation of the address",
        "definition" : "Text representation of the address",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAddress.street",
        "path" : "EHDSAddress.street",
        "short" : "Name of the street",
        "definition" : "Name of the street",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAddress.houseNumber",
        "path" : "EHDSAddress.houseNumber",
        "short" : "House number",
        "definition" : "House number",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAddress.postBox",
        "path" : "EHDSAddress.postBox",
        "short" : "Post box",
        "definition" : "Post box",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAddress.city",
        "path" : "EHDSAddress.city",
        "short" : "City",
        "definition" : "City",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAddress.postalCode",
        "path" : "EHDSAddress.postalCode",
        "short" : "Postal code",
        "definition" : "Postal code",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAddress.country",
        "path" : "EHDSAddress.country",
        "short" : "Country name and country code",
        "definition" : "Country name and country code",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166-1 alpha-2"
        }
      }
    ]
  }
}

```
