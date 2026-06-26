# Medication administration model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication administration model**

## Logical Model: Medication administration model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSMedicationAdministration |

 
The model covers details about single medication administrations within the scope of imaging and laboratory procedures. 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Medication use model](StructureDefinition-EHDSMedicationUse.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationAdministration)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationAdministration.csv), [Excel](StructureDefinition-EHDSMedicationAdministration.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationAdministration",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration",
  "version" : "0.3.0",
  "name" : "EHDSMedicationAdministration",
  "title" : "Medication administration model",
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
  "description" : "The model covers details about single medication administrations within the scope of imaging and laboratory procedures.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationAdministration",
        "path" : "EHDSMedicationAdministration",
        "short" : "Medication administration model",
        "definition" : "The model covers details about single medication administrations within the scope of imaging and laboratory procedures."
      },
      {
        "id" : "EHDSMedicationAdministration.header.author[x]",
        "path" : "EHDSMedicationAdministration.header.author[x]",
        "short" : "Responsible person for recording the administration (this may be the performer)"
      },
      {
        "id" : "EHDSMedicationAdministration.header.status",
        "path" : "EHDSMedicationAdministration.header.status",
        "short" : "Status of the administration (e.g. completed, on-hold)",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MedicationAdministration Status Codes"
        }
      },
      {
        "id" : "EHDSMedicationAdministration.medication",
        "path" : "EHDSMedicationAdministration.medication",
        "short" : "Administered medication",
        "definition" : "Administered medication",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.occurrence[x]",
        "path" : "EHDSMedicationAdministration.occurrence[x]",
        "short" : "Specific date/time or interval of time during which the administration took place (or did not take place)",
        "definition" : "Specific date/time or interval of time during which the administration took place (or did not take place)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.reason[x]",
        "path" : "EHDSMedicationAdministration.reason[x]",
        "short" : "Condition or observation that supports why the medication was administered",
        "definition" : "Condition or observation that supports why the medication was administered",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.dosageInstructions",
        "path" : "EHDSMedicationAdministration.dosageInstructions",
        "short" : "Details of how medication was taken/administered",
        "definition" : "Details of how medication was taken/administered",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosage"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.note",
        "path" : "EHDSMedicationAdministration.note",
        "short" : "Textual information about the administration",
        "definition" : "Textual information about the administration",
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
