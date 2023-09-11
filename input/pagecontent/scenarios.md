### Laboratory Report scenarios

This page describes laboratory report scenarios for the purpose of **highlighting how laboratory report relevant statues should be set**.

These scenarios, in scope for this guide, relates to tests performed and reported by a clinical laboratory in response to test orders.

More details on statuses and their relationships are provided in [Laboratory result report status](status-mgmt.html).

It is not in scope of this version of this guides specifying the actor-to-actor interactions for supporting such scenarios. (e.g.  how to communicate that a report has been sent in error).

#### Complete Laboratory Report

* A Laboratory, after performing its internal testing workflow, **forms a complete result report**, according to the requirements and query parameters formulated by the ordering entity. Internal testing workflow includes consolidation of all test result orders or order groups and all steps of data quality assurance and validation.
* Then, depending on its internal organization, may inform the application of the clinical practice (known as Order Result Tracker), send the report to the intended recipients included in the Laboratory test order; store a report copy in an EHR-system; etc.

In this case:
* the Laboratory report status is set to “final”;
* all individual test results which are included in the final laboratory report should be also marked as final or cancelled

#### Partial Laboratory Report

* In some cases, a laboratory might **release a laboratory report** which is either **incomplete** (not all results are available or marked as “final”) **or unverified**.
* This usually occurs when some of the results are known to be produced later, but others need to be communicated to report recipients due to specific organizational and/or process rules; or because of the urgency of some results. Note: the ‘delay’ in the results availability may be due to the nature of the test, or to organizational or technical reasons.

In such cases: 
* the report status should be set to “preliminary” or “partial”. 

####  Amended Laboratory Report

* A **laboratory report, after being released as “final”, is modified** (edited or added to).
* the report is complete and verified by an authorized person


In this case:
* The  report status should be set to “amended”, “corrected” or “appended”, depending on the situation.

#### Cancelled Laboratory Report

* In some cases, **a laboratory might not be able to perform any test and deliver a laboratory report**. This might have many reasons, e.g., lost sample, broken tube, dysfunction of the analyser etc. 

In such case:
* the status value should be updated to “cancelled” and 
* the specific details given - preferably as coded values in the TestResultvalue.CodedResult element.
* Additional information may be provided in the result comment element as well.


#### Error Laboratory Report

* It may happen that a **laboratory report is originally created/issued in error**. The report is marked so that the entire report shall not be considered as valid.
* All involved actors are informed about this “in error” report.

In this case:
* the laboratory report status should be set to “entered-in-error”.