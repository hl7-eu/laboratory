ValueSet: LoincVs
Id: lab-result-loinc-eu-lab
Title: "Standard Laboratory Codes: LOINC"
Description: "LOINC laboratory codes Value Set"
* ^experimental = false
* insert LOINCCopyrightForVS
* include codes from system $loinc where CLASSTYPE = "1"
