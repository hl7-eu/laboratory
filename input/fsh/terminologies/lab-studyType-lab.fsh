ValueSet:      LabStudyTypesEu
Id:	       lab-studyType-eu-lab
Title:	       "Lab Study Types"
Description:   """Laboratory Specialties.
Notes:
Note 1:26436-6 (LABORATORY STUDIES) enables issuing a report putting together observations from multiple specialties (disciplines) in the same text block, allowing delivery of a global interpretation comment at the end of the text block that will be rendered at the end of the report.
Note 2:18721-1 (THERAPEUTIC DRUG MONITORING STUDIES) will be used for a section carrying pharmacology observations on a patient.
Note 3:Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (Microbiology studies (set)) specialty.
Note 4:Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) specialty or 18727-8 (SEROLOGY STUDIES) or split between both specialties, depending upon the Content Creator Actor’s choice."""

* ^experimental = false
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
* $loinc#18717-9 "BLOOD BANK STUDIES"
* $loinc#18718-7 "CELL MARKER STUDIES"
* $loinc#18719-5 "CHEMISTRY STUDIES"
* $loinc#18720-3 "COAGULATION STUDIES"
* $loinc#18721-1 "THERAPEUTIC DRUG MONITORING STUDIES"
* $loinc#18722-9 "FERTILITY STUDIES"
* $loinc#18723-7 "HEMATOLOGY STUDIES"
* $loinc#18724-5 "HLA STUDIES"
* $loinc#18725-2 "Microbiology studies (set)"
* $loinc#18727-8 "SEROLOGY STUDIES"
* $loinc#18728-6 "TOXICOLOGY STUDIES"
* $loinc#18729-4 "URINALYSIS STUDIES"
* $loinc#18767-4 "BLOOD GAS STUDIES"
* $loinc#18768-2 "CELL COUNTS+DIFFERENTIAL STUDIES"
* $loinc#18769-0 "MICROBIAL SUSCEPTIBILITY TESTS"
* $loinc#26435-8 "MOLECULAR PATHOLOGY STUDIES"
* $loinc#26436-6 "LABORATORY STUDIES"
* $loinc#26437-4 "CHEMISTRY CHALLENGE STUDIES"
* $loinc#26438-2 "CYTOLOGY STUDIES"