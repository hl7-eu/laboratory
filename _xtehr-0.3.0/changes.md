# Change Log - EHDS Logical Information Models v0.3.0

* [**Table of Contents**](toc.md)
* **Change Log**

## Change Log

This page summarizes the main changes applied to this version of the guide.

### from 0.2.1 to 0.3.0

Based on the stakeholder feedback and additional internal reviews, following significant changes have been made in this version:

* EHDSCoverage model removed as out of scope
* EHDSDosage and EHDSDosaging models renamed respectively as * EHDSAdministeredDosage (for a factual dose administered) and EHDSDosage (for dosage instructions)
* EHDSEpisodeOfCare model removed as out of scope
* EHDSFamilyMemberHistory model removed as out of scope
* EHDSFunctionalStatus model removed; respective sections in documents are modeled as a combination of EHDSCondition and EHDSObservation
* EHDSInfectiousContact model removed as out of scope
* EHDSMedia model removed; respective elements in other models use EHDSAttachment instead
* EHDSMedicationStatement model renamed to EHDSMedicationUse
* EHDSSocialHistory model removed; respective elements in other models use EHDSObservation instead
* EHDSSubstance model removed as out of scope
* EHDSSubstanceUse model removed; respective elements in other models use EHDSObservation
* EHDSDispenseDecline model removed as out of scope
* EHDSDischargeReport significantly reduced

All other models have had some changes according to stakeholder feedback and/or editorial corrections for consistency.

