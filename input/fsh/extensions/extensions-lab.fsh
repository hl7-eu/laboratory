
RuleSet: ExtensionContext(path)
// copied by mCode
* ^context[+].type = #element
* ^context[=].expression = "{path}"


Extension: DiagnosticReportReference
Id:   composition-DiagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: "This extension provides a reference to the DiagnosticReport instance that is associated with this Composition."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Composition)
* value[x] only Reference (DiagnosticReport)