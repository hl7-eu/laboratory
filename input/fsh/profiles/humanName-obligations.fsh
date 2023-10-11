/* RulesSet ObligationSet1:
  * insert ObligationActorAndCode($server, #handle)
  * insert ObligationActorAndCode($consumer, #handle)
  * insert ObligationActorAndCode($server, #will-send)
  * insert ObligationActorAndCode($creator, #will-send)
  * insert ObligationActorAndCode($creator, #populate) */

RuleSet: ObligationSet3
* insert ObligationActorAndCode($server, #handle)
* insert ObligationActorAndCode($consumer, #handle)
* insert ObligationActorAndCode($server, #can-send)
* insert ObligationActorAndCode($creator, #can-send)
* insert ObligationActorAndCode($creator, #can-populate) 

Profile: HumanNameEuObligations
Parent: HumanNameEu
Id: HumanName-obl-eu-lab
Title:    "Human Name: Obligations"
Description: "This profile defines obligations for an human Patient name in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )

// TEST OBLIGATIONS  ====>

* family insert ObligationSet1
  * extension[fathersFamily] insert ObligationSet3
  * extension[mothersFamily] insert ObligationSet3
* given insert ObligationSet1