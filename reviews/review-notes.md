# Review notes: HL7 Europe Laboratory Report

Decisions taken during the consistency reviews. Items listed here are not raised again as open
findings; when a report finding matches one of them, it goes under *Won't fix (accepted)*.

## 2.1.0

- **`LabPresenceAbsenceEuVs` stays unbound.** FHIR-59528 proposes to restore its additional
  binding after the STU release; `knownIssues.md` documents the gap (`788642e`). Report id 3.4-1.
- **Example data corrections are tracked in GitHub issues #146 to #154** and are addressed after
  2.1.0, not as release work. Report ids 5-1 to 5-27. This does not cover validation errors in
  the QA output, which are release blockers (e.g. 1-6).
- **`background.md` is left as it is for 2.1.0** (MyHealth@EU wave 8, timeline figure, link to
  the EHDS proposal). A Liquid comment in the page records what to update (`09fcaa0`).
  Report id 6.4-1.
- **Missing Bundle entry slices** (DocumentReference, RelatedPerson, Substance,
  BiologicallyDerivedProduct, Group, CareTeam) are deferred to 2.2.0, because new slices change
  what the Bundle profile validates. `knownIssues.md` documents the gap (`3a36ac3`); FHIR-59530.
  Report id 3.1-4.

## Conventions

- Pages use American spelling, except "cancelled", which matches the FHIR code (report 6.1-1).
- Line numbers in the 2.1.0 report refer to commit `a452eb5` unless an item names a later commit.
- The publication build must use the IPS 2.0.1 package from packages2.fhir.org or hl7.org; the
  copy on packages.fhir.org contains `file://` links (report 1-4 / 7-1).
