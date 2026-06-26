
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


With the future introduction of the [proposed EHDS regulation](https://health.ec.europa.eu/publications/proposal-regulation-European-health-data-space_en) the adoption of a common format for the sharing for these "priority domains"  will not be limited to the cross border services, but it will be likely required to be supported by any EHR in Europe.

Note 1: this "common format" is also known as the European EHR exchange format (E-EHRxF)

### Why this Guide and Why Now

As highlighted in the previous figure, a set of EU driven (XpanDH, JA-09, xShare..) and national initiatives were planned or ongoing. The risk of potentially not aligned national choices was not negligible.

Considering this landscape, HL7 Europe recognized the need of promoting a Standardization activity at the European level with the purpose of:
- Facilitating the harmonization among the national initiatives
- Supporting the development of the future European-EHRxF

Note: the proof-of-concept guide developed by the X-eHealth project has been used as starting point. HL7 Europe co-lead with IHE Europe the X-eHealth specification work package.


### Towards a Coherent Ecosystem of Laboratory Report IGs

The vision inspiring this project was that of contributing to the creation of a coherent - **not competing** - ecosystem of FHIR IGs for the Laboratory Report. System including global, regional and national standard and project specific guides, each maintaining its own governance rules and meeting its own specific scope and jurisdictional requirements **without losing cross-consistency**.

This will:
- enlarge the stakeholders engagement and consensus
- reduce the duplication of work
- improve the overall quality of the guides

<div>
<p></p>
<img src="layered-specs.png"  alt="Vision: Layered Specification" width="60%">
<p></p>
<p>Figure 2 - Vision: Layered Specification</p>
<p></p>
</div>

The following figure shows how this vision is going to be realized: some current national and European developments are in fact already referring to this guide.

<div>
<p></p>
<img src="guide-relationship.png"  alt="Vision: relatioship among Lab Report IGs" width="60%">
<p></p>
<p>Figure 3 - Implementing the vision</p>
<p></p>
</div>