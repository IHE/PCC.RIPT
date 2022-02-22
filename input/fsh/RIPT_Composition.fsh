Profile:   IHE_RIPT_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.RIPT.Composition
Title: "Refferal For Interfacility Patient Transport"
Description:      """
composition of the FHIR elements that are used to build the FHIR Document for the Refferal For Interfacility Patient Transport document.
the following cardinalities follow the documentation in the RIPT profile: 
- RE 0..1 IPS Advance Directives 
- R 1..1 IPS Allergies and Intolerances
- R 1..1 IPS Medication Summary
- RE 0..1 IPS History of Past Illness
- R 1..1 IPS Functional Status
- RE 0..1 IPS History of Procedures
- O 0..1 Immunizations
- O 0..1 IPS Medical Devices
- RE 0..1 IPS Problems
- O 0..1 IPS Results
- RE 0..1 IPS Vital Signs
- RE 0..1 IPS History of Pregnancy
- O 0..1 IPS Plan of Care
- O 0..1 Payor
- RE 0..1 Coded Reason for Referral
- RE 0..1 Transport Instructions
"""
* subject 1..1

// in addition to the sections defined in IPS...
* section contains 
	sectionCertificationOfMedicalNecessity 0..1 and
	sectionCoverage 0..1 and 
	sectionReasonForReferral 0..1 and 
	sectionTransportInstructions 0..1  

* section[sectionCoverage] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCoverage] ^extension.valueString = "Section"
* section[sectionCoverage] ^short = "Insurance Section"
* section[sectionCoverage] ^definition = "The insurance information for the patient to cover the encounter event."
* section[sectionCoverage].code = $loinc#48768-6
* section[sectionCoverage].code MS
* section[sectionCoverage].entry ..1 MS
* section[sectionCoverage].entry only Reference(Coverage)
* section[sectionCoverage].entry ^slicing.discriminator.type = #profile
* section[sectionCoverage].entry ^slicing.discriminator.path = "resolve()"
* section[sectionCoverage].entry ^slicing.rules = #open
* section[sectionCoverage].entry ^short = "the Patient's insurance information"
* section[sectionCoverage].entry ^definition = "Contains data on the patient's payers, whether a 'third party' insurance, self-pay, other payer or guarantor, or some combination of payers, and is used to define which entity is the responsible fiduciary for the financial aspects of a patient's care"
* section[sectionCoverage].entry contains Coverage 0..1 MS
* section[sectionCoverage].entry[Coverage] only Reference(Coverage)


* section[sectionReasonForReferral] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionReasonForReferral] ^extension.valueString = "Section"
* section[sectionReasonForReferral] ^short = "Reason for Referral"
* section[sectionReasonForReferral] ^definition = "This section shall include at least one entry describing the reason for referral as described in the Entry Content Module. "
* section[sectionReasonForReferral].code = $loinc#42349-1
* section[sectionReasonForReferral].code MS
* section[sectionReasonForReferral].entry 2..2 MS
//* section[sectionReasonForReferral].entry Reference(Observation and ConditionUvIps)
* section[sectionReasonForReferral].entry ^slicing.discriminator.type = #profile
* section[sectionReasonForReferral].entry ^slicing.discriminator.path = "resolve()"
* section[sectionReasonForReferral].entry ^slicing.rules = #open
* section[sectionReasonForReferral].entry ^short = "Certification of Medical Necessity"
* section[sectionReasonForReferral].entry ^definition = "Indication of whether a physician certification statement (PCS) is available documenting the medical necessity for the EMS encounter. The Certification of Medical Necessity section includes the information necessary to document the justification for the medical transport, including the name and role of the person authorizing the medical transport. This information can be used to generate a Certificate of Medical Necessity (CMN) document for signature."
* section[sectionReasonForReferral].entry contains 
	SimpleObservations 1..1 MS and 
	ConditionsEntry 1..1 MS
* section[sectionReasonForReferral].entry[SimpleObservations] only Reference(Observation)
* section[sectionReasonForReferral].entry[ConditionsEntry] only Reference(ConditionUvIps)


* section[sectionCertificationOfMedicalNecessity] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCertificationOfMedicalNecessity] ^extension.valueString = "Section"
* section[sectionCertificationOfMedicalNecessity] ^short = "Certification of Medical Necessity"
* section[sectionCertificationOfMedicalNecessity] ^definition = "The Certification of Medical Necessity section includes the information necessary to document the justification for the medical transport, including the name and role of the person authorizing the medical transport. This information can be used to generate a Certificate of Medical Necessity (CMN) document for signature."
* section[sectionCertificationOfMedicalNecessity].code = $loinc#52016-3
* section[sectionCertificationOfMedicalNecessity].code MS
* section[sectionCertificationOfMedicalNecessity].entry ..1 MS
//* section[sectionCertificationOfMedicalNecessity].entry Reference(Observation and Practitioner and PractitionerRole)
* section[sectionCertificationOfMedicalNecessity].entry ^slicing.discriminator.type = #profile
* section[sectionCertificationOfMedicalNecessity].entry ^slicing.discriminator.path = "resolve()"
* section[sectionCertificationOfMedicalNecessity].entry ^slicing.rules = #open
* section[sectionCertificationOfMedicalNecessity].entry ^short = "Certification of Medical Necessity"
* section[sectionCertificationOfMedicalNecessity].entry ^definition = "Indication of whether a physician certification statement (PCS) is available documenting the medical necessity for the EMS encounter. The Certification of Medical Necessity section includes the information necessary to document the justification for the medical transport, including the name and role of the person authorizing the medical transport. This information can be used to generate a Certificate of Medical Necessity (CMN) document for signature."
* section[sectionCertificationOfMedicalNecessity].entry contains
	MedicalNecessityEntry 0..1 MS and 
	Signature 0..1 MS and
	SignatureDate 0..1 MS and
	SignerProviderType 0..1 MS and
	SignerName 0..1 MS and
	Justification 0..1 MS and 
	ReasonForTransport 0..1 MS and 
	PriorAuthorizationCode 0..1 and
	PriorAuthorizationCodePayer 0..1
* section[sectionCertificationOfMedicalNecessity].entry[MedicalNecessityEntry] only Reference(Observation)
* section[sectionCertificationOfMedicalNecessity].entry[Signature] only Reference(Observation)
* section[sectionCertificationOfMedicalNecessity].entry[SignatureDate] only Reference(Observation)
* section[sectionCertificationOfMedicalNecessity].entry[SignerProviderType] only Reference(PractitionerRole)
* section[sectionCertificationOfMedicalNecessity].entry[SignerName] only Reference(Practitioner)
* section[sectionCertificationOfMedicalNecessity].entry[Justification] only Reference(Observation)
* section[sectionCertificationOfMedicalNecessity].entry[ReasonForTransport] only Reference(Observation)
* section[sectionCertificationOfMedicalNecessity].entry[PriorAuthorizationCode] only Reference(Observation)
* section[sectionCertificationOfMedicalNecessity].entry[PriorAuthorizationCodePayer] only Reference(Observation)


* section[sectionTransportInstructions] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTransportInstructions] ^extension.valueString = "Section"
* section[sectionTransportInstructions] ^short = "Transport Instructions"
* section[sectionTransportInstructions] ^definition = "This section contains narrative information provided by the patient’s care provider(s) to indicate any care that should be rendered during the transport."
* section[sectionTransportInstructions].code = $loinc#74213-0
* section[sectionTransportInstructions].code MS
* section[sectionTransportInstructions].entry ..* MS
* section[sectionTransportInstructions].entry Reference(Observation and Location)
* section[sectionTransportInstructions].entry ^slicing.discriminator.type = #profile
* section[sectionTransportInstructions].entry ^slicing.discriminator.path = "resolve()"
* section[sectionTransportInstructions].entry ^slicing.rules = #open
* section[sectionTransportInstructions].entry ^short = "Transport Instructions Section Entries"
* section[sectionTransportInstructions].entry ^definition = "This section contains narrative information provided by the patient’s care provider(s) to indicate any care that should be rendered during the transport and the Destination information."
* section[sectionTransportInstructions].entry contains
	TrasnportInstructions 0..1 MS and
	DestinationInformation 0..1 MS and
	DestinationType 0..1 MS
* section[sectionTransportInstructions].entry[TrasnportInstructions] Reference(Observation)
* section[sectionTransportInstructions].entry[DestinationInformation] Reference(Location)
* section[sectionTransportInstructions].entry[DestinationInformation] Reference(Observation)
