# Organisation model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organisation model**

## Logical Model: Organisation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSOrganisation |

 
Model for information about an organisation 

**Usages:**

* Use this Logical Model: [DataSet model](StructureDefinition-EHDSDataSet.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Document model](StructureDefinition-EHDSDocument.md), [Encounter model](StructureDefinition-EHDSEncounter.md)... Show 11 more, [Endpoint model](StructureDefinition-EHDSEndpoint.md), [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Immunisation model](StructureDefinition-EHDSImmunisation.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Location model](StructureDefinition-EHDSLocation.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md), [Observation model](StructureDefinition-EHDSObservation.md), [Organisation model](StructureDefinition-EHDSOrganisation.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSOrganisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSOrganisation.csv), [Excel](StructureDefinition-EHDSOrganisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSOrganisation",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation",
  "version" : "0.3.0",
  "name" : "EHDSOrganisation",
  "title" : "Organisation model",
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
  "description" : "Model for information about an organisation",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSOrganisation",
        "path" : "EHDSOrganisation",
        "short" : "Organisation model",
        "definition" : "Model for information about an organisation"
      },
      {
        "id" : "EHDSOrganisation.identifier",
        "path" : "EHDSOrganisation.identifier",
        "short" : "Organisation identifier",
        "definition" : "Organisation identifier",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.type",
        "path" : "EHDSOrganisation.type",
        "short" : "Kind of organisation",
        "definition" : "Kind of organisation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 organisation_type"
        }
      },
      {
        "id" : "EHDSOrganisation.name",
        "path" : "EHDSOrganisation.name",
        "short" : "Organisation name",
        "definition" : "Organisation name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.address",
        "path" : "EHDSOrganisation.address",
        "short" : "Mailing or office addresses.",
        "definition" : "Mailing or office addresses.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.telecom",
        "path" : "EHDSOrganisation.telecom",
        "short" : "Telecommunication contact information (addresses) associated with an organisation, such as phone number, email, or messaging service.",
        "definition" : "Telecommunication contact information (addresses) associated with an organisation, such as phone number, email, or messaging service.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.partOf",
        "path" : "EHDSOrganisation.partOf",
        "short" : "The organisation of which this organisation forms a part",
        "definition" : "The organisation of which this organisation forms a part",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      }
    ]
  }
}

```
