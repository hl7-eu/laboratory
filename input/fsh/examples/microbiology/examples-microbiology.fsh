// ============================================================================
// Microbiology examples — microscopy, identification and targeted detection
//
// They follow the examples of the white paper chapter "Microscopy" (1–6) and
// the identification examples of the chapters "Phenotypic Pathogen
// Identification" and "Molecular Genetic Testing". The specific microscopy
// examples use the codes the workbook gives for Profile 2 (sheet Microscopy).
// The patient is the one of the laboratory report examples (pat-lab-example).
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

Instance: spec-micro-blood-smear-negative
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: blood, Giemsa stained, examined for Plasmodium (negative case)"
Description: "A second blood specimen, prepared as thick and thin films with a Giemsa stain, in which no Plasmodium is seen."
Usage: #example
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-04T08:30:00+01:00"
* processing[staining].procedure = $sct#104208006 "Giemsa stain method"

Instance: spec-micro-blood-smear-babesia
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: blood, Giemsa stained, examined for Plasmodium (Babesia found)"
Description: "A third blood specimen, prepared as thick and thin films with a Giemsa stain, examined for Plasmodium; it shows Babesia microti instead."
Usage: #example
* status = #available
* type = $sct#119297000 "Blood specimen"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-05T08:30:00+01:00"
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
Title: "Specimen: blood in aerobic blood culture bottle"
Description: "The primary specimen of the blood culture: blood inoculated into the aerobic bottle of a blood culture set."
Usage: #example
* status = #available
* type = $sct#878861003 "Blood specimen in blood culture bottle"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-01T22:40:00+01:00"

Instance: spec-micro-blood-culture-anaerobic
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: blood in anaerobic blood culture bottle"
Description: "The anaerobic bottle of the same blood culture set, inoculated from the same blood draw."
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

Instance: spec-micro-nares-swab
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: anterior nares swab for MRSA screening"
Description: "Anterior nares swab taken for an MRSA screening culture."
Usage: #example
* status = #available
* type = $sct#697989009 "Anterior nares swab"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-06T09:00:00+01:00"

Instance: spec-micro-nares-isolate
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: isolate from the MRSA screening culture"
Description: "Isolate of the colonies that grew on the MRSA screening medium. It references the primary anterior nares swab through parent."
Usage: #example
* status = #available
* type = $sct#119303007 "Microbial isolate"
* subject = Reference(pat-lab-example)
* parent = Reference(spec-micro-nares-swab)

Instance: spec-micro-conjunctival-swab
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: conjunctival swab"
Description: "Conjunctival swab for the culture of adenovirus."
Usage: #example
* status = #available
* type = $sct#258498002 "Conjunctival swab"
* subject = Reference(pat-lab-example)
* collection.collectedDateTime = "2026-03-06T10:00:00+01:00"

// --------------------------------------- general microscopy (white paper 1–6)

// Example 1 — direct microscopy of a urine specimen
Instance: obs-micro-urine-gram-gnb
InstanceOf: ObservationMicroscopyGeneralEu
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
InstanceOf: ObservationMicroscopyGeneralEu
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
InstanceOf: ObservationMicroscopyGeneralEu
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
InstanceOf: ObservationMicroscopyGeneralEu
Title: "Observation: leukocytes, many (member finding)"
Description: "White paper example 2, second member: leukocytes in high quantity. Host cells are findings of the general microscopy."
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
InstanceOf: ObservationMicroscopyGeneralEu
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
InstanceOf: ObservationMicroscopyGeneralEu
Title: "Observation: no Plasmodium seen in blood film"
Description: "White paper example 3, negative case: the blood film was examined and no Plasmodium was detected. The observation carries the not-detected result rather than an organism."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-04T11:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260415000 "Not detected"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-smear-negative)

// Example 4 — direct microscopy for parasites
Instance: obs-micro-stool-giardia
InstanceOf: ObservationMicroscopyGeneralEu
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
InstanceOf: ObservationCultureGeneralEu
Title: "Observation: blood culture, aerobic bottle, organism growth"
Description: "The aerobic bottle of the blood culture set signalled positive. It is the culture step — growth, not yet an organism — and the trigger of the Gram stain and the identification that follow. The anaerobic bottle is an observation of its own."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T13:50:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#703750006 "Aerobic culture"
* specimen = Reference(spec-micro-blood-culture)

Instance: obs-micro-blood-culture-anaerobic-negative
InstanceOf: ObservationCultureGeneralEu
Title: "Observation: blood culture, anaerobic bottle, no growth"
Description: "The anaerobic bottle of the same blood culture set showed no growth. Method holds one code, so each culture condition is an observation of its own."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-06T22:40:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#264868006 "No growth"
* method = $sct#703751005 "Anaerobic culture"
* specimen = Reference(spec-micro-blood-culture-anaerobic)

Instance: obs-micro-blood-culture-gram
InstanceOf: ObservationMicroscopyGeneralEu
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
InstanceOf: ObservationMicroscopyGeneralEu
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

// Acid-fast bacilli in an auramine-stained sputum
Instance: obs-micro-sputum-afb
InstanceOf: ObservationMicroscopyGeneralEu
Title: "Observation: acid-fast bacilli, ++, in auramine-stained sputum"
Description: "Acid-fast bacilli are a finding of the general microscopy: the code asks what was seen, the value is the acid-fast bacillus, the amount a component, the fluorescence microscopy the method, and the auramine stain sits on the specimen."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T13:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#243365003 "Acid-fast bacillus"
* method = $sct#258099003 "Fluorescence microscopy"
* specimen = Reference(spec-micro-sputum-afb)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#260348001 "++"

// ------------------------------------------------------------ specific microscopy

// Workbook Profile 2, PrId: the organism seen is more specific than the target
Instance: obs-micro-spec-blood-plasmodium
InstanceOf: ObservationMicroscopySpecificEu
Title: "Observation: Plasmodium sp identified in blood film: Plasmodium falciparum, ++"
Description: "Specific microscopy with a PrId code: the code asks for Plasmodium sp, the blood film shows Plasmodium falciparum. Because the finding is more specific than the target, the value is the species, not Detected. The amount is a component."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#32206-5 "Plasmodium sp identified in Blood by Light microscopy"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T11:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#30020004 "Plasmodium falciparum"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-smear)
* component[semiquantitative].code = $sct#103392008 "Semi-quantitative"
* component[semiquantitative].valueCodeableConcept = $sct#260348001 "++"

// Workbook Profile 2, preferred code with system XXX
Instance: obs-micro-spec-stool-op
InstanceOf: ObservationMicroscopySpecificEu
Title: "Observation: ova and parasites in stool: Giardia lamblia"
Description: "Specific microscopy with the preferred code 673-4 (system XXX, the specimen in Specimen.type): the stool is examined for ova and parasites and shows Giardia lamblia. The parasite found is the value."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#673-4 "Ova and parasites identified in Specimen by Light microscopy"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-02T12:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#78181009 "Giardia lamblia"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-stool)

// PrThr with an unexpected finding: the targeted observation is Not detected,
// the organism found is a general microscopy of its own, referenced through
// hasMember.
Instance: obs-micro-spec-blood-plasmodium-presence
InstanceOf: ObservationMicroscopySpecificEu
Title: "Observation: Plasmodium sp not detected in blood film, Babesia seen"
Description: "Specific microscopy with a PrThr code: Plasmodium was sought and not found. The result is Not detected; the Babesia microti seen on the same film is a general microscopy of its own, which this observation references through hasMember."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#51587-4 "Plasmodium sp [Presence] in Blood by Light microscopy"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-05T11:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260415000 "Not detected"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-smear-babesia)
* hasMember[+] = Reference(obs-micro-blood-babesia)

Instance: obs-micro-blood-babesia
InstanceOf: ObservationMicroscopyGeneralEu
Title: "Observation: Babesia microti in blood film (unexpected finding)"
Description: "The unexpected finding of the examination for Plasmodium, reported as a general microscopy: the code asks what was seen, the value is Babesia microti. The specific microscopy references it through hasMember."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-05T11:30:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#76828008 "Babesia microti"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(spec-micro-blood-smear-babesia)

// ----------------------------------------------------------------- specific culture

// PrThr with unexpected growth: the specific culture is Not detected and
// references the growth through hasMember; the identification follows the
// growth through triggeredBy.
Instance: obs-micro-mrsa-culture
InstanceOf: ObservationCultureSpecificEu
Title: "Observation: MRSA screening culture, MRSA not detected, other growth"
Description: "Specific culture with a PrThr code: MRSA was sought on a selective medium and not found. Something else grew on the same medium; that growth is a general culture of its own, which this observation references through hasMember."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#13317-3 "Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-07T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#260415000 "Not detected"
* method = $sct#703752003 "Organism specific culture"
* specimen = Reference(spec-micro-nares-swab)
* hasMember[+] = Reference(obs-micro-mrsa-culture-growth)

Instance: obs-micro-mrsa-culture-growth
InstanceOf: ObservationCultureGeneralEu
Title: "Observation: unexpected growth in the MRSA screening culture"
Description: "The growth on the MRSA screening medium, reported before the organism is identified. The specific culture references it through hasMember; the identification points back at it."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-07T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#702658000 "Microbial culture"
* specimen = Reference(spec-micro-nares-swab)

Instance: obs-ident-mrsa-culture-sepidermidis
InstanceOf: ObservationOrganismIdentificationEu
Title: "Observation: Staphylococcus epidermidis identified from the MRSA screening culture"
Description: "The organism that grew on the MRSA screening medium, identified by MALDI-TOF. The identification points back at the growth it names through triggeredBy."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* extension[triggeredBy].extension[observation].valueReference = Reference(obs-micro-mrsa-culture-growth)
* extension[triggeredBy].extension[type].valueCode = #reflex
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-07T14:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#60875001 "Staphylococcus epidermidis"
* method = $sct#83581000052107 "Matrix assisted laser desorption ionization time of flight mass spectrometry technique"
* specimen = Reference(spec-micro-nares-isolate)

// PrId with the subtype as value.
Instance: obs-micro-adenovirus-culture
InstanceOf: ObservationCultureSpecificEu
Title: "Observation: adenovirus culture, human adenovirus 8"
Description: "Specific culture with a PrId code: adenovirus was sought and found, and the result names the subtype."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#9782-4 "Adenovirus sp identified in Specimen by Organism specific culture"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-12T10:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $sct#46957004 "Human adenovirus 8"
* method = $sct#703752003 "Organism specific culture"
* specimen = Reference(spec-micro-conjunctival-swab)

// ------------------------------------------------------ organism identification

Instance: obs-micro-sputum-culture-positive
InstanceOf: ObservationCultureGeneralEu
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
* method = $sct#702658000 "Microbial culture"
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
Description: "Targeted molecular detection with a preferred code: the target in the component, system {Specimen} and method {Molgen}, with the specimen in Specimen.type and the technique in Observation.method."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105875-9 "Bordetella pertussis DNA [Presence] in Specimen by Molgen"
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
* code = $loinc#105875-9 "Bordetella pertussis DNA [Presence] in Specimen by Molgen"
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

// ------------------------------------------------------------- susceptibility
//
// White paper example (chapter Phenotypic Susceptibility): the multidrug
// resistant Klebsiella pneumoniae identified by MALDI-TOF is tested with an
// automated MIC panel for gram-negative bacteria and by disk diffusion. The
// categories follow the EUCAST breakpoints for Enterobacterales, version 15.0.

Instance: spec-micro-isolate-kpneumoniae
InstanceOf: SpecimenMicrobiologyEu
Title: "Specimen: Klebsiella pneumoniae isolate for susceptibility testing"
Description: "Isolate from the sputum culture, identified as Klebsiella pneumoniae, used for susceptibility testing. It references the primary sputum specimen through parent."
Usage: #example
* status = #available
* type = $sct#119303007 "Microbial isolate"
* subject = Reference(pat-lab-example)
* parent = Reference(spec-micro-sputum)

Instance: obs-micro-ast-panel-kpneumoniae
InstanceOf: ObservationSusceptibilityPanelEu
Title: "Observation: antibiogram of Klebsiella pneumoniae"
Description: "The antibiogram groups the susceptibility results of the isolate through hasMember and points back at the identification of the organism through triggeredBy. It has no value of its own."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* extension[triggeredBy].extension[observation].valueReference = Reference(obs-ident-maldi-kpneumoniae)
* extension[triggeredBy].extension[type].valueCode = #reflex
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-04T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* specimen = Reference(spec-micro-isolate-kpneumoniae)
* hasMember[+] = Reference(obs-micro-ast-meropenem)
* hasMember[+] = Reference(obs-micro-ast-cefepime)
* hasMember[+] = Reference(obs-micro-ast-amikacin)
* hasMember[+] = Reference(obs-micro-ast-sxt)

Instance: obs-micro-ast-meropenem
InstanceOf: ObservationSusceptibilityEu
Title: "Observation: meropenem, MIC > 8 mg/L, resistant"
Description: "The isolate grows at the highest meropenem concentration of the automated panel. The MIC is given with the comparator >; without it the value would read as an exact 8 mg/L, which is not resistant under a breakpoint R > 8 mg/L. The category is read from the EUCAST breakpoint table, version 15.0."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18943-1 "Meropenem [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-04T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueQuantity = 8 'mg/L' "mg/L"
* valueQuantity.comparator = #>
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* interpretation.extension[interpretationStandard].extension[standard].valueCodeableConcept = SusceptibilityStandardEuCs#EUCAST "EUCAST"
* interpretation.extension[interpretationStandard].extension[version].valueString = "15.0"
* method = $sct#708073008 "MIC"
* specimen = Reference(spec-micro-isolate-kpneumoniae)

Instance: obs-micro-ast-cefepime
InstanceOf: ObservationSusceptibilityEu
Title: "Observation: cefepime, MIC 2 mg/L, susceptible, increased exposure (EUCAST)"
Description: "An MIC in the EUCAST category I, susceptible, increased exposure. No HL7 v3 code covers this category; it is coded with SNOMED CT 1306583007."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18879-7 "Cefepime [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-04T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueQuantity = 2 'mg/L' "mg/L"
* interpretation = $sct#1306583007 "I (Susceptible, increased exposure) EUCAST (European Committee on Antimicrobial Susceptibility Testing) category 2019"
* interpretation.extension[interpretationStandard].extension[standard].valueCodeableConcept = SusceptibilityStandardEuCs#EUCAST "EUCAST"
* interpretation.extension[interpretationStandard].extension[version].valueString = "15.0"
* method = $sct#708073008 "MIC"
* specimen = Reference(spec-micro-isolate-kpneumoniae)

Instance: obs-micro-ast-amikacin
InstanceOf: ObservationSusceptibilityEu
Title: "Observation: amikacin, MIC <= 2 mg/L, susceptible"
Description: "The isolate is inhibited at the lowest amikacin concentration of the automated panel. The MIC is given with the comparator <=."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18860-7 "Amikacin [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-04T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueQuantity = 2 'mg/L' "mg/L"
* valueQuantity.comparator = #<=
* interpretation = $v3-ObservationInterpretation#S "Susceptible"
* interpretation.extension[interpretationStandard].extension[standard].valueCodeableConcept = SusceptibilityStandardEuCs#EUCAST "EUCAST"
* interpretation.extension[interpretationStandard].extension[version].valueString = "15.0"
* method = $sct#708073008 "MIC"
* specimen = Reference(spec-micro-isolate-kpneumoniae)

Instance: obs-micro-ast-sxt
InstanceOf: ObservationSusceptibilityEu
Title: "Observation: trimethoprim-sulfamethoxazole by disk diffusion, resistant (category only)"
Description: "Disk diffusion result for which the laboratory system transmits the category only, not the zone diameter. The category is the value, coded like the interpretation, and repeated in the interpretation."
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18998-5 "Trimethoprim+Sulfamethoxazole [Susceptibility]"
* subject = Reference(pat-lab-example)
* effectiveDateTime = "2026-03-04T09:00:00+01:00"
* performer[+].display = "Microbiology laboratory"
* valueCodeableConcept = $v3-ObservationInterpretation#R "Resistant"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* interpretation.extension[interpretationStandard].extension[standard].valueCodeableConcept = SusceptibilityStandardEuCs#EUCAST "EUCAST"
* interpretation.extension[interpretationStandard].extension[version].valueString = "15.0"
* method = $sct#1303975003 "Disk diffusion technique"
* specimen = Reference(spec-micro-isolate-kpneumoniae)
