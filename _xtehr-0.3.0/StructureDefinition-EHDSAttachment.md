# Attachment model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Attachment model**

## Logical Model: Attachment model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSAttachment |

 
This model is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type. 

**Usages:**

* Use this Logical Model: [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Document model](StructureDefinition-EHDSDocument.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md)... Show 2 more, [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAttachment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAttachment.csv), [Excel](StructureDefinition-EHDSAttachment.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAttachment",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment",
  "version" : "0.3.0",
  "name" : "EHDSAttachment",
  "title" : "Attachment model",
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
  "description" : "This model is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAttachment",
        "path" : "EHDSAttachment",
        "short" : "Attachment model",
        "definition" : "This model is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type."
      },
      {
        "id" : "EHDSAttachment.contentType",
        "path" : "EHDSAttachment.contentType",
        "short" : "Mime type of the content, with charset etc.",
        "definition" : "Mime type of the content, with charset etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP-13"
        }
      },
      {
        "id" : "EHDSAttachment.language",
        "path" : "EHDSAttachment.language",
        "short" : "Human language of the content",
        "definition" : "Human language of the content",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP 47"
        }
      },
      {
        "id" : "EHDSAttachment.data",
        "path" : "EHDSAttachment.data",
        "short" : "The actual data of the attachment - a sequence of bytes, base64 encoded.",
        "definition" : "The actual data of the attachment - a sequence of bytes, base64 encoded.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      },
      {
        "id" : "EHDSAttachment.url",
        "path" : "EHDSAttachment.url",
        "short" : "A location where the data can be accessed.",
        "definition" : "A location where the data can be accessed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSAttachment.size",
        "path" : "EHDSAttachment.size",
        "short" : "The number of bytes of data that make up this attachment (before base64 encoding).",
        "definition" : "The number of bytes of data that make up this attachment (before base64 encoding).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer64"
          }
        ]
      },
      {
        "id" : "EHDSAttachment.title",
        "path" : "EHDSAttachment.title",
        "short" : "A label or set of text to display in place of the data.",
        "definition" : "A label or set of text to display in place of the data.",
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
