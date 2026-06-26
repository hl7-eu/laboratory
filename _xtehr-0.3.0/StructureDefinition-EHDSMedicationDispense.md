# Medication dispense model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication dispense model**

## Logical Model: Medication dispense model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSMedicationDispense |

 
Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information. 

**Usages:**

* Use this Logical Model: [Medication use model](StructureDefinition-EHDSMedicationUse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationDispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationDispense.csv), [Excel](StructureDefinition-EHDSMedicationDispense.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationDispense",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense",
  "version" : "0.3.0",
  "name" : "EHDSMedicationDispense",
  "title" : "Medication dispense model",
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
  "description" : "Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationDispense",
        "path" : "EHDSMedicationDispense",
        "short" : "Medication dispense model",
        "definition" : "Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information."
      },
      {
        "id" : "EHDSMedicationDispense.header.author[x]",
        "path" : "EHDSMedicationDispense.header.author[x]",
        "short" : "The actor who issued the dispense record. Responsibility for the dispense should be traceable from this information.",
        "definition" : "The actor who issued the dispense record. Responsibility for the dispense should be traceable from this information.",
        "min" : 1
      },
      {
        "id" : "EHDSMedicationDispense.header.date",
        "path" : "EHDSMedicationDispense.header.date",
        "short" : "Date and time of issuing the dispense record",
        "definition" : "Date and time of issuing the dispense record",
        "min" : 1
      },
      {
        "id" : "EHDSMedicationDispense.header.status",
        "path" : "EHDSMedicationDispense.header.status",
        "short" : "The status of the dispense, e.g. completed, declined, entered-in-error",
        "definition" : "The status of the dispense, e.g. completed, declined, entered-in-error",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MedicationDispense Status Codes"
        }
      },
      {
        "id" : "EHDSMedicationDispense.header.source",
        "path" : "EHDSMedicationDispense.header.source",
        "max" : "0"
      },
      {
        "id" : "EHDSMedicationDispense.dispenseLocation",
        "path" : "EHDSMedicationDispense.dispenseLocation",
        "short" : "Location of dispense",
        "definition" : "Location of dispense",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.receiver[x]",
        "path" : "EHDSMedicationDispense.receiver[x]",
        "short" : "Identification of the person who received the dispensed medication, especially when it was not the patient. When not present, it is assumed that the patient is the receiver.",
        "definition" : "Identification of the person who received the dispensed medication, especially when it was not the patient. When not present, it is assumed that the patient is the receiver.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.relatedRequest",
        "path" : "EHDSMedicationDispense.relatedRequest",
        "short" : "Identifier of the prescription item the dispense is related to",
        "definition" : "Identifier of the prescription item the dispense is related to",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.medication",
        "path" : "EHDSMedicationDispense.medication",
        "short" : "Exact dispensed product. If multiple medications are dispensed together, multiple dispense records should be created.",
        "definition" : "Exact dispensed product. If multiple medications are dispensed together, multiple dispense records should be created.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.dispensedQuantity",
        "path" : "EHDSMedicationDispense.dispensedQuantity",
        "short" : "Number of dispensed packages if the package size is known, or number of smaller items/units, according to the medication dispensed. A unit is expected.",
        "definition" : "Number of dispensed packages if the package size is known, or number of smaller items/units, according to the medication dispensed. A unit is expected.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM, EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedicationDispense.timeOfDispensation",
        "path" : "EHDSMedicationDispense.timeOfDispensation",
        "short" : "Date and time when medication was handed over. When not present, the time of dispensation is assumed to be the time of issuing dispense record.",
        "definition" : "Date and time when medication was handed over. When not present, the time of dispensation is assumed to be the time of issuing dispense record.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.substitutionOccurred",
        "path" : "EHDSMedicationDispense.substitutionOccurred",
        "short" : "Whether substitution was made by the dispenser. Definition of substitution is specific to the jurisdiction.",
        "definition" : "Whether substitution was made by the dispenser. Definition of substitution is specific to the jurisdiction.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.dosageInstructions",
        "path" : "EHDSMedicationDispense.dosageInstructions",
        "short" : "Dosage and administration instructions",
        "definition" : "Dosage and administration instructions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.note",
        "path" : "EHDSMedicationDispense.note",
        "short" : "Additional information or comments",
        "definition" : "Additional information or comments",
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
