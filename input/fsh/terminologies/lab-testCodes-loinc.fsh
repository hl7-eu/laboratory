ValueSet: LoincVs
Id: lab-obsCode-loinc-eu-lab
Title: "Laboratory Code: LOINC"
Description: "Laboratory observation codes based on the LOINC code system."
* ^experimental = false
* insert LOINCCopyrightForVS
* include codes from system $loinc where CLASSTYPE = "1"
