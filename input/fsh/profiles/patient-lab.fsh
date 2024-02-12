Profile: PatientEuLab
Parent: Patient
Id: Patient-eu-lab
Title:    "Patient: Person"
Description: """This profile defines how to represent a human Patient in FHIR for the purpose of this guide.
When the ips-pat-1 invariant is satisfied \(Patient.name.given, Patient.name.family or Patient.name.text SHALL be present\) then this profile complies with the IPS patient profile."""

* insert SetFmmandStatusRule ( 1, draft )

* extension contains
    $patient-birthPlace named birthPlace 0..1 and
    $sexForClinicalUse named sex-for-clinical-use 0..*
* extension[birthPlace].valueAddress only AddressEu

* identifier ^short = "Patient identifiers" // MS according to IPS

* name 1..* // MS according to IPS
* name only HumanNameEu
* name obeys eu-pat-1
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.extension contains $ext-data-absent-reason named name-absent-reason 0..*
* name.extension[name-absent-reason] ^short = "Reason for not providing the name"
* name.extension[name-absent-reason] ^definition = "Reason for not providing the name"
* name.text // // MS according to IPS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
// based 2023-09-01 decision
// * name.family 1..1
* name.family ^short = "Family name"  // MS according to IPS
* name.family ^definition = """Family name. When more the family is composed by more than one names, this element documents the full composed family name with the proper * name.familyrder. The parts are recorded in the fhater and mother family names extensions."""
* name.family ^example.label = "spanish"
* name.family ^example.valueString = "Valero Iglesias"
* name.given ^short = "Given names. Includes middle names" // MS according to IPS
* name.text ^short = "Text representation of the full name."
* telecom ^short = "A contact detail for the patient" // MS according to IPS
* gender ^short = "Administrative Gender" // MS according to IPS
* birthDate 1.. // MS according to IPS
// * address MS
* address only AddressEu // MS according to IPS
* address obeys pat-cnt-2or3-char
* contact.relationship only $CodeableConcept-uv-ips
* contact.relationship ^short = "Relationship between a patient and a contact person for that patient"
* contact.address only AddressEu
* generalPractitioner ^short = "Patient's nominated care provider" // MS according to IPS


Invariant: eu-pat-1
Description: "given, family, text or a data-absent-reason extension SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
/* XPath: "f:given or f:family or f:text" */

Invariant: pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
Severity: #warning
Expression: "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"



