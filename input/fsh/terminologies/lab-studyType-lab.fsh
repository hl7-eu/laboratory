ValueSet:      LabStudyTypesEuVs
Id:	       lab-studyType-eu-lab
Title:	       "Laboratory Study Types"
// TODO: Description should be adjusted according to the final set of EU study types.
Description:   """Laboratory Study Types
Notes:
Note 1:26436-6 (Laboratory studies) enables issuing a report putting together observations from multiple specialties (disciplines) in the same text block, allowing delivery of a global interpretation comment at the end of the text block that will be rendered at the end of the report.
Note 2:Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (Microbiology studies (set)) studies.
Note 3:Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) or 18727-8 (SEROLOGY STUDIES) or split between both study types, depending upon the Content Creator Actor’s choice.
"""

// * ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

// Following set of codes represent agreement between several EU member states on common set of laboratory study types. Other codes from XD-LAB profile were commented out.
* $loinc#18717-9 "Blood bank studies (set)"
//* $loinc#18718-7 "Cell marker studies (set)"
* $loinc#18719-5 "Chemistry studies (set)"
//* $loinc#18720-3 "Coagulation studies (set)"
//* $loinc#18721-1 "Therapeutic drug monitoring studies (set)"
* $loinc#18722-9 "Fertility studies (set)"
* $loinc#18723-7 "Hematology studies (set)"
//* $loinc#18724-5 "HLA studies (set)"
* $loinc#18725-2 "Microbiology studies (set)"
//* $loinc#18727-8 "Serology studies (set)"
* $loinc#18728-6 "Toxicology studies (set)"
//* $loinc#18729-4 "Urinalysis studies (set)"
//* $loinc#18767-4 "Blood gas studies (set)"
//* $loinc#18768-2 "Cell counts+Differential studies (set)"
//* $loinc#18769-0 "Microbial susceptibility tests Set"
//* $loinc#26435-8 "Molecular pathology studies (set)"
* $loinc#26436-6 "Laboratory studies (set)"
//* $loinc#26437-4 "Chemistry challenge studies (set)"
//* $loinc#26438-2 "Cytology studies (set)"