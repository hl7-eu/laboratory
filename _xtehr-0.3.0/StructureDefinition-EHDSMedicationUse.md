# Medication use model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication use model**

## Logical Model: Medication use model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSMedicationUse |

 
Statement about a single medication as part of a medication summary. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationUse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationUse.csv), [Excel](StructureDefinition-EHDSMedicationUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationUse",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse",
  "version" : "0.3.0",
  "name" : "EHDSMedicationUse",
  "title" : "Medication use model",
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
  "description" : "Statement about a single medication as part of a medication summary.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationUse",
        "path" : "EHDSMedicationUse",
        "short" : "Medication use model",
        "definition" : "Statement about a single medication as part of a medication summary."
      },
      {
        "id" : "EHDSMedicationUse.header.author[x]",
        "path" : "EHDSMedicationUse.header.author[x]",
        "short" : "The author of the medication use statement",
        "definition" : "The author of the medication use statement"
      },
      {
        "id" : "EHDSMedicationUse.header.status",
        "path" : "EHDSMedicationUse.header.status",
        "short" : "Status of the medication use statement (e.g. recorded)",
        "definition" : "Status of the medication use statement (e.g. recorded)",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MedicationStatement Status Codes"
        }
      },
      {
        "id" : "EHDSMedicationUse.treatmentStatus",
        "path" : "EHDSMedicationUse.treatmentStatus",
        "short" : "The current status of taking the medicine (e.g. taking, on-hold, stopped)",
        "definition" : "The current status of taking the medicine (e.g. taking, on-hold, stopped)",
        "requirements" : "MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.medication",
        "path" : "EHDSMedicationUse.medication",
        "short" : "Describes the medicinal product.",
        "definition" : "Describes the medicinal product.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.reason[x]",
        "path" : "EHDSMedicationUse.reason[x]",
        "short" : "Reason for the use of the medication (typically diagnosis, or a procedure)",
        "definition" : "Reason for the use of the medication (typically diagnosis, or a procedure)",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.dosageInstructions",
        "path" : "EHDSMedicationUse.dosageInstructions",
        "short" : "Details of how medication is/was taken or should be taken",
        "definition" : "Details of how medication is/was taken or should be taken",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.periodOfUse",
        "path" : "EHDSMedicationUse.periodOfUse",
        "short" : "Period when the patient took, is taking or is expected to take the medication",
        "definition" : "Period when the patient took, is taking or is expected to take the medication",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.derivedFrom[x]",
        "path" : "EHDSMedicationUse.derivedFrom[x]",
        "short" : "Prescriptions, dispenses or administrations that are the basis of this medication use statement.",
        "definition" : "Prescriptions, dispenses or administrations that are the basis of this medication use statement.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationPrescription"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.note",
        "path" : "EHDSMedicationUse.note",
        "short" : "Additional information about the medication use statement",
        "definition" : "Additional information about the medication use statement",
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
