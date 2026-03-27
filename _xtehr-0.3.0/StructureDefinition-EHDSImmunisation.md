# Immunisation model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunisation model**

## Logical Model: Immunisation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSImmunisation |

 
Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope. 

**Usages:**

* Use this Logical Model: [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSImmunisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSImmunisation.csv), [Excel](StructureDefinition-EHDSImmunisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSImmunisation",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation",
  "version" : "0.3.0",
  "name" : "EHDSImmunisation",
  "title" : "Immunisation model",
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
  "description" : "Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSImmunisation",
        "path" : "EHDSImmunisation",
        "short" : "Immunisation model",
        "definition" : "Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope."
      },
      {
        "id" : "EHDSImmunisation.header.author[x]",
        "path" : "EHDSImmunisation.header.author[x]",
        "short" : "The author of the immunisation statement.",
        "definition" : "The author of the immunisation statement."
      },
      {
        "id" : "EHDSImmunisation.header.status",
        "path" : "EHDSImmunisation.header.status",
        "short" : "Status of the immunisation event (completed, not-done).",
        "definition" : "Status of the immunisation event (completed, not-done)."
      },
      {
        "id" : "EHDSImmunisation.diseaseOrAgentTargeted",
        "path" : "EHDSImmunisation.diseaseOrAgentTargeted",
        "short" : "Disease or agent that the vaccination provides protection against (e.g. 76902006 Tetanus).",
        "definition" : "Disease or agent that the vaccination provides protection against (e.g. 76902006 Tetanus).",
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
        "id" : "EHDSImmunisation.vaccine",
        "path" : "EHDSImmunisation.vaccine",
        "short" : "Type of immunisation, e.g. J07AM01 Tetanus toxoid; or 871803007 Hepatitis A and Hepatitis B virus antigens only vaccine product.",
        "definition" : "Type of immunisation, e.g. J07AM01 Tetanus toxoid; or 871803007 Hepatitis A and Hepatitis B virus antigens only vaccine product.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, ATC"
        }
      },
      {
        "id" : "EHDSImmunisation.administeredProduct",
        "path" : "EHDSImmunisation.administeredProduct",
        "short" : "Administered medicinal product (e.g. TETAVAX suspension for injection), including batch/lot details when necessary.",
        "definition" : "Administered medicinal product (e.g. TETAVAX suspension for injection), including batch/lot details when necessary.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.administrationTime",
        "path" : "EHDSImmunisation.administrationTime",
        "short" : "The date and optionally the exact time when the vaccination was administered.",
        "definition" : "The date and optionally the exact time when the vaccination was administered.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.administeringCentre",
        "path" : "EHDSImmunisation.administeringCentre",
        "short" : "Administering centre or a health authority responsible for the vaccination event",
        "definition" : "Administering centre or a health authority responsible for the vaccination event",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.administrator",
        "path" : "EHDSImmunisation.administrator",
        "short" : "Health professional responsible for administering the immunisation product.",
        "definition" : "Health professional responsible for administering the immunisation product.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.note",
        "path" : "EHDSImmunisation.note",
        "short" : "Any additional free-text information about the immunisation",
        "definition" : "Any additional free-text information about the immunisation",
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
