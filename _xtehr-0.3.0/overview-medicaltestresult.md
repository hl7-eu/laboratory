# Medical Test Results and Laboratory Report - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* **Medical Test Results and Laboratory Report**

## Medical Test Results and Laboratory Report

### Information Models

#### Medical Test Results

Medical test results are communicated using [EHDSObservation model](StructureDefinition-EHDSObservation.md). This model is shared by all medical test results, and it is sufficient for communicating laboratory test results in non-laboratory context.

In specific laboratory context [EHDSLaboratoryObservation model](StructureDefinition-EHDSLaboratoryObservation.md) is used - it is a derivation from EHDSObservation and adds specific elements.

##### Laboratory Result Report

Laboratory result report could be divided into several parts: document header, body and optionally it could also have various attachments.

### Detail EHDS information models for Laboratory report

* [Laboratory Report Document](StructureDefinition-EHDSLaboratoryReport.md)
* [Laboratory Observation](StructureDefinition-EHDSLaboratoryObservation.md)

### FHIR Implementation Guide

Laboratory Report FHIR Implementation Guide has been published by HL7 Europe ([published version](https://hl7.eu/fhir/laboratory/index.html)).

MyHealth@EU has adopted HL7 Europe's FHIR IG for laboratory report crossborder service (see [crossborder adaption](https://fhir.ehdsi.eu/laboratory/)).

### Supporting Information

* [eHealth Network Guideline on Laboratory Results](https://health.ec.europa.eu/publications/ehn-laboratory-result-guidelines_en)
* [MyHealth@EU crossborder HL7 FHIR specification](https://fhir.ehdsi.eu/laboratory/)

