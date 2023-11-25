
### The European context

The history of European collaboration in the health space is long, and prior to the start of the epSOS project (2008-2014), that was intended to work on the development, the pilot and the evaluation of the first cross-border eHealth service.

This long journey resulted in the first operational cross-border services for Patient Summary and ePrescription based on the HL7 CDA R2.0 standard in 2019 ( see [here](https://art-decor.ehdsi.eu/art-decor/decor-templates--epsos-) for the current MyHealth@EU CDA-based specifications), initially activated in a few countries and progressively extended on a voluntary basis. 

These services was initially identified as EHDSI (under CEF), recently renamed [MyHealth@EU](https://health.ec.europa.eu/ehealth-digital-health-and-care/electronic-cross-border-health-services_en).

A set of new "priorities" services, beyond Patient Summary and ePrescription, have been identified by the European commission to be progressively implemented for the cross-border services. Namely:
- Laboratory Report
- Images and Imaging Report
- (Hospital) Discharge Report

All the new services will be based on HL7 FHIR.

The Laboratory Report is planned to be the first implemented new service and foreseen for MyHealth@EU wave 8 (2024-25).

The following picture provides a planning overview for the new cross-border services as of at the date of this publication.

<div>
<img src="eu-projects-timeline.png"  alt="Project Timeline" width="60%">
<p>Figure 1 - Projects Timeline for the E-EHRxF</p>
<p></p>
</div>


With the future introduction of the [proposed EDSH regulation](https://health.ec.europa.eu/publications/proposal-regulation-european-health-data-space_en) the adoption of a common format for the sharing for these "priority domains"  will not be limited to the cross border services, but it will be likely required to be supported by any EHR in Europe.

Note 1: this "common format" is also known as the European EHR exchange format (E-EHRxF)

### Why this guide and why now

As highlighted in the previous figure, the EU driven initiatives are and will be developed in parallel with other National, already on-going, activities. Even Even though the European Commission funded the [X-eHealth project](https://www.x-ehealth.eu/) for working on a proposal for the E-EHRxF, and other EU initiatives are planned or ongoing (XpanDH, JA-09, Xshare..), the risk of potentially not aligned national choices is not negligeable.

Considering this landscape, HL7 Europe, co-leading with IHE Europe the specification work package in X-eHealth, has identified the need of promoting a Standardization activity at the European level with the purpose of:
- Facilitating the harmonization among the national initiatives
- Supporting the development of the future European-EHRxF

Starting from the proof-of-concept guide developed by the X-eHealth project.

The intent is in fact that of *promoting for this and future guide a layered approach* enabling European and Global standardization to facilitate the work done at the national and European levels.
<div>
<img src="layered-specs.png"  alt="Vision: Layered Specification" width="60%">
<p>Figure 2 - Vision: Layered Specification</p>
<p></p>
</div>

The following figure shows the "goal" relationships between this guide and those that will be defined for the European and National services. The arrows among the guides represent a logical consistency, not necessarily a formal inheritance between guides.

<div>
<img src="guide-relationship.png"  alt="Vision: relatioship among Lab Report IGs" width="60%">
<p>Figure 3 - Vision: relatioship among Lab Report IGs</p>
<p></p>
</div>

### Towards a coherent ecosystem of Lab Report IGs

The proposed approach aims to create a coherent - **not competing** - ecosystem of FHIR IGs for the Laboratory Report, each of them maintaining their governance rules and serving their specific scopes and jurisdictional requirements **without losing cross-consistency**.

This will:
- enlarge the stakeholders engagement and consensus
- reduce the duplication of work
- improve the overall quality of the guides



