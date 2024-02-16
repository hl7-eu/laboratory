Instance: CRMObservtionResult
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation with certified reference material"
Description: "The concentration of insulin in a sample is 50 mIU/L with reference to IS 66/304 (https://www.nibsc.org/documents/ifu/66-304.pdf)"
Usage: #example

* id = "4335db48-7090-45b3-a2c2-45b45f94a67c" 
* status = #final
* code.coding[+] = http://loinc.org#20448-7	"Insulin [Units/volume] in Serum or Plasma"
* code.coding[+] = http://npu-terminology.org#NPU02496 "P—Insulin; arb.subst.c.(IRP 66/304; proc.) = ? × 10-3 IU/L"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* valueQuantity.value = 50
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#m[iU]/L
* valueQuantity.unit = "mIU/L"
* extension[ObservationCertifiedRefMaterialCodeable].valueCodeableConcept = $nibsc#66/304
* extension[ObservationCertifiedRefMaterialIdentifer].valueIdentifier.system = "NIBSC"
* extension[ObservationCertifiedRefMaterialIdentifer].valueIdentifier.value = "66/304"


