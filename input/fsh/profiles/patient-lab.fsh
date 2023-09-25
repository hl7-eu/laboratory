Profile: PatientEu
Parent: $Patient-uv-ips
Id: Patient-eu-lab
Title:    "Patient: Identified Person"
Description: "This profile defines how to represent an identified human Patient in FHIR for the purpose of this guide."
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


* identifier ^short = "Patient identifiers"

* name 1..*
* name only HumanNameEu
* name obeys eu-pat-1
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
// * name.text MS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
// based 2023-09-01 decision 
// * name.family 1..1
* name.family ^short = "Family name"
* name.family ^definition = """Family name. When more the family is composed by more than one names, this element documents the full composed family name with the proper * name.familyrder. The parts are recorded in the fhater and mother family names extensions."""
* name.family ^example.label = "spanish" 
* name.family ^example.valueString = "Valero Iglesias"
* name.given ^short = "Given names. Includes middle names"
* name.text ^short = "Text representation of the full name."
* telecom ^short = "A contact detail for the patient"
* gender ^short = "Administrative Gender"
* birthDate 1..
// * address MS
* address only AddressEu
* address obeys eu-pat-cnt-2or3-char
* contact.relationship only $CodeableConcept-uv-ips
* contact.relationship ^short = "Relationship between a patient and a contact person for that patient"
* contact.address only AddressEu
* generalPractitioner ^short = "Patient's nominated care provider"

Invariant: eu-pat-1
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists()"
XPath: "f:given or f:family or f:text"


Invariant: eu-pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
Severity: #warning
Expression: "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))" 
