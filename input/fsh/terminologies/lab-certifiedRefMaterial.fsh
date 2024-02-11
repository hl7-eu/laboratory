ValueSet: CertifiedReferenceMaterialVS
Id: lab-certifiedRefMaterial-eu-lab
Title: "Certified reference material Value Set"
Description: "Value set of all codes of the Certified Reference Material code system"

* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include $nibsc#IS_66_304 "IS 66/304 Human insulin"
* include $nibsc#IS_19_118 "IS 19/118 Ferritin"
* include $jctlm#ERM-DA470k_IFCC "ERM-DA470k/IFCC Albumin in human serum"
* include $nibsc#IS_17_100 "IS 17/100 Prostate-specific antigen"


