Profile: HumanNameEu
Parent: HumanName
Id: HumanName-eu
Title: "HumanName (Eu)"
Description: """This profile extends the HumanName data type for supporting multiple family names."""
/* * ^publisher = "HL7 Europe" */
* ^purpose = "This profile of the HumanName allows for expressing multiple family names, as requested by some jurisdictions."
* insert SetFmmandStatusRule ( 2, trial-use)

* family ^example.label = "spanish name"
* family ^example.valueString = "Valero Iglesias"
  * extension contains $humanname-fathers-family named fathersFamily 0..*
  * extension[fathersFamily]
  * extension[fathersFamily] ^example.label = "spanish name"
  * extension[fathersFamily] ^example.valueString = "Valero"
  * extension contains $humanname-mothers-family named mothersFamily 0..*
  * extension[mothersFamily]
  * extension[mothersFamily] ^example.label = "spanish name"
  * extension[mothersFamily] ^example.valueString = "Iglesias"
* given ^example.label = "spanish name" 
* given ^example.valueString = "Borja"

