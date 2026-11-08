The targeted question: is the target named in the test code present? One
profile for the molecular and the immunological detection — nucleic acid
amplification, immunoassay, immunofluorescence, agglutination — because the
result space is the same: `Detected` or `Not detected`. The technique is read
from `Observation.method`; an indeterminate result is a `dataAbsentReason`,
not a value. In the workflow this is the step *direct identification*.

The microscopic examination aimed at a named target is a
[specific microscopy](StructureDefinition-Observation-microscopySpecific-eu-lab.html).

The conventions and the examples are described in the
[Direct identification](microbiology.html#direct-identification) section of the [Microbiology](microbiology.html) page.
