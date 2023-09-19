Profile: HumanNameEu
Parent: HumanName
Id: HumanName-eu
Title: "HumanName (Eu)"
Description: """European profile on HumanName data type. It includes extensions to support multiple family names."""
/* * ^publisher = "HL7 Europe" */
* ^purpose = "This profile of the HumanName allows for expressing multiple family names, as requested by some jurisdictions."

* extension contains $humanname-fathers-family named fathersFamily 0..1
* extension[fathersFamily]
* extension[fathersFamily] ^example.label = "spanish"
* extension[fathersFamily] ^example.valueString = "Valero"
* extension contains $humanname-mothers-family named mothersFamily 0..1
* extension[mothersFamily]
* extension[mothersFamily] ^example.label = "spanish"
* extension[mothersFamily] ^example.valueString = "Iglesias"
* family ^example.label = "spanish" 
* family ^example.valueString = "Valero Iglesias"

