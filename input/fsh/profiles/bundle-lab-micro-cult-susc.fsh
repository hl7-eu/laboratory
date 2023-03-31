Profile: BundleLabReportMicroCultSuscEu
Parent: BundleLabReportEu
Id: Bundle-eu-lab-micro-cult-susc
Title: "Bundle: Laboratory Report - Microbiology Culture & Susceptibility"
Description: "Clinical document used to represent a specialized Laboratory Report for representing microbiology culture & susceptibility results in the scope of the HL7 Europe project."
* ^publisher = "HL7 Europe"
* ^copyright = "HL7 Europe"
* . ^short = "Laboratory Report Microbiology Culture & Susceptibility bundle"
* . ^definition = "Laboratory Report Microbiology Culture & Susceptibility bundle."
* identifier ^short = "Business identifier for this Microbiology Culture & Susceptibility Laboratory Report"
* entry[composition].resource only CompositionLabReportMicroCultSuscEu
* entry[diagnosticReport].resource only DiagnosticReportLabMicroCultSuscEu
