# Allergy intolerance model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergy intolerance model**

## Logical Model: Allergy intolerance model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSAllergyIntolerance |

 
Model for allergy or intolerance. 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAllergyIntolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAllergyIntolerance.csv), [Excel](StructureDefinition-EHDSAllergyIntolerance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAllergyIntolerance",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance",
  "version" : "0.3.0",
  "name" : "EHDSAllergyIntolerance",
  "title" : "Allergy intolerance model",
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
  "description" : "Model for allergy or intolerance.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAllergyIntolerance",
        "path" : "EHDSAllergyIntolerance",
        "short" : "Allergy intolerance model",
        "definition" : "Model for allergy or intolerance."
      },
      {
        "id" : "EHDSAllergyIntolerance.header.author[x]",
        "path" : "EHDSAllergyIntolerance.header.author[x]",
        "short" : "The author of the allergy/intolerance information.",
        "definition" : "The author of the allergy/intolerance information."
      },
      {
        "id" : "EHDSAllergyIntolerance.header.status",
        "path" : "EHDSAllergyIntolerance.header.status",
        "short" : "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc.",
        "definition" : "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 allergy intolerance status"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.agentOrAllergen",
        "path" : "EHDSAllergyIntolerance.agentOrAllergen",
        "short" : "Code that identifies the allergy or intolerance",
        "definition" : "Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., \"Latex\"), an allergy or intolerance condition (e.g., \"Latex allergy\"), or a negated/excluded code for a specific substance or class (e.g., \"No latex allergy\")\n  It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. ",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ATC, EMA SPOR SMS, SNOMED CT"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.note",
        "path" : "EHDSAllergyIntolerance.note",
        "short" : "Additional information about the allergy or intolerance",
        "definition" : "Additional information about the allergy or intolerance",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.criticality",
        "path" : "EHDSAllergyIntolerance.criticality",
        "short" : "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.",
        "definition" : "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 allergy intolerance criticality"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.certainty",
        "path" : "EHDSAllergyIntolerance.certainty",
        "short" : "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition",
        "definition" : "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 allergy intolerance verification"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.onsetDate",
        "path" : "EHDSAllergyIntolerance.onsetDate",
        "short" : "When allergy or intolerance was identified",
        "definition" : "When allergy or intolerance was identified",
        "requirements" : "MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.endDate",
        "path" : "EHDSAllergyIntolerance.endDate",
        "short" : "Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)",
        "definition" : "Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction",
        "path" : "EHDSAllergyIntolerance.reaction",
        "short" : "Adverse reaction events linked to exposure to substance.",
        "definition" : "Adverse reaction events linked to exposure to substance.",
        "requirements" : "ISO IPS (explicit), implicitly in eHN PS Guideline, MH@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.agentOrAllergen",
        "path" : "EHDSAllergyIntolerance.reaction.agentOrAllergen",
        "short" : "Specific substance or pharmaceutical product considered to be responsible for event",
        "definition" : "Identification of the specific substance (or pharmaceutical product) considered to be responsible for the \n  Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified  as the cause of the risk, but it must be consistent with it.  \n  It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.manifestation",
        "path" : "EHDSAllergyIntolerance.reaction.manifestation",
        "short" : "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema. (the clinical manifestation also gives information about the severity of the observed reaction).",
        "definition" : "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema. (the clinical manifestation also gives information about the severity of the observed reaction).",
        "requirements" : "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL. Cardinality in MyHealth@EU for this element, used here, is one manifestation per severity and onset, while the cardinality in FHIR IPS IG allows multiple manifestations per severity and onset.",
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
        "id" : "EHDSAllergyIntolerance.reaction.severity",
        "path" : "EHDSAllergyIntolerance.reaction.severity",
        "short" : "Severity of the clinical manifestation of the allergic reaction.",
        "definition" : "Severity of the clinical manifestation of the allergic reaction.",
        "requirements" : "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 reaction event severity"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.onset",
        "path" : "EHDSAllergyIntolerance.reaction.onset",
        "short" : "Date and time of the onset of the reaction",
        "definition" : "Date and time of the onset of the reaction",
        "requirements" : "The element is present in eHN PS GL. Element name and description is taken from eHN PS GL.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
