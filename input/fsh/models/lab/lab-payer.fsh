// -------------------------------------------------------------------------------				
//  Logical Model				lab-payer.fsh
// -------------------------------------------------------------------------------				
Logical: PayerLabEhn				
Id: Payer				
Title: "Health insurance and payment information (A.1.3)"				
Description:  """A.1.3 Health insurance and payment information"""				
* insurance 0..1 BackboneElement "A.1.3.1 Health insurance information" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""				
* insurance.identifier 0..* Identifier "A.1.3.1.1 Health insurance code" """Unique health insurance company identification code. """				
* insurance.name 0..* string "A.1.3.1.2 Health insurance name" """Full, official name of the healthcare insurance provider. """		 		
* insurance.subjectIdentifier 0..* Identifier "A.1.3.1.3 Health insurance number" """Number or code under which the insured person is registered at the insurance provider. """				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabPayer2Fhir				
Id: fhir				
Title: "eHN Lab Payer model to FHIR R4 Map"				
Source: Payer				
Target: "hl7.org/fhir/r4"				
				
* -> "ServiceRequest.conformsTo('http://hl7.eu/fhir/ig/xpandh/StructureDefinition/ServiceRequest-lab-xpandh').insurance.resolve().ofType(Coverage)"				
* insurance -> "Coverage"				
* insurance.identifier -> "Coverage.payor.ofType(Organization).resolve().identifier"				
* insurance.name -> "Coverage.payor.ofType(Organization).resolve().name"				
* insurance.subjectIdentifier -> "Coverage.policyHolder.resolve().identifier"				
* insurance.subjectIdentifier -> "Coverage.beneficiary.resolve().identifier"				
* insurance.subjectIdentifier -> "Coverage.subscriberId"				
* insurance.subjectIdentifier -> "Coverage.subscriber.resolve().identifier"				
// --END				
// --END				
// --END				
