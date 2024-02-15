//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    AddressEu
Parent:     Address
Id:         Address-eu
Title:      "Address (EU)"
Description: """This profile extends the Address data type for supporting streetname, housenumber and postal box."""
//-------------------------------------------------------------------------------------------
/* * ^publisher = "HL7 EU"
* ^version = "1.0.0" */
* ^experimental = false
* insert SetFmmandStatusRule ( 2, trial-use)
* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open
// * line.extension ^definition = "It is RECOMMENDED to use these extensions to define address elements."
* line.extension contains
    $iso21090-ADXP-streetName named streetName 0..* and
    $iso21090-ADXP-houseNumber named houseNumber 0..* and
    $iso21090-ADXP-postBox named postBox 0..*
* line.extension[streetName].value[x] only string
* line.extension[houseNumber].value[x] only string
* line.extension[postBox].value[x] only string
* country // ^definition = "Country, the FHIR specification defines its country field as a string and suggests using a ISO 3166 2 or 3 letter codes. Use of 2-letter code to express country is RECOMMENDED."
  * extension contains $iso21090-SC-coding named countryCode 0..1
  * extension[countryCode].valueCoding from $iso3166-1-2 (preferred)