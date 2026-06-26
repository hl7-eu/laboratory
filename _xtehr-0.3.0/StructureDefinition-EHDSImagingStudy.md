# Imaging study model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Imaging study model**

## Logical Model: Imaging study model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImagingStudy | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSImagingStudy |

 
Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images. 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Observation model](StructureDefinition-EHDSObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSImagingStudy)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSImagingStudy.csv), [Excel](StructureDefinition-EHDSImagingStudy.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSImagingStudy",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImagingStudy",
  "version" : "0.3.0",
  "name" : "EHDSImagingStudy",
  "title" : "Imaging study model",
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
  "description" : "Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImagingStudy",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSImagingStudy",
        "path" : "EHDSImagingStudy",
        "short" : "Imaging study model",
        "definition" : "Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images."
      },
      {
        "id" : "EHDSImagingStudy.header.identifier",
        "path" : "EHDSImagingStudy.header.identifier",
        "short" : "Identifiers for the imaging study such as DICOM Study Instance UID. If one or more series elements are present in the imaging study, then there shall be one DICOM Study UID identifier.",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.1",
        "min" : 1
      },
      {
        "id" : "EHDSImagingStudy.header.author[x]",
        "path" : "EHDSImagingStudy.header.author[x]",
        "min" : 1
      },
      {
        "id" : "EHDSImagingStudy.header.date",
        "path" : "EHDSImagingStudy.header.date",
        "min" : 1
      },
      {
        "id" : "EHDSImagingStudy.header.source",
        "path" : "EHDSImagingStudy.header.source",
        "max" : "0"
      },
      {
        "id" : "EHDSImagingStudy.modality",
        "path" : "EHDSImagingStudy.modality",
        "short" : "All of the distinct values for series' modalities",
        "definition" : "All of the distinct values for series' modalities",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "DICOM CID 33 Modality"
        }
      },
      {
        "id" : "EHDSImagingStudy.bodySite",
        "path" : "EHDSImagingStudy.bodySite",
        "short" : "All of the distinct values for series' examined body parts.",
        "definition" : "All of the distinct values for series' examined body parts.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.encounter",
        "path" : "EHDSImagingStudy.encounter",
        "short" : "Reference to the encounter with which this imaging study is associated",
        "definition" : "Reference to the encounter with which this imaging study is associated",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.started",
        "path" : "EHDSImagingStudy.started",
        "short" : "Date and time the study started.",
        "definition" : "Date and time the study started.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.basedOn",
        "path" : "EHDSImagingStudy.basedOn",
        "short" : "References to the diagnostic requests that resulted in this imaging study being performed.",
        "definition" : "References to the diagnostic requests that resulted in this imaging study being performed.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.numberOfSeries",
        "path" : "EHDSImagingStudy.numberOfSeries",
        "short" : "Number of series in the study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present.",
        "definition" : "Number of series in the study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.numberOfInstances",
        "path" : "EHDSImagingStudy.numberOfInstances",
        "short" : "Number of service-object pair (SOP) instances in the study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.",
        "definition" : "Number of service-object pair (SOP) instances in the study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.description",
        "path" : "EHDSImagingStudy.description",
        "short" : "The imaging manager description of the study. Institution-generated description or classification of the study (component) performed.",
        "definition" : "The imaging manager description of the study. Institution-generated description or classification of the study (component) performed.",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.studyCustodian",
        "path" : "EHDSImagingStudy.studyCustodian",
        "short" : "Organisation name, address, contact information.",
        "definition" : "Organisation name, address, contact information.",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.studyEndpoint",
        "path" : "EHDSImagingStudy.studyEndpoint",
        "short" : "Study endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service.",
        "definition" : "Study endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series",
        "path" : "EHDSImagingStudy.series",
        "short" : "Series. Each study has one or more series of instances, but they may be absent when no series information needs to be conveyed",
        "definition" : "Series. Each study has one or more series of instances, but they may be absent when no series information needs to be conveyed",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.seriesUid",
        "path" : "EHDSImagingStudy.series.seriesUid",
        "short" : "DICOM Series Instance UID for the series",
        "definition" : "DICOM Series Instance UID for the series",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.2",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.number",
        "path" : "EHDSImagingStudy.series.number",
        "short" : "Numeric identifier of this series",
        "definition" : "Numeric identifier of this series",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.seriesModality",
        "path" : "EHDSImagingStudy.series.seriesModality",
        "short" : "Acquisition modality - the modality used for this series",
        "definition" : "Acquisition modality - the modality used for this series",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.3",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "DICOM CID 29 Acquisition Modality"
        }
      },
      {
        "id" : "EHDSImagingStudy.series.description",
        "path" : "EHDSImagingStudy.series.description",
        "short" : "A short human readable summary of the series",
        "definition" : "A short human readable summary of the series",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.numberOfInstances",
        "path" : "EHDSImagingStudy.series.numberOfInstances",
        "short" : "Number of series related instances",
        "definition" : "Number of series related instances",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.seriesEndpoint",
        "path" : "EHDSImagingStudy.series.seriesEndpoint",
        "short" : "Series endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service.",
        "definition" : "Series endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service.",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.6",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.bodySite",
        "path" : "EHDSImagingStudy.series.bodySite",
        "short" : "Body part (with laterality) examined",
        "definition" : "Body part (with laterality) examined",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.specimen",
        "path" : "EHDSImagingStudy.series.specimen",
        "short" : "Specimen imaged",
        "definition" : "Specimen imaged",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.started",
        "path" : "EHDSImagingStudy.series.started",
        "short" : "When the series started",
        "definition" : "When the series started",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries",
        "short" : "Each series has one or more instances, but they may be absent when no instance information needs to be conveyed",
        "definition" : "Each series has one or more instances, but they may be absent when no instance information needs to be conveyed",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.7",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.instanceTitle",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.instanceTitle",
        "short" : "Instance title that is the description of the instance.",
        "definition" : "Instance title that is the description of the instance.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.instanceUid",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.instanceUid",
        "short" : "DICOM SOP Instance UID",
        "definition" : "DICOM SOP Instance UID",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.7.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.sopClass",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.sopClass",
        "short" : "SOP class - DICOM class type",
        "definition" : "SOP class - DICOM class type",
        "requirements" : "DICOM KOS",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.instanceNumber",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.instanceNumber",
        "short" : "The number of this instance in the series",
        "definition" : "The number of this instance in the series",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.7.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.numberOfFrames",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.numberOfFrames",
        "short" : "The number of frames in a multiframe instance",
        "definition" : "The number of frames in a multiframe instance",
        "requirements" : "DICOM KOS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage",
        "short" : "List of key image flags with a reason why this image is selected as a key image, and reference to the Key Image Note that flags the image as significant within the Imaging Study Manifest",
        "definition" : "List of key image flags with a reason why this image is selected as a key image, and reference to the Key Image Note that flags the image as significant within the Imaging Study Manifest",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.flag",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.flag",
        "short" : "Reason for flagging the image as significant",
        "definition" : "Reason for flagging the image as significant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "DICOM PS3.16 in Table CID 7010"
        }
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.reason",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.reason",
        "short" : "Textual reason for flagging the image as significant",
        "definition" : "Textual reason for flagging the image as significant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.seriesUID",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.seriesUID",
        "short" : "Series instance UID for the series that contains the instances flagged as significant",
        "definition" : "Series instance UID for the series that contains the instances flagged as significant",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.instanceUID",
        "path" : "EHDSImagingStudy.series.instancesInTheSeries.keyImage.instanceUID",
        "short" : "SOP Instance UID for the instances flagged as significant by the Key Image Note object (DICOM KOS) that flags this image",
        "definition" : "SOP Instance UID for the instances flagged as significant by the Key Image Note object (DICOM KOS) that flags this image",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      }
    ]
  }
}

```
