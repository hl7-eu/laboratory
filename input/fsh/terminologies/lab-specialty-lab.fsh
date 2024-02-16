ValueSet:      LabSpecialtyEuVs
Id:	       lab-specialty-eu-lab
Title:	       "Laboratory Specialty"
Description:   """Laboratory Specialties.
Notes:
Note 1: This value set is based on analysis of national coding practices in 8 European countries (AT, CZ, DE, FR, IE, IT, PT, SE) and agreed by involved lab experts as a common lab specialty value set.
Note 2: Many European countries are using additional laboratory specialty types, which should be mapped towards this value set.
Note 3: In case of documented need, this value set could be extended."""

//  * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)
* $sct#394596001    "Chemical pathology"
* $sct#394916005    "Hematopathology"
* $sct#421661004    "Blood banking and transfusion medicine"
* $sct#394915009    "General pathology"
* $sct#394598000    "Immunopathology"
* $sct#408454008    "Clinical microbiology"
* $sct#1236877003   "Genetic pathology"
* $sct#1236878008   "Histocompatibility and Immunogenetics"