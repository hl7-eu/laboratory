# Laboratory report model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratory report model**

## Logical Model: Laboratory report model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryReport | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSLaboratoryReport |

 
Laboratory result report model. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSLaboratoryReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSLaboratoryReport.csv), [Excel](StructureDefinition-EHDSLaboratoryReport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSLaboratoryReport",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryReport",
  "version" : "0.3.0",
  "name" : "EHDSLaboratoryReport",
  "title" : "Laboratory report model",
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
  "description" : "Laboratory result report model.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryReport",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDocument",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSLaboratoryReport",
        "path" : "EHDSLaboratoryReport",
        "short" : "Laboratory report model",
        "definition" : "Laboratory result report model."
      },
      {
        "id" : "EHDSLaboratoryReport.header",
        "path" : "EHDSLaboratoryReport.header",
        "short" : "Laboratory Report header"
      },
      {
        "id" : "EHDSLaboratoryReport.header.author[x]",
        "path" : "EHDSLaboratoryReport.header.author[x]",
        "short" : "Author(s) by whom the laboratory result report was authored.",
        "definition" : "Author(s) by whom the laboratory result report was authored. Multiple authors could be provided.",
        "comment" : "Author of the laboratory report could be either a health professional who authored the report, laboratory itself or laboratory information system. Author information is the only mandatory element of the laboratory report header. As such, each laboratory shall be able to provide at least the author information."
      },
      {
        "id" : "EHDSLaboratoryReport.header.attestation.attester[x]",
        "path" : "EHDSLaboratoryReport.header.attestation.attester[x]",
        "definition" : "Attester who validated laboratory result report. Multiple attesters could be provided.",
        "comment" : "Attestation (validation) of the laboratory report content is the usual step before legal authentication. Attestation could be provided by e.g. the laboratory specialist or the laboratory information system based on internal rules of the laboratory."
      },
      {
        "id" : "EHDSLaboratoryReport.header.legalAuthentication.legalAuthenticator[x]",
        "path" : "EHDSLaboratoryReport.header.legalAuthentication.legalAuthenticator[x]",
        "definition" : "The person or organization taking responsibility for the medical content of the document",
        "comment" : "Legal authentication of the laboratory report is the usual step after attestation. Legal authentication could be provided by e.g. the head of the laboratory or the laboratory organization itself."
      },
      {
        "id" : "EHDSLaboratoryReport.header.eventType",
        "path" : "EHDSLaboratoryReport.header.eventType",
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSLaboratoryReport.intendedRecipient[x]",
        "path" : "EHDSLaboratoryReport.intendedRecipient[x]",
        "short" : "Intended recipient",
        "definition" : "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body",
        "path" : "EHDSLaboratoryReport.body",
        "short" : "Laboratory Report structured body",
        "definition" : "Laboratory Report structured body",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation",
        "path" : "EHDSLaboratoryReport.body.orderInformation",
        "short" : "Order Information (Laboratory Result Report could respond to multiple test orders)",
        "definition" : "Order Information (Laboratory Result Report could respond to multiple test orders)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderId",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderId",
        "short" : "An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders.",
        "definition" : "An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderDateAndTime",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderDateAndTime",
        "short" : "Date and time of the order placement.",
        "definition" : "Date and time of the order placement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderPlacer[x]",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderPlacer[x]",
        "short" : "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself.",
        "definition" : "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderReason[x]",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderReason[x]",
        "short" : "An explanation or justification for why this service is being requested in coded form.",
        "definition" : "An explanation or justification for why this service is being requested in coded form.",
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
            "code" : "string"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.clinicalQuestion",
        "path" : "EHDSLaboratoryReport.body.orderInformation.clinicalQuestion",
        "short" : "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation.",
        "definition" : "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation",
        "path" : "EHDSLaboratoryReport.body.supportingInformation",
        "short" : "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements.",
        "definition" : "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.observation",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.observation",
        "short" : "Clinical findings and other observations.",
        "definition" : "Clinical findings and other observations.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.condition",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.condition",
        "short" : "Condition that may influence the service or result interpretation.",
        "definition" : "Condition that may influence the service or result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.medicationAdministration",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.medicationAdministration",
        "short" : "Medication administered before ordering the service.",
        "definition" : "Medication administered before ordering the service.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.sexForClinicalUse",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.sexForClinicalUse",
        "short" : "A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population",
        "definition" : "A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 sex-parameter-for-clinical-use"
        }
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.vaccination",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.vaccination",
        "short" : "Vaccination history of the patient.",
        "definition" : "Vaccination history of the patient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.otherSupportingInformation",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.otherSupportingInformation",
        "short" : "Any other type of relevant supporting information",
        "definition" : "Any other type of relevant supporting information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Resource"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.specimen",
        "path" : "EHDSLaboratoryReport.body.specimen",
        "short" : "Specimen information",
        "definition" : "Specimen information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.serviceRequest",
        "path" : "EHDSLaboratoryReport.body.serviceRequest",
        "short" : "Specification of requested service or services",
        "definition" : "Specification of requested service or services",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.resultData",
        "path" : "EHDSLaboratoryReport.body.resultData",
        "short" : "Laboratory report result data",
        "definition" : "Laboratory report result data",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.resultData.commentsInterpretationAndRecommendations",
        "path" : "EHDSLaboratoryReport.body.resultData.commentsInterpretationAndRecommendations",
        "short" : "Narrative Comments, such as a textual interpretation or advice accompanying the result report, for example.",
        "definition" : "Narrative Comments, such as a textual interpretation or advice accompanying the result report, for example.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.resultData.laboratoryTestResults",
        "path" : "EHDSLaboratoryReport.body.resultData.laboratoryTestResults",
        "short" : "Observation details (report could consist of multiple observations)",
        "definition" : "Observation details (report could consist of multiple observations)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.attachments",
        "path" : "EHDSLaboratoryReport.attachments",
        "short" : "Report attachments",
        "definition" : "Report attachments",
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
