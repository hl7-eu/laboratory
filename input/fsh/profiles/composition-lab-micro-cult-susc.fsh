Profile: CompositionLabReportMicroCultSuscEu
Parent: CompositionLabReportEu
Id: Composition-eu-lab-micro-cult-susc
Title: "Composition: Laboratory Report - Microbiology Culture & Susceptibility"
Description: "Clinical document used to represent a specialized Laboratory Report for representing microbiology culture & susceptibility results in the scope of the HL7 Europe project."
* ^publisher = "HL7 Europe"
* ^copyright = "HL7 Europe"
* . ^short = "Laboratory Report Microbiology Culture & Susceptibility composition"
* . ^definition = "Laboratory Report Microbiology Culture & Susceptibility composition.
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained.
\r\nThis profile includes the additional constraints for representing the microorganism identification and the links for the nested susceptibility tests and results."
* identifier ^short = "Business identifier of the Microbiology Culture & Susceptibility Laboratory Report (setID)"
* status ^short = "Status of the Microbiology Culture & Susceptibility Report"
* title ^short = "Laboratory Microbiology Culture & Susceptibility Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Laboratory Microbiology Culture & Susceptibility Report\" or any equivalent translation"
* section.code = $loinc#18725-2 "MICROBIOLOGY STUDIES" (exactly)
