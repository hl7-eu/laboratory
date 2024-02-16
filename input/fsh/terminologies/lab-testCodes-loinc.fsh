ValueSet: LoincVs
Id: lab-obsCode-loinc-eu-lab
Title: "Laboratory Code: LOINC"
Description: "Laboratory observation codes based on the LOINC code system."


* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

* include codes from system $loinc where CLASSTYPE = "1"
