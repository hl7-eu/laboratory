# Specimen model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specimen model**

## Logical Model: Specimen model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSSpecimen |

 
Model for a specimen to be used for analysis 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Observation model](StructureDefinition-EHDSObservation.md)... Show 2 more, [Service request model](StructureDefinition-EHDSServiceRequest.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSSpecimen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSSpecimen.csv), [Excel](StructureDefinition-EHDSSpecimen.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSSpecimen",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen",
  "version" : "0.3.0",
  "name" : "EHDSSpecimen",
  "title" : "Specimen model",
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
  "description" : "Model for a specimen to be used for analysis",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSSpecimen",
        "path" : "EHDSSpecimen",
        "short" : "Specimen model",
        "definition" : "Model for a specimen to be used for analysis"
      },
      {
        "id" : "EHDSSpecimen.identifier",
        "path" : "EHDSSpecimen.identifier",
        "short" : "An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used.",
        "definition" : "An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.status",
        "path" : "EHDSSpecimen.status",
        "short" : "Availability of the specimen.",
        "definition" : "Availability of the specimen.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 specimen-status"
        }
      },
      {
        "id" : "EHDSSpecimen.type",
        "path" : "EHDSSpecimen.type",
        "short" : "The kind of material that forms the Specimen.",
        "definition" : "The kind of material that forms the Specimen.",
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
        "id" : "EHDSSpecimen.specimenSource[x]",
        "path" : "EHDSSpecimen.specimenSource[x]",
        "short" : "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a device. Additional types of specimen may be allowed in implementations.",
        "definition" : "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a device. Additional types of specimen may be allowed in implementations.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.parentSpecimen",
        "path" : "EHDSSpecimen.parentSpecimen",
        "short" : "Specimen from which this specimen originated",
        "definition" : "Specimen from which this specimen originated",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.request",
        "path" : "EHDSSpecimen.request",
        "short" : "Why the specimen ws collected",
        "definition" : "Why the specimen ws collected",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.combined",
        "path" : "EHDSSpecimen.combined",
        "short" : "This element signifies if the specimen is part of a group or pooled.",
        "definition" : "This element signifies if the specimen is part of a group or pooled.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 specimen-combined"
        }
      },
      {
        "id" : "EHDSSpecimen.collection",
        "path" : "EHDSSpecimen.collection",
        "short" : "Collection details",
        "definition" : "Collection details",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.collection.performer[x]",
        "path" : "EHDSSpecimen.collection.performer[x]",
        "short" : "Person or organisation who collected the specimen",
        "definition" : "Person or organisation who collected the specimen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.collection.collected[x]",
        "path" : "EHDSSpecimen.collection.collected[x]",
        "short" : "The period or date and time of specimen collection.",
        "definition" : "The period or date and time of specimen collection.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          },
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.collection.quantity",
        "path" : "EHDSSpecimen.collection.quantity",
        "short" : "The quantity of specimen collected",
        "definition" : "The quantity of specimen collected",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.collection.method",
        "path" : "EHDSSpecimen.collection.method",
        "short" : "If relevant for the results, the method of obtaining the specimen.",
        "definition" : "If relevant for the results, the method of obtaining the specimen.",
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
        "id" : "EHDSSpecimen.collection.device",
        "path" : "EHDSSpecimen.collection.device",
        "short" : "Device used to perform specimen collection",
        "definition" : "Device used to perform specimen collection",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.collection.bodySite",
        "path" : "EHDSSpecimen.collection.bodySite",
        "short" : "Anatomic location (e.g. body location, laterality and other details) where the material is collected, e.g. Elbow, left",
        "definition" : "Anatomic location (e.g. body location, laterality and other details) where the material is collected, e.g. Elbow, left",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.receivedDate",
        "path" : "EHDSSpecimen.receivedDate",
        "short" : "Date and time when specimen is received by the testing laboratory.",
        "definition" : "Date and time when specimen is received by the testing laboratory.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.container",
        "path" : "EHDSSpecimen.container",
        "short" : "The container holding the specimen.",
        "definition" : "The container holding the specimen.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.container.specimenQuantity",
        "path" : "EHDSSpecimen.container.specimenQuantity",
        "short" : "Quantity of specimen within container",
        "definition" : "Quantity of specimen within container",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.container.containerDevice",
        "path" : "EHDSSpecimen.container.containerDevice",
        "short" : "The device resource for the the container holding the specimen.",
        "definition" : "The device resource for the the container holding the specimen.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.condition",
        "path" : "EHDSSpecimen.condition",
        "short" : "State of the specimen. State of the speeimen should be alligned with dataAbsentReason element of the Observatiom model.",
        "definition" : "State of the specimen. State of the speeimen should be alligned with dataAbsentReason element of the Observatiom model.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 specimenCondition"
        }
      },
      {
        "id" : "EHDSSpecimen.note",
        "path" : "EHDSSpecimen.note",
        "short" : "To communicate any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen).",
        "definition" : "To communicate any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen).",
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
