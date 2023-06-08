
<blockquote class="stu-note">
<p>
    Work in progress
</p>
</blockquote>

### The European context

The history of European collaboration in the health space is long and prior to the start of the epSOS project (2008-2014) intended to work on the development, the pilot and the evaluation of the first cross-border eHealth service. This long journey brought to the first operational cross-border services for Patient Summary and ePrescription based on the HL7 CDA standards in 2019 (add the link to the ehdsi specs), initially  activated in few countries and progressivly extended on a voluntary basis. These services was initially identified as EHDSI (under CEF), recently renamed [MyHealth@EU](https://health.ec.europa.eu/ehealth-digital-health-and-care/electronic-cross-border-health-services_en).

A set of new "priorities" services, beyond Patient Summary and ePrescription, have been identified by the European commission to be progressivly implemented for the cross-border services. Namely:
- Laboratory Report
- Images and Imaging Report
- (Hospital) Discharge Report

All the new services will be based on HL7 FHIR.

The Laboratory Report is planned to be the first implemented new service and foreseen for MyHealth@EU wave 8 (2024-25).

The following picture provides a planning overview for the new cross-border services.
<div>
<img src="eu-projects-timeline.png"  alt="Project Timeline" width="60%">
</div>
With the future introduction of the [proposed EDSH regulation](https://health.ec.europa.eu/publications/proposal-regulation-european-health-data-space_en) the adoption of a common format for the sharing for these "priority doamins"  will not be limited to the cross border services, but it will be likely required to be supported by any EHR in Europe.

Note 1: this "common format" is also known as the European EHR exchange format (E-EHRxF)

### Why this guide and why now

As highlighted in the previous figure, the EU driven initiatives are and will be developed in parallel with other National, already on-going, activities. Even thought the European Commission funded the [XeHealth project](https://www.x-ehealth.eu/) for working on a proposal for the E-EHRxF, and other EU initiatives are planned (XpanDH, JA-09,..), the risk of potentially not aligned national choices is not neglibeable.

Considering this landscape, HL7 Europe, co-leading with IHE Europe the specification work package in XeHealth, has identified the need of promoting a Standardization activity at the European level with the purpose of:
- Facilitating the harmonization among the national initiatives
- Supporting the development of the future European-EHRxF

Starting from the proof of concept guide developed by the XeHealth project.

The intent isin fact that of promoting for this and future guide a layered approach enabling European and Global standardization to facilitate the work done at the national and European levels.
<div>
<img src="layered-specs.png"  alt="Vision: Layered Specification" width="60%">
</div>
The following figure shows the "goal" relationships between this guide and those that will be defined for the European and National services. The arrows among the guides represent a logical consistency, not necessarly a formal inheritance between guides.
<div>
<img src="guide-relationship.png"  alt="Vision: relatioship among Lab Report IGs" width="60%">
</div>


