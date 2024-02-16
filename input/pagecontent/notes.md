### Implementation of laboratory panels

The current version of the HL7 Europe Laboratory Report Implementation Guide describes the use of Observations (with hasMember references) and a single instance of DiagnosticReport to support test panels and batteries (e.g. a Full Blood Count) rather than using DiagnosticReport as the grouping mechanism. We believe that the Observation hasMember approach offers a more flexible and intuitive method than using DiagnosticReport(s) for test groups, especially for complex reports such as example included in the base FHIR R4 specification:

[Diagnosticreport-example-ghp.xml - FHIR v4.0.1 (hl7.org)](https://hl7.org/fhir/R4/diagnosticreport-example-ghp.xml.html)

### Implementation of reflex tests

An optional R5 extension of the observation (Observation.triggeredBy-r5) has been pre-adopted in the current version of the HL7 Europe Laboratory Report Implementation Guide. We recommend to use this extension for implementation of the so-called reflex tests, i.e. additional test cases in which more than one test could be used to fulfil a given requirement (order or panel). In such case Observation.triggeredBy-r5.type should be set to #reflex.

### Representation of the microbiology tests

Microbiology tests are often being performed in consecutive steps, e.g. cultivation, possible quantification and subsequent sensitivity testing to antibiotics. Each analytical step depends on the result of the previous step or steps. Current version of the HL7 Europe Laboratory Report Implementation Guide recommends to use Observation.hasMember reference to express causality of the tests performed by the laboratory as shown in the [Microbiology Culture + Susceptibility](Bundle-BundleLabResultMicroCultureSusc.html).

### Sharing of previous result values

In some cases laboratory wants to share previous results for the same patient, same test, same method, and same measurement unit. In this case implementers should use supportingInfo extension of the Observation resource. Previous result will be expressed as a separate Observation and linked to current Observation through Observation.supportingInfo element.