Profile:   IHE_RIPT_Condition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id:             IHE.PCC.RIPT.Condition
Title: "RIPT Condition"
Description:      " This profile represents the constraints applied to the Condition resource by the Refferal For Interfacility Patient Trasnport (RIPT) FHIR Implementation Guide."

* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "$this"
* code ^slicing.rules = #open
* code ^slicing.ordered = false
* code ^slicing.description = "Condition code slicing for ICD-10 capability"
* code contains code:ICD10 0..1 MS
* code[ICD10].system = http://hl7.org/fhir/sid/icd-10 (Required)