Profile: QuantityEuLab
Parent: Quantity
Id: Quantity-eu-lab
Title: "Quantity (Eu Lab)"
Description: "This profile constrains the Quantity data type to use UCUM as the code system for units and optionally share measurement uncertainty"
// * ^publisher = "HL7 Europe"
* ^purpose = "This profile of the Quantity data type imposes the usage of the UCUM as the code system for units and allows expressing uncertainty of measurement"
* . ^short = "A measured amount using UCUM"
* . ^definition = "A measured amount (or an amount that can potentially be measured) and uncertainty of the measurement. Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.\r\nThis profile imposes that the code system for units be UCUM."
* . ^comment = "The use of the UCUM code system for units is required in this profile; however, the code and system elements are not mandatory. A textual and/or coded representation of the unit is nonetheless expected. The uncertainty and uncertaintyType extensions are optional, but they support the expression of measurement uncertainty, which is important for laboratory measurements."
* extension contains $iso21090-uncertainty named uncertainty 0..1
* extension contains $iso21090-uncertaintyType named uncertaintyType 0..1
* system = "http://unitsofmeasure.org" 
* system 0..1


Profile: RatioEuLab
Parent: Ratio
Id: Ratio-eu-lab
Title: "Ratio (Eu Lab)"
Description: "This profile constrains the Ratio data type to use UCUM as the code system for units and optionally share measurement uncertainty"
// * ^publisher = "HL7 Europe"
* ^purpose = "This profile of the Ratio data type imposes the usage of the UCUM as the code system for units and allows expressing uncertainty of measurement"
* . ^short = "A measured ratio using UCUM"
* . ^definition = "A measured ratio (or a ratio that can potentially be measured) and uncertainty of the measurement. This profile imposes that the code system for units be UCUM."
* extension contains $iso21090-uncertainty named uncertainty 0..1
* extension contains $iso21090-uncertaintyType named uncertaintyType 0..1
* numerator
  * system = "http://unitsofmeasure.org" 
  * system 0..1
  * code 1..1
* denominator
  * system = "http://unitsofmeasure.org" 
  * system 0..1
  * code 1..1

Profile: RangeEuLab
Parent: Range
Id: Range-eu-lab
Title: "Range (Eu Lab)"
Description: "This profile constrains the Range data type to use UCUM as the code system for units and optionally share measurement uncertainty"
// * ^publisher = "HL7 Europe"
* ^purpose = "This profile of the Range data type imposes the usage of the UCUM as the code system for units and allows expressing uncertainty of measurement"
* . ^short = "A measured range using UCUM"
* . ^definition = "A measured range (or a range that can potentially be measured) and uncertainty of the measurement. This profile imposes that the code system for units be UCUM."
* extension contains $iso21090-uncertainty named uncertainty 0..1
* extension contains $iso21090-uncertaintyType named uncertaintyType 0..1
* low
  * system = "http://unitsofmeasure.org" 
  * system 0..1
  * code 1..1
* high
  * system = "http://unitsofmeasure.org" 
  * system 0..1
  * code 1..1
