Profile: ObservationResultsXpandh
Parent: Observation
Id: Observation-results-xpandh
Title:    "Observation Results"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary. This is the base profile from which the other results profiles are derived."
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."
* status = #final (exactly)
* category only $CodeableConcept-uv-ips
* code only $CodeableConcept-uv-ips
* code MS
* subject 1.. MS
* subject only Reference(PatientXpandh or Group or Device or Location)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension contains $SD-data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(PractitionerXpandh or PractitionerRoleXpandh or $Organization-uv-ips or CareTeam or PatientXpandh or RelatedPerson)
* value[x] MS
* hasMember only Reference(ObservationResultsXpandh or QuestionnaireResponse or MolecularSequence)
* component MS