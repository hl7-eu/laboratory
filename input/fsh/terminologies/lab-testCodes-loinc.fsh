ValueSet: LoincVs
Id: lab-obsCode-loinc-eu-lab
Title: "Laboratory Observation Code: LOINC"
Description: "Laboratory codes based on the LOINC code system."
* ^experimental = false
* insert LOINCCopyrightForVS
* include codes from system $loinc where CLASSTYPE = "1"
