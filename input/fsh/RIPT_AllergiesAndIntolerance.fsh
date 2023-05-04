Profile:   IHE_RIPT_AllergyIntolerance
Parent: AllergyIntolerance
Id:             IHE.PCC.RIPT.AllergyIntolerance
Title: "RIPT AllergyIntolerance"
Description:      """ This profile represents the constraints applied to the AllergyIntolerance resource by the Refferal For Interfacility Patient Trasnport (RIPT) FHIR Implementation Guide:
Within the AllergyIntolerance section the Content Creator SHALL be able to create an AllergyIntolerance entry to identify the patient’s medication and environmental/food allergies.
Environmental/food allergies using SNOMED-CT SHOULD be used to identify the allergen.

Medication allergies use RxNorm SHOULD be used to only to identify an allergy as a specific drug. To indicate an allergy to a class of drug ICD-10 SHOULD be used."""

* code from AllergyIntolerance_PCS_VS
* code.comment = """
For Environmental/food allergies, SNOMED-CT SHOULD be used to identify the allergen.
To  indicate an allergy to a class of drug ICD-10 SHOULD be used."""


ValueSet: AllergyIntolerance_PCS_VS
Description: "TBD"
Id: AllergyIntolerance.PCS.VS
include all codes from  http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips and http://hl7.org/fhir/sid/icd-10
