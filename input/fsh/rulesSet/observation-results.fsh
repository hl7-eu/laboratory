/* Profile: ObservationResultsEu
Parent: Observation
Id: Observation-results-eu-lab
Title:    "Observation Results"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary. This is the base profile from which the other results profiles are derived."
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary." */
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
 
RuleSet: ObservationResultsEu
// * insert SetFmmandStatusRule ( 0, draft )
// * status = #final (exactly) // is this still true ?
* status ^short = "Status of this observation (e.g. preliminary, final,...)"
* category only $CodeableConcept-uv-ips
* code only $CodeableConcept-uv-ips
// * code MS
* subject 1.. 
* subject only Reference(Patient or PatientEu or Group or Device or Location)
* subject.reference 1.. 
* effective[x] 1..
* effective[x] only dateTime or Period
* effective[x].extension contains $SD-data-absent-reason named data-absent-reason 0..1
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(PractitionerEu or PractitionerRoleEu or $Organization-uv-ips or CareTeam or PatientEu or RelatedPerson)
// * value[x] MS
// removed circular reference
// * hasMember only Reference(ObservationResultsEu or Observation or QuestionnaireResponse or MolecularSequence)
* hasMember only Reference(Observation or QuestionnaireResponse or MolecularSequence)
* component ^short = "Laboratory result"