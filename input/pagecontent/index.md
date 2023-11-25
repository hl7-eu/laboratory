

### Notes for ballotters

<div xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">
		<p>Ballotters are invited to evaluate and provide their feedbacks of the following open issues:</p>
		<ul>
			<li>Allow for more than one DiagnosticReport resource as Bundle.entry. See <a href="StructureDefinition-Bundle-eu-lab.html">Bundle-eu-lab</a> for more details</li>
			<li>Allow Composition to have as section entry the DiagnosticReport resource.  See <a href="StructureDefinition-Composition-eu-lab.html">Composition-eu-lab</a> for more details</li>
			<li>Adoption of obligations. See the <a href="obligations.html">Obligations</a> page for more details</li>
		</ul>
	</blockquote>
</div>


### The Laboratory Domain
Clinical laboratory results play an important role in diagnosis, treatment, and follow-up of patients. 
The availability of high quality test results, and the capacity of sharing them, is therefore essential being often the basis for clinical decision making.
For this reason the Laboratory has been selected as one of the priority domains for the European EHR eXchange Format (E-EHRxF).

### Scope

Define a set of common rules to be applied to HL7 FHIR to define how to represent a **Laboratory Report** in the **European** Context, coherently with the European eHN Guidelines (see the European [eHealth - Key documents](https://health.ec.europa.eu/ehealth-digital-health-and-care/key-documents_en) ).

This IG covers laboratory result reports within the core fields of in-vitro diagnostics, for example clinical biochemistry, haematology, immunohematology, microbiology, immunology, while leaving out some specialised laboratory domains requiring specialised reporting structure like histopathology or medical genetics.

This guide is not limited to test results performed by clinical laboratories on Human specimens (from human subject), but it considers also results on non-human materials or living subjects; or non-human specimens paired with a human subject. Derived guides may restrict the scope as needed (e.g. limiting the scope to well-identified human beings)

### Purpose
The goal of this Implementation Guide is to define an European standard for the Laboratory Report to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (E-EHRxF).

This project is promoted by HL7 Europe, but realized in collaboration with several other European and national organizations and projects..

The aspiration of this guide is that of being used as basis for European National Guides, the Euroepan EHRxF and - consequently - by MyHealth@EU for the EU cross-border services.

### Background

The project background is described in the [background](background.html) page.

### Design choiches

The solution adopted by this guide tries to balance the requirement of representing a Laboratory Report as a legally signed document (i.e. as a FHIR document), with that of enabling their representation as DiagnosticReport. All this, taking into account the R5 DiagnosticReport design pattern where the DiagnosticReport <-> Composition relationship is directed from the DiagnosticReport to the Composition resource.
This is done by:
- using a HL7 FHIR document representation, but requiring the document Bundle to always include the DiagnosticReport; and
- pre-adopting R5 rules for the inclusion of entries in the Document Bundle.

More details in the [Design choices](design-choice.html) page.

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
