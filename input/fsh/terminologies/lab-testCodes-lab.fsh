ValueSet: LaboratoryResultStandardEuVs
Id: lab-obsCode-eu-lab
Title: "Laboratory Code"
Description: "Laboratory observation codes. List of Laboratory observation codes derived from the LOINC and NPU code systems."
//-------------------------------------------------------------------------------------------
// * ^experimental = false

* insert LOINCAndNPUCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)
* codes from valueset NpuVs
* codes from valueset LoincVs
