# Medication model - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication model**

## Logical Model: Medication model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication | *Version*:0.3.0 |
| Active as of 2026-02-06 | *Computable Name*:EHDSMedication |

 
Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries. 

**Usages:**

* Use this Logical Model: [Immunisation model](StructureDefinition-EHDSImmunisation.md), [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md)... Show 2 more, [Medication use model](StructureDefinition-EHDSMedicationUse.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedication.csv), [Excel](StructureDefinition-EHDSMedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedication",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "version" : "0.3.0",
  "name" : "EHDSMedication",
  "title" : "Medication model",
  "status" : "active",
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
  "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedication",
        "path" : "EHDSMedication",
        "short" : "Medication model",
        "definition" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries."
      },
      {
        "id" : "EHDSMedication.identifyingCode[x]",
        "path" : "EHDSMedication.identifyingCode[x]",
        "short" : "An identifier (e.g. from EMA SPOR PMS or national registry) or a code (e.g. from SNOMED CT or national code system) for the product (virtual product, branded product, or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities. An identifier might not exist e.g. for substance-based prescriptions.",
        "definition" : "An identifier (e.g. from EMA SPOR PMS or national registry) or a code (e.g. from SNOMED CT or national code system) for the product (virtual product, branded product, or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities. An identifier might not exist e.g. for substance-based prescriptions.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedication.classification",
        "path" : "EHDSMedication.classification",
        "short" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
        "definition" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "WHO ATC"
        }
      },
      {
        "id" : "EHDSMedication.productName",
        "path" : "EHDSMedication.productName",
        "short" : "Current trade name (authorised name) of the product. When medication is specified by a CodeableConcept, the name may be omitted when available as the display name of the concept.",
        "definition" : "Current trade name (authorised name) of the product. When medication is specified by a CodeableConcept, the name may be omitted when available as the display name of the concept.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder",
        "path" : "EHDSMedication.marketingAuthorisationHolder",
        "short" : "Marketing authorisation holder of the medicinal product. Relevant for identifying the exact product. If the product does not have a marketing authorisation, the manufacturer information may be used.",
        "definition" : "Marketing authorisation holder of the medicinal product. Relevant for identifying the exact product. If the product does not have a marketing authorisation, the manufacturer information may be used.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder.organisationName",
        "path" : "EHDSMedication.marketingAuthorisationHolder.organisationName",
        "short" : "Name of the organisation holding the authorisation for marketing/manufacturing",
        "definition" : "Name of the organisation holding the authorisation for marketing/manufacturing",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder.organisationIdentifier",
        "path" : "EHDSMedication.marketingAuthorisationHolder.organisationIdentifier",
        "short" : "Identifier of the organisation and/or its physical location",
        "definition" : "Identifier of the organisation and/or its physical location",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedication.doseForm",
        "path" : "EHDSMedication.doseForm",
        "short" : "Dose form at the package level (e.g. authorised dose form), corresponding to IDMP Combined Pharmaceutical Dose Form (this includes terms from EDQM Combination Pack or Combined Dose Form lists). Dose form for a single package item is defined in item.doseForm.",
        "definition" : "Dose form at the package level (e.g. authorised dose form), corresponding to IDMP Combined Pharmaceutical Dose Form (this includes terms from EDQM Combination Pack or Combined Dose Form lists). Dose form for a single package item is defined in item.doseForm.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedication.description",
        "path" : "EHDSMedication.description",
        "short" : "Textual description of the product, e.g. including package description.",
        "definition" : "Textual description of the product, e.g. including package description.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units of measure. EDQM Standard Terms for units of presentation."
        }
      },
      {
        "id" : "EHDSMedication.item",
        "path" : "EHDSMedication.item",
        "short" : "A medication item. For combination packs, this can be multiple manufactured items with each item having its own dose form and ingredients+strengths defined",
        "definition" : "A medication item. For combination packs, this can be multiple manufactured items with each item having its own dose form and ingredients+strengths defined",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.doseForm",
        "path" : "EHDSMedication.item.doseForm",
        "short" : "Administrable or manufactured item dose form, depending on the type of medication definition. This should not include combined dose forms.",
        "definition" : "Administrable or manufactured item dose form, depending on the type of medication definition. This should not include combined dose forms.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedication.item.ingredient",
        "path" : "EHDSMedication.item.ingredient",
        "short" : "Ingredients",
        "definition" : "Ingredients",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.isActive",
        "path" : "EHDSMedication.item.ingredient.isActive",
        "short" : "Marks whether the ingredient is considered an active ingredient. Excipients are typically not needed, and by default only active ingredients are expected.",
        "definition" : "Marks whether the ingredient is considered an active ingredient. Excipients are typically not needed, and by default only active ingredients are expected.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.substance",
        "path" : "EHDSMedication.item.ingredient.substance",
        "short" : "Substance",
        "definition" : "Substance",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SPOR SMS"
        }
      },
      {
        "id" : "EHDSMedication.item.ingredient.strengthInfo",
        "path" : "EHDSMedication.item.ingredient.strengthInfo",
        "short" : "Strength of the product - amount of substance per unit",
        "definition" : "Strength of the product - amount of substance per unit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.strengthInfo.strength",
        "path" : "EHDSMedication.item.ingredient.strengthInfo.strength",
        "short" : "Concentration or presentation strength, e.g '100 mg/1 ml' or '500 mg per 1 tablet'",
        "definition" : "Concentration or presentation strength, e.g '100 mg/1 ml' or '500 mg per 1 tablet'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
        "path" : "EHDSMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
        "short" : "Substance that the strength refers to, especially when different from .item.strength.substance",
        "definition" : "Substance that the strength refers to, especially when different from .item.strength.substance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SPOR SMS"
        }
      },
      {
        "id" : "EHDSMedication.item.unitOfPresentation",
        "path" : "EHDSMedication.item.unitOfPresentation",
        "short" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
        "definition" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedication.item.containedQuantity",
        "path" : "EHDSMedication.item.containedQuantity",
        "short" : "Manufactured item quantity per one item (3 ml / 1 vial)",
        "definition" : "Manufactured item quantity per one item (3 ml / 1 vial)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.amount",
        "path" : "EHDSMedication.item.amount",
        "short" : "Number of such items in this product (5 vials). The combined amount of all items will be considered to be the total package size.",
        "definition" : "Number of such items in this product (5 vials). The combined amount of all items will be considered to be the total package size.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units of measure. EDQM Standard Terms for units of presentation."
        }
      },
      {
        "id" : "EHDSMedication.item.packageType",
        "path" : "EHDSMedication.item.packageType",
        "short" : "Type of package of the medication item",
        "definition" : "Type of package of the medication item",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms for packaging."
        }
      },
      {
        "id" : "EHDSMedication.device",
        "path" : "EHDSMedication.device",
        "short" : "Administration device included in the product. Devices that are not inside the medication package are excluded.",
        "definition" : "Administration device included in the product. Devices that are not inside the medication package are excluded.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device.deviceQuantity",
        "path" : "EHDSMedication.device.deviceQuantity",
        "short" : "Number of such devices",
        "definition" : "Number of such devices",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device.device[x]",
        "path" : "EHDSMedication.device.device[x]",
        "short" : "Device coded",
        "definition" : "Device coded",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSMedication.characteristic",
        "path" : "EHDSMedication.characteristic",
        "short" : "Additional features of the product (e.g. reimbursable, sugar-free, easy-open cap, score-lined). It is expected that implementers will define a valueset supporting their use cases.",
        "definition" : "Additional features of the product (e.g. reimbursable, sugar-free, easy-open cap, score-lined). It is expected that implementers will define a valueset supporting their use cases.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.characteristic.type",
        "path" : "EHDSMedication.characteristic.type",
        "short" : "A code expressing the type of characteristic.",
        "definition" : "A code expressing the type of characteristic.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedication.characteristic.value[x]",
        "path" : "EHDSMedication.characteristic.value[x]",
        "short" : "Description of the characteristic value.",
        "definition" : "Description of the characteristic value.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          },
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "dateTime"
          },
          {
            "code" : "integer"
          },
          {
            "code" : "decimal"
          },
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch",
        "path" : "EHDSMedication.batch",
        "short" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
        "definition" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch.lotNumber",
        "path" : "EHDSMedication.batch.lotNumber",
        "short" : "Batch identifier of the medicinal product.",
        "definition" : "Batch identifier of the medicinal product.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch.expirationDate",
        "path" : "EHDSMedication.batch.expirationDate",
        "short" : "Batch expiration date of the medicinal product.",
        "definition" : "Batch expiration date of the medicinal product.",
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
