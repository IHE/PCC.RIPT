Profile:   IHE_RIPT_Condition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id:             IHE.PCC.RIPT.Condition
Title: "RIPT Condition"
Description:      " This profile represents the constraints applied to the Condition resource by the Refferal For Interfacility Patient Trasnport (RIPT) FHIR Implementation Guide:
Within the Problems section the Content Creator SHALL be able to create a Condition entry to identify Medical/surgical History conditions and findings for the patient being transported. Including
behaviors that may affect transport personnel (e.g., combativeness)."

* code from Condition_PCS_VS
* code.comment = """
TBD
"""

ValueSet: Condition_PCS_VS
Description: "TBD"
Id: Condition.PCS.VS
include all codes from  http://hl7.org/fhir/uv/ips/ValueSet/problems-snomed-absent-unknown-uv-ips and http://hl7.org/fhir/sid/icd-10