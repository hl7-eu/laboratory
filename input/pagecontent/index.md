

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


### Laboratory domain
Clinical laboratory results play an important role in diagnosis, treatment, and follow-up of patients. It is important that laboratories produce high quality test results as they often are the basis for clinical decision making. Proper quality management is therefore essential.

### Scope

Define a set of common rules to be applied to HL7 FHIR to define how to represent a **Laboratory Report** in the **European** Context.

This IG coveres laboratory result reports within the core fields of in-vitro diagnostics, for example clinical biochemistry, haematology, immunohematology, microbiology, immunology, while leaving out some specialised laboratory domains requiring specialised reporting structure like histopathology or medical genetics.

This IG covers test results performed by clinical laboratories on:
- Human specimens (from human subject)
- Non-human specimens such as non-human material or non-human living subject
- Non-human specimens paired with a human subject


<blockquote class="stu-note">
<p>
    The specification herewith documented is work in progress.
    No liability can be inferred from the use or misuse of this specification, or its consequences.
</p>
</blockquote>

### Purpose
The goal of this Implementation Guide is to define an European standard for the Laboratory Report to facilitate the harmonization among the national initiatives and prepare the ground for the future European EHR eXchange Format.

This project is promoted by HL7 Europe, but realized in collaboration with several other European and national organizations and project.

The aspiration of this guide is that to be used as basis for European National Guides, the Euroepan EHRxF and - consequently - by MyHealth@EU for the EU cross-border services.

### Background

The project background and the reasons for the design choiches (FHIR document including also the DiagnosticReport resource) are described in the background page.

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
