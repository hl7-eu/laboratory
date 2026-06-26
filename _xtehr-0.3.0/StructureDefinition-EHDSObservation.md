# Observation model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation model**

## Logical Model: Observation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation | *Version*:0.3.0 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSObservation |

 
Model for information about an oservation and its results. 

## Scope and Usage

**Observation** is one of the most complex and versatile structures in the logical model. It is designed to cover many different types of observations across a wide range of use cases, from sharing simple findings (e.g. skin color or pulse rate) to representing complex laboratory and medical test results.

The Observation model includes several elements that support complex scenarios in which an observation either:

* consists of several parts that are observed at the same time, under the same conditions, and need to be reported together, or
* is composed of multiple observations that may be performed at different times and under different conditions, but need to be logically grouped to express the intended clinical meaning or workflow.

To support this flexibility, the Observation model allows the use of additional **components** within a single observation and/or **relationships** of various types between different observations.

One of the crucial challenges is selecting the appropriate modeling approach to accurately express the intended semantic meaning for each complex observation scenario.

**Usages:**

* Derived from this Logical Model: [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md)
* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md)... Show 7 more, [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Observation model](StructureDefinition-EHDSObservation.md), [Patient summary model](StructureDefinition-EHDSPatientSummary.md), [Procedure model](StructureDefinition-EHDSProcedure.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSObservation.csv), [Excel](StructureDefinition-EHDSObservation.xlsx) 

### Notes:

#### When to use components

##### Semantic meaning of components

A **component** represents a structured sub-result that:

* is measured together with other components,
* shares the same observation context, and
* is not clinically meaningful on its own.

Components answer the question:

> **“What are the parts of this one observation?”**

All components share the same:

* subject,
* time of observation,
* performer,
* method.

Components:

* cannot stand alone without the parent observation, and
* are usually presented together.

##### Guidance for use

Use **components** if **all** of the following are true:

* the values are observed at the same moment,
* they are produced by the same observation act,
* they are meaningless or potentially misleading in isolation, and
* they are not expected to be referenced independently.

#### When to use relationships between observations

##### Semantic meaning of relationships

The Observation model allows observations to be related using the following relationship types:

* **hasMember** – to group multiple observations that belong to a common set or panel,
* **derivedFrom** – to indicate that one observation is calculated, inferred, or otherwise derived from one or more other observations,

Each related observation:

* has independent clinical meaning,
* may be observed or reported separately, and
* may be reused or referenced independently.

##### Guidance for use

Use **relationships between observations** when the related observations:

* have independent meaning,
* may have different observation times,
* may have different performers or methods, and
* can be referenced, queried, or interpreted independently.

#### Summary principles

* Use **components** when the parts are inseparable aspects of a single observation.
* Use **relationships between observations** when each observation has independent clinical meaning.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSObservation",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "version" : "0.3.0",
  "name" : "EHDSObservation",
  "title" : "Observation model",
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
  "description" : "Model for information about an oservation and its results.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSObservation",
        "path" : "EHDSObservation",
        "short" : "Observation model",
        "definition" : "Model for information about an oservation and its results."
      },
      {
        "id" : "EHDSObservation.header.subject",
        "path" : "EHDSObservation.header.subject",
        "short" : "Patient who is receiving health care. This patient might be different from the direct subject of the observation."
      },
      {
        "id" : "EHDSObservation.header.status",
        "path" : "EHDSObservation.header.status",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Observation status"
        }
      },
      {
        "id" : "EHDSObservation.header.directSubject[x]",
        "path" : "EHDSObservation.header.directSubject[x]",
        "short" : "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device. Additional types of subject may be allowed in implementations.",
        "definition" : "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device. Additional types of subject may be allowed in implementations.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSObservation.observationDate[x]",
        "path" : "EHDSObservation.observationDate[x]",
        "short" : "Clinically relevant time or time period for the observation",
        "definition" : "Clinically relevant time or time period for the observation",
        "min" : 1,
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
        "id" : "EHDSObservation.type",
        "path" : "EHDSObservation.type",
        "short" : "Observation type. Code and name representing the type of the observation using the agreed code systems.",
        "definition" : "Observation type. Code and name representing the type of the observation using the agreed code systems.",
        "min" : 1,
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
        "id" : "EHDSObservation.originalName",
        "path" : "EHDSObservation.originalName",
        "short" : "Original (conventional) name of the observation as used in the local laboratory or clinical system.",
        "definition" : "Original (conventional) name of the observation as used in the local laboratory or clinical system.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.method",
        "path" : "EHDSObservation.method",
        "short" : "Observation method",
        "definition" : "Observation method (measurement principle) to obtain the result.",
        "min" : 0,
        "max" : "1",
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
        "id" : "EHDSObservation.specimen",
        "path" : "EHDSObservation.specimen",
        "short" : "Specimen used for this observation.",
        "definition" : "Specimen used for this observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSObservation.order",
        "path" : "EHDSObservation.order",
        "short" : "Identifies order and order placer this observation belongs to",
        "definition" : "Identifies order and order placer this observation belongs to",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSObservation.performer[x]",
        "path" : "EHDSObservation.performer[x]",
        "short" : "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions.",
        "definition" : "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSObservation.bodySite",
        "path" : "EHDSObservation.bodySite",
        "short" : "Anatomic location and laterality where the observation was performed.",
        "definition" : "Anatomic location and laterality where the observation was performed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result",
        "path" : "EHDSObservation.result",
        "short" : "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "definition" : "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.value[x]",
        "path" : "EHDSObservation.result.value[x]",
        "short" : "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well.\r\n    Text result value should be used only if coded result value is not expected otherwise use valueCodeableConcept.text. For Quantity, Range and Ratio, result units of the measurement should be provided.",
        "definition" : "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well.\r\n    Text result value should be used only if coded result value is not expected otherwise use valueCodeableConcept.text. For Quantity, Range and Ratio, result units of the measurement should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          },
          {
            "code" : "Ratio"
          },
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units, SNOMED CT for coded results"
        }
      },
      {
        "id" : "EHDSObservation.result.uncertainty",
        "path" : "EHDSObservation.result.uncertainty",
        "short" : "Measurement uncertainty type and interval if needed.",
        "definition" : "Measurement uncertainty information about the observation result.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.uncertainty.value",
        "path" : "EHDSObservation.result.uncertainty.value",
        "short" : "The numerical value of the measurement uncertainty.",
        "definition" : "The numerical value of the measurement uncertainty.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.uncertainty.type",
        "path" : "EHDSObservation.result.uncertainty.type",
        "short" : "Probability Distribution Type for uncertainty",
        "definition" : "Probability Distribution Type for uncertainty",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 ProbabilityDistributionType"
        }
      },
      {
        "id" : "EHDSObservation.result.dataAbsentReason",
        "path" : "EHDSObservation.result.dataAbsentReason",
        "short" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "definition" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Data absent reason"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange",
        "path" : "EHDSObservation.referenceRange",
        "short" : "Reference range, multiple reference ranges of different types could by provided. Provides guide for interpretation of the result.",
        "definition" : "Reference range, multiple reference ranges of different types could by provided. Provides guide for interpretation of the result.",
        "comment" : "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.referenceRange.low",
        "path" : "EHDSObservation.referenceRange.low",
        "short" : "Low limit of the reference range.",
        "definition" : "Low limit of the reference range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange.high",
        "path" : "EHDSObservation.referenceRange.high",
        "short" : "High limit of the reference range.",
        "definition" : "High limit of the reference range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange.normalValue",
        "path" : "EHDSObservation.referenceRange.normalValue",
        "short" : "Normal value, if relevant for the reference range.",
        "definition" : "Normal value, if relevant for the reference range.",
        "min" : 0,
        "max" : "1",
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
        "id" : "EHDSObservation.referenceRange.type",
        "path" : "EHDSObservation.referenceRange.type",
        "short" : "Type of reference range.",
        "definition" : "Type of reference range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Observation Reference Range Meaning Codes"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange.appliesTo",
        "path" : "EHDSObservation.referenceRange.appliesTo",
        "short" : "Codes to indicate the target population this reference range applies to.",
        "definition" : "Codes to indicate the target population this reference range applies to. For example, a reference range may be based on the normal population or a particular sex or race. Multiple appliesTo are interpreted as an \\\"AND\\\" of the target populations.",
        "comment" : "Multiple appliesTo are interpreted as an \"AND\" of the target populations.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 v3-Race"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange.age",
        "path" : "EHDSObservation.referenceRange.age",
        "short" : "Age range to which this reference range applies if applicable.",
        "definition" : "Age range to which this reference range applies if applicable.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange.text",
        "path" : "EHDSObservation.referenceRange.text",
        "short" : "Text based reference range in an observation.",
        "definition" : "Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation. An example would be a reference value of \\\"Negative\\\" or a list or table of \\\"normals\\\".",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.interpretation",
        "path" : "EHDSObservation.interpretation",
        "short" : "Information about reference intervals and result interpretation.",
        "definition" : "Information about reference intervals and result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 ObservationInterpretation"
        }
      },
      {
        "id" : "EHDSObservation.note",
        "path" : "EHDSObservation.note",
        "short" : "Comments and narrative representation of the observation result and findings.",
        "definition" : "Comments and narrative representation of the observation result and findings.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component",
        "path" : "EHDSObservation.component",
        "short" : "Component in case the observation consists of multiple sub-observations (e.g. blood pressure).",
        "definition" : "Component in case the observation consists of multiple sub-observations (e.g. blood pressure).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.code",
        "path" : "EHDSObservation.component.code",
        "short" : "Code representing the observation using the agreed code systems.",
        "definition" : "Code representing the observation using the agreed code systems.",
        "min" : 1,
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
        "id" : "EHDSObservation.component.originalName",
        "path" : "EHDSObservation.component.originalName",
        "short" : "Original (user-friendly) name of the observation as used in the local laboratory or clinical system.",
        "definition" : "Original (user-friendly) name of the observation as used in the local laboratory or clinical system.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result",
        "path" : "EHDSObservation.component.result",
        "short" : "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "definition" : "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result.value[x]",
        "path" : "EHDSObservation.component.result.value[x]",
        "short" : "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well.\r\n      Text result value should be used only if coded result value is not expected otherwise use valueCodeableConcept.text. For Quantity, Range and Ratio, result units of the measurement should be provided.",
        "definition" : "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well.\r\n      Text result value should be used only if coded result value is not expected otherwise use valueCodeableConcept.text. For Quantity, Range and Ratio, result units of the measurement should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          },
          {
            "code" : "Ratio"
          },
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units, SNOMED CT for coded results"
        }
      },
      {
        "id" : "EHDSObservation.component.result.uncertainty",
        "path" : "EHDSObservation.component.result.uncertainty",
        "short" : "Measurement uncertainty type and interval if needed.",
        "definition" : "Measurement uncertainty information about the observation result.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result.uncertainty.value",
        "path" : "EHDSObservation.component.result.uncertainty.value",
        "short" : "The numerical value of the measurement uncertainty.",
        "definition" : "The numerical value of the measurement uncertainty.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result.uncertainty.type",
        "path" : "EHDSObservation.component.result.uncertainty.type",
        "short" : "Probability Distribution Type for uncertainty",
        "definition" : "Probability Distribution Type for uncertainty",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 ProbabilityDistributionType"
        }
      },
      {
        "id" : "EHDSObservation.component.result.dataAbsentReason",
        "path" : "EHDSObservation.component.result.dataAbsentReason",
        "short" : "Provides a reason why the expected value in the element component.value[x] is missing.",
        "definition" : "Provides a reason why the expected value in the element component.value[x] is missing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Data absent reason"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange",
        "path" : "EHDSObservation.component.referenceRange",
        "short" : "Reference range, multiple reference ranges of different types could by provided. Provides guide for interpretation of the result.",
        "definition" : "Reference range, multiple reference ranges of different types could by provided. Provides guide for interpretation of the result.",
        "comment" : "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.referenceRange.low",
        "path" : "EHDSObservation.component.referenceRange.low",
        "short" : "Low limit of the reference range.",
        "definition" : "Low limit of the reference range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange.high",
        "path" : "EHDSObservation.component.referenceRange.high",
        "short" : "High limit of the reference range.",
        "definition" : "High limit of the reference range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange.normalValue",
        "path" : "EHDSObservation.component.referenceRange.normalValue",
        "short" : "Normal value, if relevant for the reference range.",
        "definition" : "Normal value, if relevant for the reference range.",
        "min" : 0,
        "max" : "1",
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
        "id" : "EHDSObservation.component.referenceRange.type",
        "path" : "EHDSObservation.component.referenceRange.type",
        "short" : "Type of reference range.",
        "definition" : "Type of reference range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Observation Reference Range Meaning Codes"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange.appliesTo",
        "path" : "EHDSObservation.component.referenceRange.appliesTo",
        "short" : "Codes to indicate the target population this reference range applies to.",
        "definition" : "Codes to indicate the target population this reference range applies to. For example, a reference range may be based on the normal population or a particular sex or race. Multiple appliesTo are interpreted as an \\\"AND\\\" of the target populations.",
        "comment" : "Multiple appliesTo are interpreted as an \"AND\" of the target populations.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 v3-Race"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange.age",
        "path" : "EHDSObservation.component.referenceRange.age",
        "short" : "Age range to which this reference range applies if applicable.",
        "definition" : "Age range to which this reference range applies if applicable.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange.text",
        "path" : "EHDSObservation.component.referenceRange.text",
        "short" : "Text based reference range in an observation.",
        "definition" : "Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation. An example would be a reference value of \\\"Negative\\\" or a list or table of \\\"normals\\\".",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.interpretation",
        "path" : "EHDSObservation.component.interpretation",
        "short" : "Information about reference intervals and result interpretation.",
        "definition" : "Information about reference intervals and result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 ObservationInterpretation"
        }
      },
      {
        "id" : "EHDSObservation.derivedFrom[x]",
        "path" : "EHDSObservation.derivedFrom[x]",
        "short" : "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.",
        "definition" : "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImagingStudy"
          }
        ]
      },
      {
        "id" : "EHDSObservation.hasMember[x]",
        "path" : "EHDSObservation.hasMember[x]",
        "short" : "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.",
        "definition" : "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      }
    ]
  }
}

```
