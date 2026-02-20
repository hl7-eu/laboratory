# Procedure model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure model**

## Logical Model: Procedure model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSProcedure |

 
The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage. 

**Usages:**

* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md)... Show 4 more, [Observation model](StructureDefinition-EHDSObservation.md), [Patient summary model](StructureDefinition-EHDSPatientSummary.md), [Procedure model](StructureDefinition-EHDSProcedure.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSProcedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSProcedure.csv), [Excel](StructureDefinition-EHDSProcedure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSProcedure",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure",
  "version" : "0.3.0",
  "name" : "EHDSProcedure",
  "title" : "Procedure model",
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
  "description" : "The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSProcedure",
        "path" : "EHDSProcedure",
        "short" : "Procedure model",
        "definition" : "The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage."
      },
      {
        "id" : "EHDSProcedure.header.author[x]",
        "path" : "EHDSProcedure.header.author[x]",
        "short" : "Author responsible for the provided information.",
        "definition" : "Author responsible for the provided information."
      },
      {
        "id" : "EHDSProcedure.header.status",
        "path" : "EHDSProcedure.header.status",
        "short" : "Status of the procedure (e.g. completed, on hold, stopped)",
        "definition" : "Status of the procedure (e.g. completed, on hold, stopped)",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Event Status"
        }
      },
      {
        "id" : "EHDSProcedure.code",
        "path" : "EHDSProcedure.code",
        "short" : "Concept code and display name identifying the type of procedure",
        "definition" : "Concept code and display name identifying the type of procedure",
        "min" : 1,
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
        "id" : "EHDSProcedure.procedureDate[x]",
        "path" : "EHDSProcedure.procedureDate[x]",
        "short" : "Date and time of the procedure or interval of its performance",
        "definition" : "Date and time of the procedure or interval of its performance",
        "min" : 0,
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
        "id" : "EHDSProcedure.performer",
        "path" : "EHDSProcedure.performer",
        "short" : "Actors who performed the procedure (only main responsible actors expected)",
        "definition" : "Actors who performed the procedure (only main responsible actors expected)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.bodySite",
        "path" : "EHDSProcedure.bodySite",
        "short" : "Target body site of the procedure. Laterality may be included as a qualifier of the body site.",
        "definition" : "Target body site of the procedure. Laterality may be included as a qualifier of the body site.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.reason[x]",
        "path" : "EHDSProcedure.reason[x]",
        "short" : "The reason the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason.",
        "definition" : "The reason the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason.",
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
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, ICD-10, Orphacode"
        }
      },
      {
        "id" : "EHDSProcedure.outcome",
        "path" : "EHDSProcedure.outcome",
        "short" : "The immediate result of the procedure (e.g. successful, unsuccessful). This does not include assessment over a longer period of time.",
        "definition" : "The immediate result of the procedure (e.g. successful, unsuccessful). This does not include assessment over a longer period of time.",
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
        "id" : "EHDSProcedure.complication",
        "path" : "EHDSProcedure.complication",
        "short" : "Any complications that occurred during the procedure, or in the immediate post-procedure period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues.",
        "definition" : "Any complications that occurred during the procedure, or in the immediate post-procedure period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT"
        }
      },
      {
        "id" : "EHDSProcedure.deviceUsed",
        "path" : "EHDSProcedure.deviceUsed",
        "short" : "Device used to perform the procedure",
        "definition" : "Device used to perform the procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.focalDevice",
        "path" : "EHDSProcedure.focalDevice",
        "short" : "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "definition" : "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.note",
        "path" : "EHDSProcedure.note",
        "short" : "Additional information about the procedure",
        "definition" : "Additional information about the procedure",
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
