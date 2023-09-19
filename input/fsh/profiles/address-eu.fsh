//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    AddressEu
Parent:     Address
Id:         Address-eu
Title:      "Address (EU)"
Description: """European profile on Address. It includes extensions to support seperate streetname, housenumber and postal box
It is RECOMMENDED to give these elements seperately."""
//-------------------------------------------------------------------------------------------
/* * ^publisher = "HL7 EU"
* ^version = "1.0.0" */
* ^experimental = false

* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open
* line.extension ^definition = "It is RECOMMENDED to use these extensions to define address elements."
* line.extension contains
    $iso21090-ADXP-streetName named Streetname 0..* and
    $iso21090-ADXP-houseNumber named Housenumber 0..* and
    $iso21090-ADXP-postBox named Postbox 0..*
* line.extension[Streetname].value[x] only string
* line.extension[Housenumber].value[x] only string
* line.extension[Postbox].value[x] only string
* country ^definition = "Country, the FHIR specification defines its country field as a string and suggests using a ISO 3166 2 or 3 letter codes. Use of 2-letter code to express country is RECOMMENDED."