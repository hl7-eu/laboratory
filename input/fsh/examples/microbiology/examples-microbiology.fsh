// ============================================================================
// Microbiology examples — microscopy and identification
//
// They follow the examples of the white paper chapter "Microscopy" (1–6) and
// the identification examples of the chapters "Phenotypic Pathogen
// Identification" and "Molecular Genetic Testing". The patient is the one of
// the laboratory report examples (pat-lab-example).
// ============================================================================

// ---------------------------------------------------------------- specimens

Instance: spec-micro-urine
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: mid-stream urine, Gram stained"
Description: "Mid-stream urine specimen prepared for microscopy with a Gram stain. The staining is a processing step of the specimen, not the method of the observation."
Usage: #example
* status = #available
* type = $sct#258574006 "Mid-stream urine specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T08:15:00+01:00"
* processing[staining].description = "Gram stain of the sediment"
* processing[staining].procedure = $sct#62777006 "Gram stain method"
* processing[staining].timeDateTime = "2026-03-02T10:00:00+01:00"

Instance: spec-micro-blood-smear
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: blood, Giemsa stained for Plasmodium"
Description: "Blood specimen prepared as thick and thin films with a Giemsa stain for the microscopic detection of Plasmodium."
Usage: #example
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T08:30:00+01:00"
* processing[staining].procedure = $sct#104208006 "Giemsa stain method"

Instance: spec-micro-stool
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: stool for parasites"
Description: "Stool specimen examined microscopically for intestinal parasites, without a staining procedure."
Usage: #example
* status = #available
* type = $sct#119339001 "Stool specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T07:00:00+01:00"

Instance: spec-micro-blood-culture
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: blood in blood culture bottle"
Description: "The primary specimen of the blood culture: blood inoculated into a blood culture bottle."
Usage: #example
* status = #available
* type = $sct#878861003 "Blood specimen in blood culture bottle"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-01T22:40:00+01:00"

Instance: spec-micro-blood-culture-derived
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: material from the positive blood culture, Gram stained"
Description: "Material taken from the blood culture bottle after it signalled positive, prepared with a Gram stain. It is derived from the primary blood culture specimen, which it references through parent."
Usage: #example
* status = #available
* type = $sct#878861003 "Blood specimen in blood culture bottle"
* subject = Reference(pat-lab-example)
* parent = Reference(spec-micro-blood-culture)
* processing[staining].procedure = $sct#62777006 "Gram stain method"
* processing[staining].timeDateTime = "2026-03-02T14:05:00+01:00"

Instance: spec-micro-sputum
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: sputum"
Description: "Sputum specimen, the primary specimen from which the isolate was obtained."
Usage: #example
* status = #available
* type = $sct#119334006 "Sputum specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T07:30:00+01:00"

Instance: spec-micro-sputum-afb
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: sputum, auramine stained"
Description: "Sputum specimen prepared with an acid-fast fluorochrome (auramine) stain for the detection of acid-fast bacilli."
Usage: #example
* status = #available
* type = $sct#119334006 "Sputum specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T07:30:00+01:00"
* processing[staining].procedure = $sct#64327005 "Acid fast fluorochrome stain method"

Instance: spec-micro-isolate
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: isolate from sputum, Gram stained"
Description: "Microbial isolate obtained from the sputum culture, prepared with a Gram stain. It references the primary sputum specimen through parent."
Usage: #example
* status = #available
* type = $sct#119303007 "Microbial isolate"
* subject = Reference(pat-lab-example)
* parent = Reference(spec-micro-sputum)
* processing[staining].procedure = $sct#62777006 "Gram stain method"

Instance: spec-micro-nasopharyngeal-swab
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: nasopharyngeal swab"
Description: "Nasopharyngeal swab for the molecular and antigen detection of respiratory pathogens."
Usage: #example
* status = #available
* type = $sct#258500001 "Nasopharyngeal swab"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T09:00:00+01:00"

Instance: spec-micro-tissue
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: tissue biopsy"
Description: "Tissue specimen for broad-range bacterial identification by 16S rRNA gene sequencing."
Usage: #example
* status = #available
* type = $sct#119376003 "Tissue specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-02T11:20:00+01:00"

// ----------------------------------------------- microscopy (white paper 1–6)

// Example 1 — direct microscopy of a urine specimen
Instance: obs-micro-urine-gram-gnb
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Gram-negative bacilli, few, in urine"
Description: "White paper example 1: a mid-stream urine specimen examined by light microscopy after Gram staining shows Gram-negative bacilli in low quantity. The finding is the value, the amount a component, the technique the method, and the stain sits on the specimen."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T10:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#87172008 "Gram-negative bacillus"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-urine)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#57176003 "Few"

// Example 2 — multiple findings from one examination
Instance: obs-micro-urine-gram-group
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Gram stain of urine, grouping two findings"
Description: "White paper example 2: one microscopic examination yields two independent findings, Gram-negative rods and leukocytes. The examination is an observation without a value of its own that carries code, method and specimen and references the findings through hasMember."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T10:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-urine)
* hasMember[+] = Reference(obs-micro-urine-gram-gnr)
* hasMember[+] = Reference(obs-micro-urine-gram-leukocytes)

Instance: obs-micro-urine-gram-gnr
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Gram-negative rods, few (member finding)"
Description: "White paper example 2, first member: Gram-negative rods in low quantity."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T10:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#87172008 "Gram-negative bacillus"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-urine)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#57176003 "Few"

Instance: obs-micro-urine-gram-leukocytes
InstanceOf: ObservationMicroscopyEu
Title: "Observation: leukocytes, many (member finding)"
Description: "White paper example 2, second member: leukocytes in high quantity, reported as a finding of the open microscopic observation. The LOINC-coded alternative is a targeted detection with 72163-9, see obs-detect-leukocytes-gram."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T10:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#52501007 "Leukocyte"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-urine)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#260396001 "Numerous"

// Example 3 — direct microscopy for Plasmodium
Instance: obs-micro-blood-plasmodium
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Plasmodium falciparum in blood film, ++"
Description: "White paper example 3: a Giemsa-stained blood film shows Plasmodium falciparum. The species is the finding, the amount a component."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T11:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#30020004 "Plasmodium falciparum"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-smear)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#260348001 "++"

Instance: obs-micro-blood-plasmodium-negative
InstanceOf: ObservationMicroscopyEu
Title: "Observation: no Plasmodium seen in blood film"
Description: "White paper example 3, negative case: the blood film was examined and no Plasmodium was detected. The observation carries the not-detected result rather than an organism."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T11:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260415000 "Not detected"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-smear)

// Example 4 — direct microscopy for parasites
Instance: obs-micro-stool-giardia
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Giardia lamblia in stool"
Description: "White paper example 4: a stool specimen examined microscopically for intestinal parasites shows Giardia lamblia."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T12:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#78181009 "Giardia lamblia"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-stool)

// Example 5 — microscopy following culture
Instance: obs-micro-blood-culture-positive
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: blood culture, organism growth"
Description: "The blood culture that signalled positive. It is the culture step — growth, not yet an organism — and the trigger of the Gram stain and the identification that follow. The culture profile is not part of this set; the laboratory result profile is used."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T13:50:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* specimen = Reference(spec-micro-blood-culture)

Instance: obs-micro-blood-culture-gram
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Gram stain of the positive blood culture"
Description: "White paper example 5: material from the positive blood culture is Gram stained and shows Gram-positive cocci in clusters. The observation references the derived specimen and points back at the culture that triggered it."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* extension[triggeredBy].extension[observation].valueReference = Reference(obs-micro-blood-culture-positive)
* extension[triggeredBy].extension[type].valueCode = #reflex
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T14:20:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-culture-derived)

// Example 6 — microscopy of an isolate
Instance: obs-micro-isolate-gram
InstanceOf: ObservationMicroscopyEu
Title: "Observation: Gram stain of an isolate"
Description: "White paper example 6: an isolate obtained from a sputum culture is Gram stained to characterise its morphology. The specimen is the isolate, which points at the primary sputum specimen through parent."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-03T09:10:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#61609004 "Gram-positive cocci in chains"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-isolate)

// ------------------------------------------------------ organism identification

Instance: obs-micro-sputum-culture-positive
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation: sputum culture, organism growth"
Description: "The sputum culture whose growth was identified. The culture step; the identification that follows points back at it."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-03T08:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* specimen = Reference(spec-micro-sputum)

Instance: obs-ident-maldi-kpneumoniae
InstanceOf: ObservationOrganismIdentificationEu
Title: "Observation: Klebsiella pneumoniae identified by MALDI-TOF"
Description: "White paper example (chapter Phenotypic Pathogen Identification): the isolate is identified by MALDI-TOF mass spectrometry as Klebsiella pneumoniae. The code reflects the open question, the method names the technique, the identification points back at the culture it followed."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* extension[triggeredBy].extension[observation].valueReference = Reference(obs-micro-sputum-culture-positive)
* extension[triggeredBy].extension[type].valueCode = #reflex
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#56415008 "Klebsiella pneumoniae"
* method = $sct#83581000052107 "Matrix assisted laser desorption ionization time of flight mass spectrometry technique"
* specimen = Reference(spec-micro-isolate)

Instance: obs-ident-16s-sequencing
InstanceOf: ObservationOrganismIdentificationEu
Title: "Observation: bacteria identified by 16S rRNA gene sequencing"
Description: "Identification directly from a tissue specimen by sequencing of the 16S rRNA gene (white paper, chapter Molecular Genetic Testing, category 3): the sequencing target is in the code, the technique in the method, the organism is the result."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#66885-5 "Bacteria identified based on 16S rRNA gene [Identifier] in Specimen by Sequencing"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-05T16:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* method = $sct#1304162005 "Nucleic acid sequencing technique"
* specimen = Reference(spec-micro-tissue)

Instance: obs-ident-not-detected
InstanceOf: ObservationOrganismIdentificationEu
Title: "Observation: no organism identified"
Description: "The examination was performed and no organism was identified: the result is Not detected, not an omitted observation."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-05T16:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260415000 "Not detected"
* method = $sct#1304162005 "Nucleic acid sequencing technique"
* specimen = Reference(spec-micro-tissue)

// ------------------------------------------------------------ targeted detection

Instance: obs-detect-pertussis-pcr
InstanceOf: ObservationTargetedDetectionEu
Title: "Observation: Bordetella pertussis DNA detected by real-time PCR"
Description: "Targeted molecular detection in the preferred, post-coordinated form: a method-neutral LOINC code with the target in the component and system XXX, the specimen in Specimen.type, and the technique in Observation.method."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105875-9 "Bordetella pertussis DNA [Presence] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T15:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260373001 "Detected"
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique"
* specimen = Reference(spec-micro-nasopharyngeal-swab)

Instance: obs-detect-pertussis-pcr-indeterminate
InstanceOf: ObservationTargetedDetectionEu
Title: "Observation: Bordetella pertussis PCR, indeterminate"
Description: "The PCR was inhibited and yields no usable statement. An indeterminate result is not a value; it is given as dataAbsentReason 82334004 |Indeterminate|."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105875-9 "Bordetella pertussis DNA [Presence] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T15:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* dataAbsentReason = $sct#82334004 "Indeterminate"
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique"
* specimen = Reference(spec-micro-nasopharyngeal-swab)

Instance: obs-detect-sarscov2-ag-rapid
InstanceOf: ObservationTargetedDetectionEu
Title: "Observation: SARS-CoV-2 antigen not detected by rapid immunoassay"
Description: "A rapid antigen test in the post-coordinated form: the method-neutral antigen code, and the rapid immunoassay technique in Observation.method."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105066-5 "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T09:20:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260415000 "Not detected"
* method = $sct#1156860005 "Rapid antigen detection immunoassay technique"
* specimen = Reference(spec-micro-nasopharyngeal-swab)

Instance: obs-detect-afb-auramine
InstanceOf: ObservationTargetedDetectionEu
Title: "Observation: acid-fast bacilli detected, ++ (auramine stain)"
Description: "Targeted microscopic detection (workbook, sheet Microscopy, Profile 2): the object sought — acid-fast bacilli — is named in the code, the result is Detected, the amount is a component, the fluorescence microscopy is the method, and the auramine stain sits on the specimen."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#87243-2 "Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T13:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260373001 "Detected"
* method = $sct#258099003 "Fluorescence microscopy technique"
* specimen = Reference(spec-micro-sputum-afb)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#260348001 "++"

Instance: obs-detect-leukocytes-gram
InstanceOf: ObservationTargetedDetectionEu
Title: "Observation: leukocytes detected in Gram stain, many"
Description: "Host cells with the object named in the code: 72163-9 asks for leukocytes, the answer is Detected, the amount is a component. The alternative, the leukocytes as a finding of the open microscopic observation, is obs-micro-urine-gram-leukocytes."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T10:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260373001 "Detected"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-urine)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#260396001 "Numerous"
