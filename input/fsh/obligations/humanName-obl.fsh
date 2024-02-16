Profile: HumanNameEuObligations
Parent: HumanNameEu
Id: HumanName-obl-eu-lab
Title:    "Human Name: Obligations"
Description: "This profile defines obligations for an human Patient name in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>

* family insert ObligationSet1
  * extension[fathersFamily] insert ObligationSet3
  * extension[mothersFamily] insert ObligationSet3
* given insert ObligationSet1