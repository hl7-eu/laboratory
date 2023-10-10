
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">
		<b>Proof of concept for this version of the guide.</b>
		<p>Obligations have been added to this version of the guide only as a proof of concept to collect feedbacks from future potential users.</p>
		<p>Obligations have been defined only for few profiles used as example.</p>
		<p><b>Ballotters are invited to provide thier feedbacks about thier usage, representation, and level of specification that the guide should (or should not) have. Inputs on the defined actors are also welcomed.</b></p>
	</blockquote>
</div>


### Overview 

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors may, should or shall apply to the data elements specified by the profiles.

The current choice has been that of defining the obligation in StructureDefinitions distict form those used for defining the strcutural constraints.

This page describes also the actors that have been defined for specifying the obligations.

### Actors

Three actors have been specifed:
* the [Creator](ActorDefinition-actor-creator-eu-lab.html) ;
* the [Repository](ActorDefinition-actor-repos-eu-lab.html) ; and 
* the [Consumer](ActorDefinition-actor-consumer-eu-lab.html)

The first is the actor creating the report. this repost can be send to a consumer or to a repository for the report storage and sharing
The second is the system maintaining a copy of the report received, to store and make it availaìble for the consumers.
The last one is the system using the report received or retrieved.

<p>{% include actors.svg %}</p>

### Obligations List


1. [Patient Obligations](StructureDefinition-Patient-obl-eu-lab.html)