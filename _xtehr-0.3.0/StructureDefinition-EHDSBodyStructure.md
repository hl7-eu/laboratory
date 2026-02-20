# Body structure model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body structure model**

## Logical Model: Body structure model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSBodyStructure |

 
Model for body structure 

**Usages:**

* Use this Logical Model: [Condition model](StructureDefinition-EHDSCondition.md), [Device use model](StructureDefinition-EHDSDeviceUse.md), [Dosage model](StructureDefinition-EHDSDosage.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md)... Show 5 more, [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Observation model](StructureDefinition-EHDSObservation.md), [Procedure model](StructureDefinition-EHDSProcedure.md), [Service request model](StructureDefinition-EHDSServiceRequest.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSBodyStructure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSBodyStructure.csv), [Excel](StructureDefinition-EHDSBodyStructure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSBodyStructure",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure",
  "version" : "0.3.0",
  "name" : "EHDSBodyStructure",
  "title" : "Body structure model",
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
  "description" : "Model for body structure",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSBodyStructure",
        "path" : "EHDSBodyStructure",
        "short" : "Body structure model",
        "definition" : "Model for body structure"
      },
      {
        "id" : "EHDSBodyStructure.morphology",
        "path" : "EHDSBodyStructure.morphology",
        "short" : "The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies.",
        "definition" : "The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies.",
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
        "id" : "EHDSBodyStructure.location",
        "path" : "EHDSBodyStructure.location",
        "short" : "Body site",
        "definition" : "Body site",
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
        "id" : "EHDSBodyStructure.locationQualifier",
        "path" : "EHDSBodyStructure.locationQualifier",
        "short" : "Additional qualifier of the body structure (e.g. upper, lower, left side).",
        "definition" : "Additional qualifier of the body structure (e.g. upper, lower, left side).",
        "min" : 0,
        "max" : "*",
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
        "id" : "EHDSBodyStructure.laterality",
        "path" : "EHDSBodyStructure.laterality",
        "short" : "Body structure laterality (e.g. left, right).",
        "definition" : "Body structure laterality (e.g. left, right).",
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
        "id" : "EHDSBodyStructure.description",
        "path" : "EHDSBodyStructure.description",
        "short" : "Textual description of the body structure",
        "definition" : "Textual description of the body structure",
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
