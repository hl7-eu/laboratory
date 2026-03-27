# Device use model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device use model**

## Logical Model: Device use model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSDeviceUse |

 
Model for information about the use of a device in the care of patient. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDeviceUse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDeviceUse.csv), [Excel](StructureDefinition-EHDSDeviceUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDeviceUse",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "version" : "0.3.0",
  "name" : "EHDSDeviceUse",
  "title" : "Device use model",
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
  "description" : "Model for information about the use of a device in the care of patient.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDeviceUse",
        "path" : "EHDSDeviceUse",
        "short" : "Device use model",
        "definition" : "Model for information about the use of a device in the care of patient."
      },
      {
        "id" : "EHDSDeviceUse.header.author[x]",
        "path" : "EHDSDeviceUse.header.author[x]",
        "short" : "The author of the device usage statement.",
        "definition" : "The author of the device usage statement."
      },
      {
        "id" : "EHDSDeviceUse.header.status",
        "path" : "EHDSDeviceUse.header.status",
        "short" : "Current status of the device usage (e.g. active, completed, etc).",
        "definition" : "Current status of the device usage (e.g. active, completed, etc).",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Device Use Statement Status or HL7 Device Usage Status"
        }
      },
      {
        "id" : "EHDSDeviceUse.periodOfUse",
        "path" : "EHDSDeviceUse.periodOfUse",
        "short" : "The period of time during which the device was implanted in the patient or the external device was in use.",
        "definition" : "The period of time during which the device was implanted in the patient or the external device was in use.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.device[x]",
        "path" : "EHDSDeviceUse.device[x]",
        "short" : "The details of the device used.",
        "definition" : "The details of the device used.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.bodySite",
        "path" : "EHDSDeviceUse.bodySite",
        "short" : "Anatomical location of the device. May include laterality.",
        "definition" : "Anatomical location of the device. May include laterality.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.reason[x]",
        "path" : "EHDSDeviceUse.reason[x]",
        "short" : "Reason or justification for the use of the device.",
        "definition" : "Reason or justification for the use of the device.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
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
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.note",
        "path" : "EHDSDeviceUse.note",
        "short" : "Note about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.",
        "definition" : "Note about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.",
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
