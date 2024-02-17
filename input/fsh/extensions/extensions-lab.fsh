
Extension: DiagnosticReportReference
Id:   composition-diagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: "This extension provides a reference to the DiagnosticReport instance that is associated with this Composition."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Composition)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Reference (DiagnosticReport)


Extension: ObservationCertifiedRefMaterialCodeable
Id:   observation-certifiedRefMaterialCodeable
Title:  "Certified Reference Material: CodeableConcept"
Description: """This extension links this observation with the certified reference material used for the calibration.
The certified reference material is identified by using a CodeableConcept.
This extension should be used when the unit is UCUM [IU].""" 
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Observation)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only CodeableConcept
* value[x] from LabCertifiedReferenceMaterialVS (example)

Extension: ObservationCertifiedRefMaterialIdentifer
Id:   observation-certifiedRefMaterialIdentifer
Title:  "Certified Reference Material: Identifier"
Description: """This extension links this observation with the certified reference material used for the calibration.
The certified reference material is identified by using an Identifier.
This extension should be used when the unit is UCUM [IU].""" 
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Observation)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Identifier

Extension: DeviceLabTestKit
Id:   observation-deviceLabTestKit
Title:  "Device Laboratory Test Kit"
Description: """This extension links this observation with the laboratory test kit used for this test.
 Usually only one laboratory test kit is referred""" 
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Observation)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Reference(Device)