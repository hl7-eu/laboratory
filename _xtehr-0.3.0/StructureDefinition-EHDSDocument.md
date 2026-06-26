# Document model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document model**

## Logical Model: Document model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDocument | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSDocument |

 
Model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes. 

**Usages:**

* Derived from this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDocument.csv), [Excel](StructureDefinition-EHDSDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDocument",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDocument",
  "version" : "0.3.0",
  "name" : "EHDSDocument",
  "title" : "Document model",
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
  "description" : "Model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDocument",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDocument",
        "path" : "EHDSDocument",
        "short" : "Document model",
        "definition" : "Model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes."
      },
      {
        "id" : "EHDSDocument.header",
        "path" : "EHDSDocument.header",
        "short" : "Document header"
      },
      {
        "id" : "EHDSDocument.header.identifier",
        "path" : "EHDSDocument.header.identifier",
        "short" : "Unique identifier of the document",
        "min" : 1
      },
      {
        "id" : "EHDSDocument.header.author[x]",
        "path" : "EHDSDocument.header.author[x]",
        "short" : "Author(s) of the document",
        "min" : 1
      },
      {
        "id" : "EHDSDocument.header.date",
        "path" : "EHDSDocument.header.date",
        "short" : "Date of finalising/issuing the document",
        "min" : 1
      },
      {
        "id" : "EHDSDocument.header.status",
        "path" : "EHDSDocument.header.status",
        "short" : "Status of the document"
      },
      {
        "id" : "EHDSDocument.header.source",
        "path" : "EHDSDocument.header.source",
        "max" : "0"
      },
      {
        "id" : "EHDSDocument.header.documentType",
        "path" : "EHDSDocument.header.documentType",
        "short" : "Type of document at hand, e.g. 60591-5 Patient summary document.",
        "definition" : "Type of document at hand, e.g. 60591-5 Patient summary document.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC"
        }
      },
      {
        "id" : "EHDSDocument.header.documentTitle",
        "path" : "EHDSDocument.header.documentTitle",
        "short" : "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Examples: 'Laboratory Result Report', 'Patient Summary of Jane Green 10.12.2024'",
        "definition" : "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Examples: 'Laboratory Result Report', 'Patient Summary of Jane Green 10.12.2024'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.period",
        "path" : "EHDSDocument.header.period",
        "short" : "Time of service that is being documented",
        "definition" : "Time of service that is being documented",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.version",
        "path" : "EHDSDocument.header.version",
        "short" : "Business version of the document. The exact algorithm for versioning is decided by the producer/custodian",
        "definition" : "Business version of the document. The exact algorithm for versioning is decided by the producer/custodian",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.attestation",
        "path" : "EHDSDocument.header.attestation",
        "short" : "Document attestation details",
        "definition" : "Document attestation details",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.attestation.attester[x]",
        "path" : "EHDSDocument.header.attestation.attester[x]",
        "short" : "Attester who validated the document",
        "definition" : "Attester who validated the document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.attestation.datetime",
        "path" : "EHDSDocument.header.attestation.datetime",
        "short" : "Date and time of the approval of the document by Attester",
        "definition" : "Date and time of the approval of the document by Attester",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.legalAuthentication",
        "path" : "EHDSDocument.header.legalAuthentication",
        "short" : "Document legal authentication details",
        "definition" : "Document legal authentication details",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.legalAuthentication.legalAuthenticator[x]",
        "path" : "EHDSDocument.header.legalAuthentication.legalAuthenticator[x]",
        "short" : "The person or organisation taking responsibility for the medical content of the document (typically the person who signs it)",
        "definition" : "The person or organisation taking responsibility for the medical content of the document (typically the person who signs it)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.legalAuthentication.datetime",
        "path" : "EHDSDocument.header.legalAuthentication.datetime",
        "short" : "Date and time when the document was authorised",
        "definition" : "Date and time when the document was authorised",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDocument.header.eventType",
        "path" : "EHDSDocument.header.eventType",
        "short" : "Categorisation of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes.",
        "definition" : "Categorisation of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, SNOMED CT, dicom-cid-33-Modality"
        }
      },
      {
        "id" : "EHDSDocument.header.serviceSpecialty",
        "path" : "EHDSDocument.header.serviceSpecialty",
        "short" : "Additional details about where the content was created (e.g. clinical specialty)",
        "definition" : "Additional details about where the content was created (e.g. clinical specialty)",
        "min" : 0,
        "max" : "*",
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
        "id" : "EHDSDocument.header.custodian",
        "path" : "EHDSDocument.header.custodian",
        "short" : "Organisation that is in charge of maintaining the document/report.",
        "definition" : "Organisation that is in charge of maintaining the document/report.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSDocument.presentedForm",
        "path" : "EHDSDocument.presentedForm",
        "short" : "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document",
        "definition" : "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment"
          }
        ]
      }
    ]
  }
}

```
