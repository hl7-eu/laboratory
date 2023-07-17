### Terminology systems
Two main international laboratory terminology systems for test coding are being used in Europe: Logical Observation Identifiers Names and Codes (LOINC) and Nomenclature for Properties and Units (NPU). This represents an interoperability challenge as mapping between those two code systems might be necessary.

It should be noted that additional code systems are needed for coding of specimen types, anatomic specification, specimen collection, processing and examination techniques, devices, containers, measurement units, and ordinal or nominal-scale test results.
Complementary to the coding of laboratory tests, test results are to be documented in a standardised and coded way too. Regularly, test qualitative results are expressed via SNOMED CT concepts, quantitatively measured results are documented by standardised units, which are expressed preferably via UCUM to allow computer processing.  As SNOMED CT is the most extensive terminology in health care, this code system offers solutions for the coded representation of laboratory-related facts in most cases.

### Result Report Workflow
Result report use case covers workflows related to tests performed and reported by a clinical laboratory in response to in-vitro diagnostic test orders.

#### Standard Result Report Workflow
Laboratory, after performing its internal testing workflow, which includes consolidation of all test result orders or order groups and all steps of data quality assurance and validation, forms a complete result report, formed according to the requirements and query parameters formulated by the ordering entity, marks report as “final” (sets Laboratory result report status to “final”) and sends it to the application of the clinical practice (known as Order Result Tracker) as well as to all informants included in the Laboratory test order. A copy of the report might be stored to an attached EHR repository system.
All individual test results which are included in the final laboratory result report should be also marked as Final or Cancelled.

#### Partial Result Report Workflow
In some cases, laboratory might release result report which is either incomplete (not all results are available or marked as “final”) or is unverified. This is usually the case when some of the results are known to be produced later (due to the nature of the test or due to organisational or technical reasons in laboratory) while other test results need to be communicated to report recipients due to a specific organisational and/or process rules or due to an urgency of some of the test results. In such case the report status should be always set to “preliminary” or “partial”. For details see also [Laboratory result report status](#laboratory-result-report-status).

####	Amended Result Report Workflow
When result report content or referenced resources have been modified (edited or added to) after being released as "final" and the report is complete and verified by an authorised person, report status should be set to “amended”, “corrected” or “appended”, depending on the situation. For details see also [Laboratory result report status](#laboratory-result-report-status).

#### Cancelled Result Report Workflow
In some cases, laboratory might not be able to perform any test and deliver a result report. This might have many reasons, e.g., lost sample, broken tube, dysfunction of the analyser etc. In such case the status value should be updated to "cancelled" and the specific details given - preferably as coded values in the TestResultvalue.CodedResult element. Additional information may be provided in the result comment element as well.

#### Error Result Report Workflow
If the laboratory result report was originally created/issued in error, then its status should be set to “entered-in-error”. This is an amendment that marks that the entire report should not be considered as valid.

### Laboratory result report status
Laboratory result reports, as documented in the previous chapters, could exist in several states depending on a particular workflow. Applications consuming laboratory test result reports must take careful note of updated (revised) reports and ensure that retracted reports are appropriately handled.

For applications providing diagnostic reports, such as laboratory result reports, a report should not be final until all the individual data items reported with it are final or appended.

If the report has been withdrawn following a previous final release, the report and associated observations should be retracted by replacing the status codes with the concept "entered-in-error" and setting the conclusion/comment (if provided) and the text narrative to some text like "This report has been withdrawn" in the appropriate language. A reason for retraction may be provided in the narrative. A state machine documents possible transitions between states.

Laboratory result report is implemented using DiagnosticReport resource in FHIR. It includes clinical context such as requesting provider information, and some mix of atomic results, images, textual and coded interpretations, formatted representation of diagnostic reports and status information.

Diagnostic report status value set comprises from following status codes:

|Lvl|Code|Display|Definition|
|:---:|----|-------|----------|
|1|registered|Registered|The existence of the report is registered, but there is nothing yet available.|
|1|partial|Partial|This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.|
|2|preliminary|Preliminary|Verified early results are available, but not all results are final.|
|1|final|Final|The report is complete and verified by an authorized person.|
|1|amended|Amended|Subsequent to being final, the report has been modified. This includes any change in the results, diagnosis, narrative text, or other content of a report that has been issued.|
|2|corrected|Corrected|Subsequent to being final, the report has been modified to correct an error in the report or referenced results.|
|2|appended|Appended|Subsequent to being final, the report has been modified by adding new content. The existing content is unchanged.|
|1|cancelled|Cancelled|The report is unavailable because the measurement was not started or not completed (also sometimes called "aborted").|
|1|entered-in-error|Entered in Error|The report has been withdrawn following a previous final release. This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).|
|1|unknown|Unknown|The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.|

<div>
<p></p>
<img src="diagnostic-report-state-machine.png"  alt="Laboratory result report state machine diagram" width="60%">
<p></p>
</div>

### Observation status
Not only the report itself, but also its entries, i.e., individual Observations included in the laboratory result report, could be in a different lifecycle stage. This stage could be expressed using a status code as described in the table below with state transitions depicted in the State machine diagram.

|Lvl|Code|Display|Definition|
|:---:| --------- | ----------- | ------------------------------------------------------------------------------------- |
| 1 | registered  | Registered  | The existence of the observation is registered, but there is no result yet available. |
| 1 | preliminary | Preliminary | This is an initial or interim observation: data may be incomplete or unverified.      |
| 1 | final       | Final       | The observation is complete and there are no further actions needed. Additional information such "released", "signed", etc would be represented using [Provenance](provenance.html) which provides not only the act but also the actors and dates and other related data. These act states would be associated with an observation status of `preliminary` until they are all completed and then a status of `final` would be applied. |
| 1 | amended     | Amended     | Subsequent to being Final, the observation has been modified subsequent. This includes updates/new information and corrections. |
| 2 |  corrected  | Corrected   | Subsequent to being Final, the observation has been modified to correct an error in the test result.|
| 1 | cancelled   | Cancelled   | The observation is unavailable because the measurement was not started or not completed (also sometimes called "aborted").|
| 1 | entered-in-error | Entered in Error | The observation has been withdrawn following previous final release. This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".). |
| 1 | unknown      | Unknown    | The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which. |

<div>
<p></p>
<img src="observation-state-machine.png"  alt="Observation state machine diagram" width="60%">
<p></p>
</div>

# Composition status (R4)
A Composition defines the structure and narrative content necessary for a laboratory report. A Composition status represents a workflow and clinical status of the composition.

|Lvl|Code|Display|Definition|
|:---:| --------- | ----------- | ------------------------------------------------------------------------------------- |
| 1 | preliminary | Preliminary | This is a preliminary composition or document (also known as initial or interim). The content may be incomplete or unverified.                                                                                |
| 1 | final       | Final       | This version of the composition is complete and verified by an appropriate person and no further work is planned. Any subsequent updates would be on a new version of the composition.                        |
| 1 | amended     | Amended     | The composition content or the referenced resources have been modified (edited or added to) subsequent to being released as "final" and the composition is complete and verified by an authorized person. |
| 1 | entered-in-error | Entered in Error | The composition or document was originally created/issued in error, and this is an amendment that marks that the entire series should not be considered as valid.                                    |

A following state machine diagram describes transitions between statuses.

<div>
<p></p>
<img src="composition-state-machine-R4.png"  alt="Composition state machine diagram - R4" width="60%">
<p></p>
</div>


# Composition status (R5)
Composition status codes have been extended in R5 to better match different workflows and correspondence between Composition status and DiagnosticReport status.

|Lvl|Code|Display|Definition|
|:---:| --------- | ----------- | ------------------------------------------------------------------------------------- |
| 1 | registered  | Registered  | The existence of the composition is registered, but there is nothing yet available.   |
| 1 | partial     | Partial     | This is a partial (e.g. initial, interim or preliminary) composition: data in the composition may be incomplete or unverified.                                                                            |
| 2 | preliminary | Preliminary | Verified early results are available, but not all results are final.                  |
| 1 | final       | Final       | This version of the composition is complete and verified by an appropriate person and no further work is planned. Any subsequent updates would be on a new version of the composition.                        |
| 1 | amended     | Amended     | The composition content or the referenced resources have been modified (edited or added to) subsequent to being released as "final" and the composition is complete and verified by an authorized person. |
| 2 | corrected   | Corrected   | Subsequent to being final, the composition content has been modified to correct an error in the composition or referenced results.                                                                         |
| 2 | appended    | Appended    | Subsequent to being final, the composition content has been modified by adding new content. The existing content is unchanged.                                                                             |
| 1 | cancelled   | Cancelled   | The composition is unavailable because the measurement was not started or not completed (also sometimes called "aborted").                                                                            |
| 1 | entered-in-error | Entered in Error | The composition or document was originally created/issued in error, and this is an amendment that marks that the entire series should not be considered as valid.                                    |
| 1 | deprecated  | Deprecated  | This composition has been withdrawn or superseded and should no longer be used.       |
| 1 | unknown     | Unknown     | The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.                                                             |

A following state machine diagram describes transitions between statuses.

<div>
<p></p>
<img src="composition-state-machine-R5.png"  alt="Composition state machine diagram - R5" width="60%">
<p></p>
</div>


### Diagnostic report status and Observation status
The status of the document and status of its entries is partially independent from the workflow point of view thus specification of the consistency rules or mapping would be difficult. However some basic rules could be probably specified as described in the following table.

| DiagnosticReport status | Excerpt from deiftion | Observation status recommendations for implementers           |
| ----------------------- | --------------------- | ------------------------------------------------------------- |
| registered              |                       | All Observations should be registered.                        |
| partial                 | Data in the report may be incomplete or unverified. | Some Observation.status are not final and/or the report has not been verified (Composition.attester is empty) |
| preliminary             | Verified early results are available, but not all results are final. |  Report is verified (Composition.attester is not empty) and some Observation.status are not final. |
| final                   | The report is complete and verified. | Report is verified (Composition.attester is not empty) and all Observation.status are final or some are canceled. |
| amended                 | Report has been modified. This includes any change in the content of a report that has been issued. | (Some Observation.status are entered-in-error or amended rest of the Observation.status are final) and/or any other part of the report has changed. |
| corrected               | The report has been modified to correct an error subsequent to being final. | Some Observation.status are corrected or entered-in-error and the rest of the Observation.status are final. |
| appended                | Subsequent to being final, the report has been modified by adding new content. | Report is verified (Composition.attester is not empty) and all Observation.status are final or some are canceled. |
| cancelled               | The report is unavailable because the measurement was not started or not completed | All Observation.status are cancelled |
| entered-in-error        | The report has been withdrawn following a previous final release. | All Observation.status are entered-in-error |
| unknown                 |  | All Observation.status are unknown. |

### Diagnostic report status and Composition status
Status of the laboratory result report (DiagnosticReport) and its structured content (Composition) should be consistent and implementers should keep this consistency in mind. As value sets for the Composition status codes differ in R4 and R5, different rules should apply in both versions of the FHIR specification as described in the following articles.

#### Diagnostic report status and Composition status - R4
Recommended mapping between DiagnosticReport status codes and Composition.status codes for FHIR R4:

| DiagnosticReport status | Composition status |
| ----------------------- | ------------------ |
| registered              | preliminary        |
| partial                 | preliminary        |
| preliminary             | preliminary        |
| final                   | final              |
| amended                 | amended            |
| corrected               | amended            |
| appended                | amended            |
| cancelled               | final              |
| entered-in-error        | entered-in-error   |
| unknown                 | ANY status         |

#### Diagnostic report status and Composition status - R5
Recommended mapping between DiagnosticReport status codes and Composition.status codes for FHIR R5:

| DiagnosticReport status | Composition status |
| ----------------------- | ------------------ |
| registered              | registered         |
| partial                 | partial            |
| preliminary             | preliminary        |
| final                   | final              |
| amended                 | amended            |
| corrected               | corrected          |
| appended                | appended           |
| cancelled               | cancelled          |
| entered-in-error        | entered-in-error   |
| unknown                 | unknown            |
