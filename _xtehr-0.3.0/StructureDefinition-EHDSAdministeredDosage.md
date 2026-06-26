# Administered dosage model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Administered dosage model**

## Logical Model: Administered dosage model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosage | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSAdministeredDosage |

 
Model contains elements needed for registering an individual medication administration. It is derived from the full dosage regimen model in order to keep the consistency between the shared elements. 

**Usages:**

* Use this Logical Model: [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAdministeredDosage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAdministeredDosage.csv), [Excel](StructureDefinition-EHDSAdministeredDosage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAdministeredDosage",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosage",
  "version" : "0.3.0",
  "name" : "EHDSAdministeredDosage",
  "title" : "Administered dosage model",
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
  "description" : "Model contains elements needed for registering an individual medication administration. It is derived from the full dosage regimen model in order to keep the consistency between the shared elements.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosage",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAdministeredDosage",
        "path" : "EHDSAdministeredDosage",
        "short" : "Administered dosage model",
        "definition" : "Model contains elements needed for registering an individual medication administration. It is derived from the full dosage regimen model in order to keep the consistency between the shared elements."
      },
      {
        "id" : "EHDSAdministeredDosage.dosageDetails",
        "path" : "EHDSAdministeredDosage.dosageDetails",
        "max" : "1"
      },
      {
        "id" : "EHDSAdministeredDosage.dosageDetails.sequence",
        "path" : "EHDSAdministeredDosage.dosageDetails.sequence",
        "max" : "0"
      },
      {
        "id" : "EHDSAdministeredDosage.dosageDetails.repeat",
        "path" : "EHDSAdministeredDosage.dosageDetails.repeat",
        "max" : "0"
      },
      {
        "id" : "EHDSAdministeredDosage.dosageDetails.asNeeded",
        "path" : "EHDSAdministeredDosage.dosageDetails.asNeeded",
        "max" : "0"
      }
    ]
  }
}

```
