#### Implementation note: animal as specimen source

<div class="dragon">
  <p>
    Issue <a href="https://jira.hl7.org/browse/FHIR-53384">FHIR-53384</a> was discussed and agreed in the Orders and Observation Workgroup of HL7 International, voting on using <code>RelatedPerson</code> for representing the animal as the source of a <code>Specimen</code>.
  </p>
  <p>
    This decision is currently being challenged, because with this approach the <code>Specimen</code> can no longer be assigned to the <code>Patient</code> compartment.
  </p>
  <p>
    Issue <a href="https://jira.hl7.org/browse/FHIR-56301">FHIR-56301</a> therefore proposes introducing a new element <code>Specimen.focus</code> (analogous to <code>Observation.focus</code>).
  </p>
  <p>
    For most use cases, especially when the animal does not need to be explicitly represented as an individual entity, <code>Specimen.type</code> SHALL be used with an appropriate SNOMED CT code (e.g. <code>710069003 | Tick specimen (specimen)</code>).
  </p>
  <p>
    Explicit modeling of the animal itself is only relevant if the animal needs to be represented as a distinct entity (e.g. identifiable animal), or if no suitable SNOMED CT code exists to adequately pre-coordinate the specimen type.
  </p>
  <p>
    How to represent the animal in such cases is currently still under discussion.
  </p>
</div>