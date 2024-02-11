ValueSet: CertifiedReferenceMaterialVS
Id: lab-certifiedRefMaterial-eu-lab
Title: "Certified Reference Material"
Description: "List of the coded concepts describing the certified reference material used for the calibration, typically used when the unit of the result is UCUM [IU]."

* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include $nibsc#IS_66_304 "IS 66/304 Human insulin"
* include $nibsc#IS_19_118 "IS 19/118 Ferritin"
* include $jctlm#ERM-DA470k_IFCC "ERM-DA470k/IFCC Albumin in human serum"
* include $nibsc#IS_17_100 "IS 17/100 Prostate-specific antigen"


