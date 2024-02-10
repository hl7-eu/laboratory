{% include fsh-link-references.md %}

<div xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">		
		<p>Obligations have been added to this version of the guide only as <b>Informative</b> material to collect feedback about their usage.</p>		
		<p>For more details about obligations please refer to the <a href="obligations.html">Obligations page</a></p>
	</blockquote>
</div>


### The Laboratory Domain
Clinical laboratory results play an important role in diagnosis, treatment, and follow-up of patients. 
The availability of high quality test results, and the capacity of sharing them, is therefore essential being often the basis for clinical decision making.
For this reason the Laboratory has been selected as one of the priority domains for the European EHR eXchange Format (E-EHRxF).

### Scope

Specify a set of rules to be applied to HL7 FHIR to define how to represent a **Laboratory Report** in the **European** Context, coherently with the European eHN Guidelines (see the [European eHealth - Key documents](https://health.ec.europa.eu/ehealth-digital-health-and-care/key-documents_en) ).

This Implementation Guide applies to laboratory reports within the core fields of in-vitro diagnostics, for example clinical biochemistry, haematology, immunohematology, microbiology, immunology, while leaving out some specialised laboratory domains like histopathology or medical genetics. 
This version focuses only on common rules that apply to all the in-scope situations, without specifying specialized domain-specific profiles, as for example microbiology profiles.

This guide is not limited to test results performed by clinical laboratories on Human specimens (from human subject), but it considers also results on non-human materials or living subjects; or non-human specimens paired with a human subject. Derived guides may restrict the scope as needed (e.g. limiting the scope to well-identified human beings)

### Purpose
The goal of this Implementation Guide is to define an European standard for the Laboratory Report to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (E-EHRxF).

This project is promoted by HL7 Europe, but realized in collaboration with several other European and national organizations and projects.

The aspiration of this guide is that of being used as basis for European National Guides, the Euroepan EHRxF and - consequently - by MyHealth@EU for the EU cross-border services.

### Background

The project background is described in the [background](background.html) page.

### Design choiches

The solution adopted by this guide - and detailed in the [Design choices](design-choice.html) page - balances the business requirement of Laboratory Report as legally signable document (i.e. as a FHIR document), with the expectation to get Lab Report by searching per DiagnosticReport. All this, taking into account the R5 DiagnosticReport design pattern where the DiagnosticReport <-> Composition relationship is directed from the DiagnosticReport to the Composition resource.
This is done by supporting both perspectives (see figure below) requiring the document bundle ( [BundleLabReportEu] ) to always include a DiagnosticReport ( [DiagnosticReportLabEu] ) and enabling the pre-adoption of the R5 rules for the inclusion of entries in the Document Bundle.

<div>
<img src="lab-structure.png"  alt="Laboratory report design approach" width="50%">
<p>Figure 1 - Overview of the report design approach</p>
<p></p>
</div>

### Navigating the profiles

The following diagrams provide a browseable overview of the profiles specified by this guide.

The first highlights the most relevant relationships starting from the DiagnosticReport ( [DiagnosticReportLabEu] ) resource (REST Perspective).

<div>
<p>{% include links-overview.svg %}</p>
<p>Figure 2 - Overview of the profiles relationships</p>
<p></p>
</div>

The second the profiles included in the document bundle ( [BundleLabReportEu] ) (Document Perspective).

<div>
<p>{% include document-overview.svg %}</p>
<p>Figure 3 - Overview of the document structure</p>
<p></p>
</div>


### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP statements

{% include ip-statements.xhtml %}

### Authors and Contributors

Please refer to the [Authors and Contributors](contributors.html) page.
