Profile: PatientEuObligations
Parent: Patient
Id: Patient-obl-eu-lab
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )

// TEST OBLIGATIONS  ====>

// Obligations at the element level 
// Server obligations
* identifier insert ObligationActorAndCode($server, #handle) 
* name.given insert ObligationActorAndCode($server, #handle)  
* name.family insert ObligationActorAndCode($server, #handle)
* name.text insert ObligationActorAndCode($server, #handle)
* telecom insert ObligationActorAndCode($server, #handle)
* gender insert ObligationActorAndCode($server, #handle)
* birthDate insert ObligationActorAndCode($server, #handle)

// * contact insert ObligationActorAndCode($server, #handle)
* generalPractitioner insert ObligationActorAndCode($server, #handle)
* address insert ObligationActorAndCode($server, #handle)  

* identifier insert ObligationActorAndCode($server, #will-send) 
* name.given insert ObligationActorAndCode($server, #will-send)  
* name.family insert ObligationActorAndCode($server, #will-send)
* name.text insert ObligationActorAndCode($server, #can-send)
* telecom insert ObligationActorAndCode($server, #can-send)
* gender insert ObligationActorAndCode($server, #will-send)
* birthDate insert ObligationActorAndCode($server, #will-send)
* address insert ObligationActorAndCode($server, #will-send) 
// * contact insert ObligationActorAndCode($server, #can-send) 
// * generalPractitioner insert ObligationActorAndCode($server, #handle)

// Client Obligations

* insert ObligationActorAndCode($consumer, #handle)
* insert ObligationElement("identifier")
* insert ObligationElement("name.given")
* insert ObligationElement("name.family")
* insert ObligationElement("name.text")
* insert ObligationElement("telecom")
* insert ObligationElement("gender")
* insert ObligationElement("birthDate")
// * insert ObligationElement("contact")
* insert ObligationElement("address")
* insert ObligationElement("generalPractitioner")


* insert ObligationActorAndCode($creator, #will-send) 
* insert ObligationElement("identifier")
* insert ObligationElement("name.given")
* insert ObligationElement("name.family")
* insert ObligationElement("gender")
* insert ObligationElement("birthDate")
* insert ObligationElement("address")

* insert ObligationActorAndCode($creator, #can-send) 
* insert ObligationElement("name.text")
* insert ObligationElement("telecom")
// * insert ObligationElement("contact")

* insert ObligationActorAndCode($creator, #can-send) 
* insert ObligationElement("generalPractitioner")

