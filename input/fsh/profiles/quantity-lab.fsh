Profile: QuantityEuLab
Parent: Quantity-uv-ips
Id: Quantity-eu-lab
Title: "Quantity (Eu) for lab observations"
Description: "Data type Quantity constrained to use UCUM as the code system for units and optionally share measurement uncertainty"
* ^publisher = "HL7 Europe"
* ^purpose = "This profile of the Quantity data type imposes the usage of the UCUM as the code system for units and allows expressing uncertainty of measurement"
* . ^short = "A measured amount using UCUM"
* . ^definition = "A measured amount (or an amount that can potentially be measured) and uncertainty of the measurement. Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.\r\nThis profile imposes that the code system for units be UCUM."
* extension contains $iso21090-uncertainty named Uncertainty 0..1
