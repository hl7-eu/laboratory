The targeted question: is the target named in the test code present? One
profile for every technique — nucleic acid amplification, sequencing,
immunoassay, agglutination, microscopy with a stain — because the result space
is the same: `Detected` or `Not detected`. The technique is read from
`Observation.method`; an indeterminate result is a `dataAbsentReason`, not a
value.

For the microscopic detection of an object named in the code the amount seen
is carried in the semi-quantitative component, as in
[microscopy](StructureDefinition-Observation-microscopy-eu-lab.html).

The conventions and the examples are described on the
[Microbiology](microbiology.html) page.
