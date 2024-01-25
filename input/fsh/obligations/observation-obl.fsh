Profile: ObservationEuObligations
Parent: ObservationResultsLaboratoryEu
Id: Observation-obl-eu-lab
Title:    "Observation: Obligations"
Description: "This profile defines obligations for Observation in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, draft )

* extension[analysis-time] insert ObligationSet1
* extension[supportingInfo] insert ObligationSet2
* extension[triggeredBy-r5] insert ObligationSet2
* extension[triggeredBy-r5].extension[observation] insert ObligationSet1
* extension[triggeredBy-r5].extension[type] insert ObligationSet1
* status insert ObligationSet1
* category insert ObligationSet1
* code insert ObligationSet1
* subject insert ObligationSet1
* effective[x] insert ObligationSet1
* effective[x].extension[data-absent-reason] insert ObligationSet1
* performer insert ObligationSet1
* performer.extension[performerFunction] insert ObligationSet2
* hasMember insert ObligationSet1
* value[x] insert ObligationSet1
* interpretation insert ObligationSet1
* method insert ObligationSet1
* specimen insert ObligationSet1
* component insert ObligationSet1
  * code insert ObligationSet1
  * value[x] insert ObligationSet1