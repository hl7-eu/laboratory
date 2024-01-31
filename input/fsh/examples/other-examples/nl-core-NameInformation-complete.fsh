Instance: nl-core-NameInformation-complete
InstanceOf: Patient
Usage: #example
// * meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-assembly-order"
* name[=].extension.valueCode = #NL3
// "The extension is used to indicate that the person's family name is built up from the partner's last name \r\n           followed by the person's own last name "
* name[=].use = #official
* name[=].text = "Johanna Petronella Maria (Jo) van der Giessen-van Putten"
// "The rendered name of the person "
* name[=].family.extension[0].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix"
* name[=].family.extension[=].valueString = "van"
//" The person's own last name prefix "
* name[=].family.extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension[=].valueString = "Putten"
//" The person's own last name "
* name[=].family.extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-partner-prefix"
* name[=].family.extension[=].valueString = "van der"
//" The partner's last name prefix "
* name[=].family.extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-partner-name"
* name[=].family.extension[=].valueString = "Giessen"
//" The partner's last name "
//" The person's combined family name. The individual parts are repeated using the appropriate extensions. "
* name[=].family = "van der Giessen-van Putten"
* name[=].given[0] = "Johanna"
* name[=].given[+] = "Petronella"
* name[=].given[+] = "Maria"
* name[=].given[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].given[=].extension.valueCode = #BR
//" Each official first name is communicated individually, augmented with the iso21090-EN-qualifier\r\n           extension set to \"BR\" (Birth) to indicate that it is a complete and official first name. "
* name[=].given[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].given[=].extension.valueCode = #BR
* name[=].given[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].given[=].extension.valueCode = #BR
* name[=].prefix = "PhD"
//" The scientific title of the person. "
// * name[=].fhir_comments = " The information about the offical names is communicated using a .name instance where .name.use is \r\n        set to \"official\". "
* name[+].use = #usual
* name[=].given = "Jo"
// " The given name (roepnaam, nickname) of the person is communicated using an additional .name instance with\r\n        .name.use set to \"usual\". "