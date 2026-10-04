### Bundle entries without a slice

The [Bundle profile](StructureDefinition-Bundle-eu-lab.html) defines entry slices for the main resources of a report, but none for some resource types that the profiles of this guide reference: DocumentReference (`DiagnosticReport.media`), RelatedPerson (specimen collector and specimen source), Substance (specimen source, specimen additive and result focus), BiologicallyDerivedProduct (specimen source and result focus), Group and CareTeam. The slicing is open, so these resources can be included in the document, but the Bundle profile does not check them against a profile. Slices for them are planned for a later version.

### Presence and absence value set not bound

`LabPresenceAbsenceEuVs` contains the codes of the MyHealth@EU value set eHDSIPresenceAbsence. Since the additional bindings on the result value were removed (FHIR-57048), no element is bound to it, and 13 of its codes, such as Normal, Reactive and Equivocal, are not in the IPS value set bound to `Observation.value[x]`. As that binding is preferred, these codes can still be used. [FHIR-59528](https://jira.hl7.org/browse/FHIR-59528) proposes to restore the binding in a later version.

### Not endorsed canonical url


The [Laboratory Certified Reference Material](ValueSet-lab-certifiedRefMaterial-eu-lab.html) value set includes concepts that are derived from systems not having canonical urls assigned and/or confirmed by HL7 yet.

Adopters should use these urls being aware that they may change.