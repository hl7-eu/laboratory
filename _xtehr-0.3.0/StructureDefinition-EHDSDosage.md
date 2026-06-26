# Dosage model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosage model**

## Logical Model: Dosage model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSDosage |

 
The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element. 

**Usages:**

* Derived from this Logical Model: [Administered dosage model](StructureDefinition-EHDSAdministeredDosage.md)
* Use this Logical Model: [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md) and [Medication use model](StructureDefinition-EHDSMedicationUse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDosage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDosage.csv), [Excel](StructureDefinition-EHDSDosage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDosage",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "version" : "0.3.0",
  "name" : "EHDSDosage",
  "title" : "Dosage model",
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
  "description" : "The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDosage",
        "path" : "EHDSDosage",
        "short" : "Dosage model",
        "definition" : "The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element."
      },
      {
        "id" : "EHDSDosage.renderedDosageInstruction",
        "path" : "EHDSDosage.renderedDosageInstruction",
        "short" : "Full dosage information as human-readable text covering all dosage steps. Generating the text follows local rules and should include all locally implemented dosage data even when such elements are not present in this model.",
        "definition" : "Full dosage information as human-readable text covering all dosage steps. Generating the text follows local rules and should include all locally implemented dosage data even when such elements are not present in this model.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails",
        "path" : "EHDSDosage.dosageDetails",
        "short" : "Details of single dosage scheme step",
        "definition" : "Details of single dosage scheme step",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.sequence",
        "path" : "EHDSDosage.dosageDetails.sequence",
        "short" : "Order of the dosage instruction, in case one treatment consists of several dosage steps. When two schemes share the same sequence number, they are meant to be running in parallel.",
        "definition" : "Order of the dosage instruction, in case one treatment consists of several dosage steps. When two schemes share the same sequence number, they are meant to be running in parallel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.note",
        "path" : "EHDSDosage.dosageDetails.note",
        "short" : "Patient oriented instructions as free text for this dosage step",
        "definition" : "Patient oriented instructions as free text for this dosage step",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.doseAndRate",
        "path" : "EHDSDosage.dosageDetails.doseAndRate",
        "short" : "Amount of medication administered per one dose (= one timing)",
        "definition" : "Amount of medication administered per one dose (= one timing)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.doseAndRate.dose[x]",
        "path" : "EHDSDosage.dosageDetails.doseAndRate.dose[x]",
        "short" : "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
        "definition" : "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM (units of measurement), EDQM Standard Terms (units of presentation)"
        }
      },
      {
        "id" : "EHDSDosage.dosageDetails.doseAndRate.rate[x]",
        "path" : "EHDSDosage.dosageDetails.doseAndRate.rate[x]",
        "short" : "Amount of medication per time period (e.g. 100mg per 1 hour). When rate is provided per 1 time unit, Quantity data type can be used with a suitable unit (e.g. mg/h, ug/min).",
        "definition" : "Amount of medication per time period (e.g. 100mg per 1 hour). When rate is provided per 1 time unit, Quantity data type can be used with a suitable unit (e.g. mg/h, ug/min).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Ratio"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM (units of measurement), EDQM Standard Terms (units of presentation)"
        }
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat",
        "path" : "EHDSDosage.dosageDetails.repeat",
        "short" : "Repetition of the administration.",
        "definition" : "Repetition of the administration.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.bounds",
        "path" : "EHDSDosage.dosageDetails.repeat.bounds",
        "short" : "Time bounds for the treatment (current dosage scheme). Only one of the following can exist.",
        "definition" : "Time bounds for the treatment (current dosage scheme). Only one of the following can exist.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.bounds.duration",
        "path" : "EHDSDosage.dosageDetails.repeat.bounds.duration",
        "short" : "Number of time units, e.g 10 days",
        "definition" : "Number of time units, e.g 10 days",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM"
        }
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.bounds.period",
        "path" : "EHDSDosage.dosageDetails.repeat.bounds.period",
        "short" : "Start and end date, 05.08.2023 - 10.08.2023",
        "definition" : "Start and end date, 05.08.2023 - 10.08.2023",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.duration",
        "path" : "EHDSDosage.dosageDetails.repeat.duration",
        "short" : "Duration of administration (e.g '5 minutes', '1 hour')",
        "definition" : "Duration of administration (e.g '5 minutes', '1 hour')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM"
        }
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.frequency",
        "path" : "EHDSDosage.dosageDetails.repeat.frequency",
        "short" : "Frequency of intake/administration (e.g 'three times a day')",
        "definition" : "Frequency of intake/administration (e.g 'three times a day')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.frequency.numberOfTimes",
        "path" : "EHDSDosage.dosageDetails.repeat.frequency.numberOfTimes",
        "short" : "Number of times per period (e.g '3 times')",
        "definition" : "Number of times per period (e.g '3 times')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.frequency.period",
        "path" : "EHDSDosage.dosageDetails.repeat.frequency.period",
        "short" : "Duration to which the frequency applies (e.g '... / 1 day')",
        "definition" : "Duration to which the frequency applies (e.g '... / 1 day')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM"
        }
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.dayOfWeek",
        "path" : "EHDSDosage.dosageDetails.repeat.dayOfWeek",
        "short" : "The day of the week of administration, e.g Mon, Tue, etc",
        "definition" : "The day of the week of administration, e.g Mon, Tue, etc",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.timeOfDay",
        "path" : "EHDSDosage.dosageDetails.repeat.timeOfDay",
        "short" : "Exact time of day of administration (e.g '10:00')",
        "definition" : "Exact time of day of administration (e.g '10:00')",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.repeat.eventTime",
        "path" : "EHDSDosage.dosageDetails.repeat.eventTime",
        "short" : "Time period or event when the administration should happen ('before meal', 'immediately', 'morning')",
        "definition" : "Time period or event when the administration should happen ('before meal', 'immediately', 'morning')",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.asNeeded",
        "path" : "EHDSDosage.dosageDetails.asNeeded",
        "short" : "Take as needed",
        "definition" : "Take as needed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.bodySite",
        "path" : "EHDSDosage.dosageDetails.bodySite",
        "short" : "Body site of administration",
        "definition" : "Body site of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dosageDetails.routeOfAdministration",
        "path" : "EHDSDosage.dosageDetails.routeOfAdministration",
        "short" : "Route of administration",
        "definition" : "Route of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      }
    ]
  }
}

```
