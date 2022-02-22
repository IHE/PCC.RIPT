Profile:   IHE_RIPT_Condition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id:             IHE.PCC.RIPT.Condition
Title: "RIPT Condition"
Description:      " This profile represents the constraints applied to the Condition resource by the Refferal For Interfacility Patient Trasnport (RIPT) FHIR Implementation Guide."

* Condition.code ^slicing.discriminator.type = #pattern
* Condition.code ^slicing.discriminator.path = "$this"
* Condition.code ^slicing.rules = #open
* Condition.code ^slicing.ordered = false
* Condition.code ^slicing.description = "Condition code slicing for ICD-10 capability"
* Condition.code contains code:ICD10 0..1 MS
* Condition.code[ICD10].system = http://hl7.org/fhir/sid/icd-10 (Required)