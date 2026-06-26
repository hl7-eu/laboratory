# Endpoint model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint model**

## Logical Model: Endpoint model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSEndpoint |

 
Model covers technical details of an endpoint that can be used for electronic services 

**Usages:**

* Use this Logical Model: [Imaging study model](StructureDefinition-EHDSImagingStudy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEndpoint)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEndpoint.csv), [Excel](StructureDefinition-EHDSEndpoint.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEndpoint",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint",
  "version" : "0.3.0",
  "name" : "EHDSEndpoint",
  "title" : "Endpoint model",
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
  "description" : "Model covers technical details of an endpoint that can be used for electronic services",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEndpoint",
        "path" : "EHDSEndpoint",
        "short" : "Endpoint model",
        "definition" : "Model covers technical details of an endpoint that can be used for electronic services"
      },
      {
        "id" : "EHDSEndpoint.identifier",
        "path" : "EHDSEndpoint.identifier",
        "short" : "Identifier for the endpoint",
        "definition" : "Identifier for the endpoint",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.status",
        "path" : "EHDSEndpoint.status",
        "short" : "Status of the endpoint (e.g. active, limited).",
        "definition" : "Status of the endpoint (e.g. active, limited).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Endpoint Status"
        }
      },
      {
        "id" : "EHDSEndpoint.connectionType",
        "path" : "EHDSEndpoint.connectionType",
        "short" : "A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way.",
        "definition" : "A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.name",
        "path" : "EHDSEndpoint.name",
        "short" : "A friendly name that this endpoint can be referred to with.",
        "definition" : "A friendly name that this endpoint can be referred to with.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.managingOrganisation",
        "path" : "EHDSEndpoint.managingOrganisation",
        "short" : "The organisation that provides technical management services for this endpoint.",
        "definition" : "The organisation that provides technical management services for this endpoint.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload",
        "path" : "EHDSEndpoint.payload",
        "short" : "The set of payloads that are provided/available at this endpoint.",
        "definition" : "The set of payloads that are provided/available at this endpoint.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload.type",
        "path" : "EHDSEndpoint.payload.type",
        "short" : "The type of content that may be used at this endpoint.",
        "definition" : "The type of content that may be used at this endpoint.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload.mimeType",
        "path" : "EHDSEndpoint.payload.mimeType",
        "short" : "The mime type to send the payload in (e.g. application/fhir+xml, application/fhir+json).",
        "definition" : "The mime type to send the payload in (e.g. application/fhir+xml, application/fhir+json).",
        "min" : 0,
        "max" : "*",
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
        "id" : "EHDSEndpoint.payload.profileCanonical",
        "path" : "EHDSEndpoint.payload.profileCanonical",
        "short" : "The FHIR profile that is expected at this endpoint. It describes the resources that are handled, or even simply which resource types.",
        "definition" : "The FHIR profile that is expected at this endpoint. It describes the resources that are handled, or even simply which resource types.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload.profileUri",
        "path" : "EHDSEndpoint.payload.profileUri",
        "short" : "The profile (as a URI) that is expected at this endpoint when not represented using a FHIR profile.",
        "definition" : "The profile (as a URI) that is expected at this endpoint when not represented using a FHIR profile.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.address",
        "path" : "EHDSEndpoint.address",
        "short" : "The URI that describes the actual end-point to connect to.",
        "definition" : "The URI that describes the actual end-point to connect to.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.header",
        "path" : "EHDSEndpoint.header",
        "short" : "Additional headers / information to send as part of the notification. Usage depends on the channel type.",
        "definition" : "Additional headers / information to send as part of the notification. Usage depends on the channel type.",
        "min" : 0,
        "max" : "*",
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
