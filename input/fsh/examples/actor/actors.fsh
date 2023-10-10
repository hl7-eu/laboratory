Instance: actor-creator-eu-lab
InstanceOf: ActorDefinition
Title: "Actor Laboratory Report Creator"
Description: """Laboratory Report Creator: a system generating and sending/providing a Laboratory Report to a Consumer or to a Repository for the report storage and sharing."""
Usage: #example

* url = "http://hl7.eu/fhir/laboratory/actor-creator-eu-lab"
* name = "LabReportCreator"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Laboratory Report creators. That is the actor creating the report that can be send to a consumer or to a repository for the report storage and sharing."""

Instance: actor-consumer-eu-lab
InstanceOf: ActorDefinition
Title: "Actor Laboratory Report Consumer"
Description: """Laboratory Report Report Consumer: a system receiving/querying and using a Laboratory Report."""
Usage: #example

* url = "http://hl7.eu/fhir/laboratory/actor-consumer-eu-lab"
* name = "LabReportConsumer"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Laboratory Report consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""

Instance: actor-repos-eu-lab
InstanceOf: ActorDefinition
Title: "Actor Laboratory Report Repository"
Description: """Laboratory Report Report Repository: a system maintaining a copy of the received Laboratory Report, to store and make it availaìble for the consumers."""
Usage: #example

* url = "http://hl7.eu/fhir/laboratory/actor-repos-eu-lab"
* name = "LabReportRepos"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Laboratory Report Repositories. That is any system maintaining a copy of the report received, to store and make it availaìble for the consumers."""