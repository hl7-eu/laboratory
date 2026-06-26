# Service request model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Service request model**

## Logical Model: Service request model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSServiceRequest |

 
The model covers details about a requested service or services. One order may include several requests. 

**Usages:**

* Use this Logical Model: [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md)... Show 2 more, [Observation model](StructureDefinition-EHDSObservation.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSServiceRequest.csv), [Excel](StructureDefinition-EHDSServiceRequest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSServiceRequest",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest",
  "version" : "0.3.0",
  "name" : "EHDSServiceRequest",
  "title" : "Service request model",
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
  "description" : "The model covers details about a requested service or services. One order may include several requests.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSServiceRequest",
        "path" : "EHDSServiceRequest",
        "short" : "Service request model",
        "definition" : "The model covers details about a requested service or services. One order may include several requests."
      },
      {
        "id" : "EHDSServiceRequest.description",
        "path" : "EHDSServiceRequest.description",
        "short" : "Textual description of the requested service",
        "definition" : "Textual description of the requested service",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.code",
        "path" : "EHDSServiceRequest.code",
        "short" : "A code and name that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested.",
        "definition" : "A code and name that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, NPU, SNOMED CT"
        }
      },
      {
        "id" : "EHDSServiceRequest.quantity",
        "path" : "EHDSServiceRequest.quantity",
        "short" : "Amount of requested services of the same type",
        "definition" : "Amount of requested services of the same type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.bodySite",
        "path" : "EHDSServiceRequest.bodySite",
        "short" : "Anatomic location and laterality where the procedure should be performed. This is the target site.",
        "definition" : "Anatomic location and laterality where the procedure should be performed. This is the target site.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.reason[x]",
        "path" : "EHDSServiceRequest.reason[x]",
        "short" : "Reason why this service is being requested.",
        "definition" : "Reason why this service is being requested.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          },
          {
            "code" : "string"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, Orphacode"
        }
      },
      {
        "id" : "EHDSServiceRequest.priority",
        "path" : "EHDSServiceRequest.priority",
        "short" : "Indicates how quickly the request should be addressed with respect to other requests.",
        "definition" : "Indicates how quickly the request should be addressed with respect to other requests.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Request Priority"
        }
      },
      {
        "id" : "EHDSServiceRequest.supportingInformation[x]",
        "path" : "EHDSServiceRequest.supportingInformation[x]",
        "short" : "Health conditions relevant for the results interpretation, e.g. fasting status, sex for clinical use, etc.",
        "definition" : "Health conditions relevant for the results interpretation, e.g. fasting status, sex for clinical use, etc.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.specimen",
        "path" : "EHDSServiceRequest.specimen",
        "short" : "Specimens to be used by the laboratory procedure",
        "definition" : "Specimens to be used by the laboratory procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.encounter",
        "path" : "EHDSServiceRequest.encounter",
        "short" : "The encounter that provides additional information about the healthcare context in which this request is made.",
        "definition" : "The encounter that provides additional information about the healthcare context in which this request is made.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.occurrence[x]",
        "path" : "EHDSServiceRequest.occurrence[x]",
        "short" : "Expected time of the service",
        "definition" : "Expected time of the service",
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
        "id" : "EHDSServiceRequest.patientInstructions",
        "path" : "EHDSServiceRequest.patientInstructions",
        "short" : "Patient or consumer-oriented instructions",
        "definition" : "Patient or consumer-oriented instructions",
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
