The culture aimed at a target named in the code, e.g. MRSA or adenovirus. A
code with the property `PrThr` is answered with `Detected` or `Not detected`;
unexpected growth is then a general culture of its own, which this observation
references through `hasMember`, and the identification that follows points
back at the growth through `triggeredBy`. A code with the property `PrId` may
also be answered with the organism found: a subtype, an unexpected organism,
or a broad group in a preliminary result.

The conventions and the examples are described in the
[Culture](microbiology.html#culture) section of the [Microbiology](microbiology.html) page.
