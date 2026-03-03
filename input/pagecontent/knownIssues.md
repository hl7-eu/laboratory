### Change requests not applied

* [SpecimenFeatureTypeR5 resolves to FHIR R4](https://jira.hl7.org/browse/FHIR-43200)
* [DiagnosticReportCompositionR5 resolves to FHIR R4](https://jira.hl7.org/browse/FHIR-43199)


Both items refer to preadopted R5 elements: the link points to an non-exiting element in R4 FHIR specifications.

Future version of the FHIR IG Publisher tool should fix this issue.

### Obligations

1. For each Actor defined an error is raised in the guide QA log.
This is due to a required used code, not present in the R4 value set version.
1. Obligations are only informative for this version of the guide. Further analysis are needed for consolidating them.

### Not endorsed canonical url


The [Laboratory Certified Reference Material](ValueSet-lab-certifiedRefMaterial-eu-lab.html) value set includes concepts that are derived from systems not having canonical urls assigned and/or confirmed by HL7 yet.

Adopters should use these urls being aware that they may change.