Profile: SpecimenEuObligations
Parent: SpecimenEu
Id: Specimen-obl-eu-lab
Title:    "Specimen: Obligations"
Description: "This profile defines obligations for Specimen in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )

// TEST OBLIGATIONS  ====>

* subject insert ObligationSet1
* type insert ObligationSet1
* request insert ObligationSet2
* collection insert ObligationSet1
  * bodySite insert ObligationSet1
  * extension[bodySite] insert ObligationSet2
* processing.additive insert ObligationSet2
* container insert ObligationSet1
  * type insert ObligationSet1  

