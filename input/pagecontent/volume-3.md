# 6 RIPT Content Modules

Consuming systems to be responsible for translating Standard specific codes to NEMSIS codes 

### 6.3.1 RIPT CDA Document Content Modules <a name="CDA-Document-Content-Modules"> </a>

#### 6.3.1.D Routine Interfacility Patient Transport (RIPT) Document Content Module 

##### 6.3.1.D.1 Format Code
The XDSDocumentEntry format code for this content is urn:ihe:pcc:ript:2017 

##### 6.3.1.D.2 Parent Template
International Patient Summary (2.16.840.1.113883.10.22.1.1)
[IPS CDA Templates](https://art-decor.org/art-decor/decor-templates--hl7ips-?id=2.16.840.1.113883.10.22.14&effectiveDate=dynamic)

##### 6.3.1.D.3 Referenced Standards
All standards which are referenced in this document are listed below with their common abbreviation, full title, and link to the standard. 
- [National EMS Information Services [NEMSIS]](https://nemsis.org/media/nemsis_v3/release-3.5.0/DataDictionary/PDFHTML/EMSDEMSTATE/index.html)
- [HL7 FHIR standard R4 [FHIR R4]](http://hl7.org/fhir/r4/)
- [HL7 CDA Release 2.0 [CDAR2]](http://www.hl7.org/documentcenter/public/standards/dstu/CDAR2_IG_PROCNOTE_DSTU_R1_2010JUL.zip)
- [HL7 Version 3 Domain Analysis Model, Emergency Medical Services, Release 1 [HL7 EMS DAM]](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=421)
- [HL7 version 3 Domain Information Model; Emergency Model Services, release 1 [HL7 EMS DIM]](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302)
- [International Patient Summary [IPS]](http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.html)
- [HL7 CDA® R2 Implementation Guide: Emergency Medical Services; Patient Care Report, Release 1 – US Realm [EMS Run Report]](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=276)

##### 6.3.1.D.4 Data Element Requirement Mappings to CDA
This section identifies the mapping of data between referenced standards into the CDA implementation guide.
**TODO**

##### 6.3.1.D.5 Referral for Interfacility Patient Transport (RIPT) Document Content Module Specification
This section specifies the header, section, and entry content modules which comprise the Routine Interfacility Patient Transport (RIPT) Document Content Module, using the Template ID as the key identifier. 
Sections that are used according to the definitions in other specifications are identified with the relevant specification document. Additional constraints on vocabulary value sets, not specifically constrained within the section template, are also identified.

**ToDo**

##### 6.3.1.D.6 Referral for Interfacility Patient Transport (RIPT) Conformance
CDA Release 2.0 documents that conform to the requirements of this document content module shall indicate their conformance by the inclusion of the <templateId> XML elements in the header of the document. 
A CDA Document may conform to more than one template. This content module inherits from the International Patient Summary (2.16.840.1.113883.10.22.1.1) and so must conform to the requirements of those templates as well this document specification, Referral for Interfacility Patient Transport Document (TemplateID).

#### 6.3.1.D.5.1 Problems Section Constraint 
Within the Problems section the Content Creator SHALL be able to create a Problem concern entry (TemplateID 1.3.6.1.4.1.19376.1.5.3.1.4.5.2 [PCC TF-2]) to identify Medical/surgical History conditions and findings for the patient being transported. Including behaviors that may affect transport personnel (e.g., combativeness).

The .../code SHALL be “finding” and .../ value SHALL contain the coded value for the condition using the ICD-10-CM vocabulary.

#### 6.3.1.D.5.2 Payor Section Constraint 
Within the Payor section the Content Creator SHOULD be able to create a Coverage Entry (Template ID 1.3.6.1.4.1.19376.1.5.3.1.4.17 [PCC TF-2]) to identify the payment information for the patient being transported. 
The coverage information SHOULD include: 

| Optionality | Cardinality | Name                               | Vocabulary |
|-------------|-------------|------------------------------------|------------|
| RE 		  | [0..*]      | Insurance Company Name             |            |
| RE 		  | [0..1]      | Insurance Company Billing Priority |            |
| RE 		  | [0..1]      | Insurance Company Address          |            |
| RE 		  | [0..1]      | Insurance Company City             |            |
| RE 		  | [0..1]      | Insurance Company State            |            |
| RE 		  | [0..1]      |  Insurance Company Zip code        |            |
| RE 		  | [0..1]      | Insurance Company Country          |            |
| RE 		  | [0..1]      | Insurance Group ID                 |            |
| RE 		  | [0..1]      | Insurance Policy ID Number         |            |
| RE 		  | [0..1]      | Last Name of the Insured           |            |
| RE 		  | [0..1]      | First Name of the Insured          |            |
| RE 		  | [0..1]      | Middle initial/name of the Insured |            |
| RE 		  | [0..1]      | Relationship to the Insured        |            |
| RE 		  | [0..1]      | Insurance Group Name               |            |
{:grid}


# 6.3.1.D.5.3 Social History Section Constraint 
Within the Social History section the content creator SHALL Support the Ocupational data for health option.The Content Creator SHALL be able to
include the following data elements:

| Optionality | Cardinality | Name                                      | Vocabulary |
|-------------|-------------|-------------------------------------------|------------|
| RE 		  | [0..1]      | Patient's Employer                        |            |
| RE 		  | [0..1]      | Patient's Employer's Address              |            |
| RE 		  | [0..1]      | Patient's Employer's City                 |            |
| RE 		  | [0..1]      | Patient's Employer's State                |            |
| RE 		  | [0..1]      | Patient's Employer's Zip code             |            |
| RE 		  | [0..1]      | Patient's Employer's Country              |            |
| RE 		  | [0..1]      | Patient's Employer's Primary Phone Number |            |
{:grid}

# 6.3.1.D.5.4 Allergies and Intolerances Section Constraint 
Within the Allergies and Other Adverse Reactions section the Content Creator SHALL be able to create an Allergies and Intolerances Concern entry (Template ID 1.3.6.1.4.1.19376.1.5.3.1.4.5.3 [PCC TF-2]) to identify the patient’s medication and environmental/food allergies. Environmental/food allergies using SNOMED-CT SHOULD be used to identify the allergen.

Medication allergies using RxNorm SHOULD be used to identify an allergy as a specific drug. To indicate an allergy to a class of drug ICD-10 SHOULD be used to indicate an allergy to a class of drug.

# 6.3.1.D.5.5 History of Procedures Section Constraint 
Within the Procedures and Other Interventions section the Content Creator SHALL be able to create a procedure entry (TemplateID 1.3.6.1.4.1.19376.1.5.3.1.4.19 [PCC TF-2]) to identify any procedures the patient has undergone using ICD-10-PCS

# 6.3.1.D.5.6 Medications Section Constraint 
Within the Medications section the Content Creator SHALL be able to create a medications entry (TemplateID 1.3.6.1.4.1.19376.1.5.3.1.4.7 [PCC TF-2]) to identify the current medications that have been given to the patient using RxNorm. In a narrative form there SHALL be an indication of the date, and time of the last medication administered to the patient.

The entry SHALL include the following elements:

| Optionality | Cardinality | Name                                    | Vocabulary |
|-------------|-------------|-----------------------------------------|------------|
| RE 		  | [0..*]      | Current Medications                     |            |
| RE 		  | [0..1]      | Current Medication Dose                 |            |
| RE 		  | [0..1]      | Current Medication Dosage Unit          |            |
| RE 		  | [0..1]      | Current Medication Administration Route |            |
| RE 		  | [0..1]      | Current Medication Frequency            |            |
{:grid}

# 6.3.1.D.5.7 Results Section Constraint 
Within the Results section the Content Creator SHALL include the narrative results of the Cardiac Rhythm / Electrocardiography (ECG) test, if known.

the Content Creator SHALL be able to create a Coded Result entry (TemplateID 1.3.6.1.4.1.19376.1.5.3.1.3.28 [PCC TF-2]) that will include the type and method of the Cardiac Rhythm / Electrocardiography (ECG) test interpretation, if known.

# 6.3.1.D.5.8 Vital Signs Section Constraint 
Within the Coded Vital Signs section the Content Creator SHALL be able to create a Vital signs observation entries (TemplateID 1.3.6.1.4.1.19376.1.5.3.1.4.13.2 [PCC TF-2]) for the followingvital signs:

| Optionality | Cardinality | Name                               | LOINC      | Constraint                                                                                         |
|-------------|-------------|------------------------------------|------------|----------------------------------------------------------------------------------------------------|
| RE 		  | [0..1]      | SBP (Systolic Blood Pressure)      | 8480-6     | Indicating Method using valueset from BloodPressureMeasurementMethod 2.16.840.1.113883.17.3.11.107 |
| RE 		  | [0..1]      | DBP (Diastolic Blood Pressure)     | 8462-4     | Indicating Method using valueset from BloodPressureMeasurementMethod 2.16.840.1.113883.17.3.11.107 |
| RE 		  | [0..1]      | Mean Arterial Pressure             | 8478-0     | Indicating Method using valueset from BloodPressureMeasurementMethod 2.16.840.1.113883.17.3.11.107 |
| RE 		  | [0..1]      | Heart Rate                         | 8867-4     | Indicating the method or heat rate measurement using 8886-4                                        |
| RE 		  | [0..1]      | Pulse Oximetry                     | 2710-2     |                                                                                                    |
| RE 		  | [0..1]      | Pulse Rhythm                       | 44974-4    |                                                                                                    |
| RE 		  | [0..1]      | Respiratory Rate                   | 9279-1     |                                                                                                    |
| RE 		  | [0..1]      | Respiratory Effort                 | 80341-1    |                                                                                                    |
| RE 		  | [0..1]      | Carbon Dioxide (ETCO2)             | 19889-5    |                                                                                                    |
| RE 		  | [0..1]      | Carbon Monoxide (CO)               | 20563-3    |                                                                                                    |
| RE 		  | [0..1]      | Blood Glucose Level                | 2339-0     |                                                                                                    |
| RE 		  | [0..1]      | Glasgow Coma Score-Eye             | 9267-6     |                                                                                                    |
| RE 		  | [0..1]      | Glasgow Coma Score-Verbal          | 9270-0     |                                                                                                    |
| RE 		  | [0..1]      | Glasgow Coma Score-Motor           | 9268-4     |                                                                                                    |
| RE 		  | [0..1]      | Glasgow Coma Score-Qualifier       | 55285-1    |                                                                                                    |
| RE 		  | [0..1]      | Total Glasgow Coma Score           | 9269-2     |                                                                                                    |
| RE 		  | [0..1]      | Temperature                        | 8310-5     |                                                                                                    |
| RE 		  | [0..1]      | Temperature Method                 | 8327-9     |                                                                                                    |
| RE 		  | [0..1]      | Level of Responsiveness (AVPU)     | 11454-6    |                                                                                                    |
| RE 		  | [0..1]      | Pain Scale Score                   | 38208-5    |                                                                                                    |
| RE 		  | [0..1]      | Pain Scale Type                    | 80316-3    |                                                                                                    |
| RE 		  | [0..1]      | Stroke Scale Score                 | 72089-6    |                                                                                                    |
| RE 		  | [0..1]      | Stroke Scale Type                  | 67521-5    |                                                                                                    |
| RE 		  | [0..1]      | Reperfusion Checklist              | 67523-1    |                                                                                                    |
| RE 		  | [0..1]      | APGAR                              |            |                                                                                                    |
                              1 minute                           | 48334-7    |                                                                                                    |
                              5 minute                           | 48333-9    |                                                                                                    |
                              10 Minute                          | 48332-1    |                                                                                                    |
| RE 		  | [0..1]      | Revised Trauma Score               | Pending    |                                                                                                    |
| RE 		  | [0..1]      | Estimated Body Weight in Kilograms | 3141-9     |                                                                                                    |
| RE 		  | [0..1]      | Length Based Tape Measure          | 8302-2     |                                                                                                    |
{:grid}

# 6.3.1.D.5.9 Functional Status Section Constraint 
Within the Functional Status section the Content Creator SHALL be able to create the following subsections:

| Optionality | Cardinality | Name                                       |
|-------------|-------------|--------------------------------------------|
| RE 		  | [0..1]      | Physical Examination Section               |
| RE 		  | [0..1]      | Integumentary System Section               |
| RE 		  | [0..1]      | Head                                       |
| RE 		  | [0..1]      | Ears, Nose, Mouth, and Throat Section      |
| RE 		  | [0..1]      | Neck                                       |
| RE 		  | [0..1]      | Thorax and Lungs                           |
| RE 		  | [0..1]      | Heart                                      |
| RE 		  | [0..1]      | Abdomen                                    |
| RE 		  | [0..1]      | Abdominal Assessment Finding Location      |
| RE 		  | [0..1]      | Abdomen Assessment                         |
| RE 		  | [0..1]      | Genitalia                                  |
| RE 		  | [0..1]      | Back and Spine Assessment Finding Location |
| RE 		  | [0..1]      | Back and Spine Assessment                  |
| RE 		  | [0..1]      | Extremity Assessment Finding Location      |
| RE 		  | [0..1]      | Extremities Assessment                     |
| RE 		  | [0..1]      | Eye Assessment Finding Location            |
| RE 		  | [0..1]      | Eye Assessment                             |
| RE 		  | [0..1]      | Neurologic System                          | 
{:grid}


# 6.3.1.D.5.10 Transport Instructions Section Constraint 
Within the Transport Instructions section the Content Creator SHALL be able to create a Patient Transfer entry (Template ID 1.3.6.1.4.1.19376.1.5.3.1.1.25.1.4.1 [PCC TF-2]) to identify the destination facility for the patient, expressing the address in: .../participant/participantRole/addr
The address SHALL support the following elements:

| Optionality | Cardinality | Name                       |
|-------------|-------------|----------------------------|
| R 		  | [1..1]      | Destination Street Address |
| R 		  | [1..1]      | Destination City           |
| R 		  | [1..1]      | Destination State          |
| R 		  | [1..1]      | Destination County         |
| R 		  | [1..1]      | Destination ZIP Code       |
| R 		  | [1..1]      | Destination Country        |
| RE 		  | [0..1]      | Destination Facility Name  |
{:grid}

### 6.3.2 CDA Header Content Modules
No new Header Elements.

### 6.3.3 CDA Section Content Modules


##### 6.3.3.10.S1 Certification of Medical Necessity - Section Content Module 
**ToDo As CDA Template**
**Template Name:**		Certification of Medical Necessity
**Template ID:**		1.3.6.1.4.1.19376.1.5.3.1.1.13.2.12 
**Parent Template:**	None
**General Description:**Indication of whether a physician certification statement (PCS) is available documenting the medical necessity for the EMS encounter. The Certification of Medical Necessity section includes the information necessary to document the justification for the medical transport, including the name and role of the person authorizing the medical transport. This information can be used to generate a Certificate of Medical Necessity (CMN) document for signature  
**Section Code:**		52016-3, LOINC, “Ambulance transport, Physician certification for transport information Set”
**Author:**				Patient’s doctor or physician			
**Informant:**			Patient’s doctor or physician
**Subject:**			current recordTarge

|                                                                   **Entries**                                                                 |
|-----------------------------------------------------------------------------------------------------------------------------------------------|
| Opt and Card | Condition | Data Element or Section Name   | Template ID                    | Specification Document  | Vocabulary Constraint  |
|--------------|-----------|--------------------------------|--------------------------------|-------------------------|------------------------|
| R  [1..1]    |           | Medical Necessity Entry        | 1.3.6.1.4.1.19376.1.5.3.1.4.23 | PCC TF-3:6.3.4.E        |                        |
| R  [1..1]    |           | Signature                      | TBD                            | TBD                     |                        |
| R  [1..1]    |           | Signer provider Type           | TBD                            | TBD                     |                        |
| R  [1..1]    |           | Signer Name                    | TBD                            | TBD                     |                        |
| R  [1..1]    |           | Signature Date                 | TBD                            | TBD                     |                        |
| RE [1..1]    |           | Justification (Narrative)      | TBD                            | TBD                     |                        |
| RE [0..1]    |           | Reason For Transport           | TBD                            | TBD                     |                        |
| O  [0..1]    |           | Prior authorization code       | TBD                            | TBD                     |                        |
| O  [0..1]    |           | Prior Authorization Code Payer | TBD                            | TBD                     |                        |
{:grid}

##### 6.3.3.10.S2 Transport Instructions - Section Content Module
**ToDo As CDA Template**
**Template Name:**		Transport Instructions
**Template ID:**		1.3.6.1.4.1.19376.1.5.3.1.1.26.1.7
**Parent Template:**	None
**General Description:**This section contains narrative information provided by the patient’s care provider(s) to indicate any care that should be rendered during the transport and the Destination information.
**Section Code:**		74213-0, LOINC, “Discharge instructions”
**Author:**				Patient’s care provider(s)			
**Informant:**			Patient's nurse or discharge planner
**Subject:**			current recordTarget

|                                                                   **Entries**                                                                 |
|-----------------------------------------------------------------------------------------------------------------------------------------------|
| Opt and Card | Condition | Data Element or Section Name   | Template ID                    | Specification Document  | Vocabulary Constraint  |
|--------------|-----------|--------------------------------|--------------------------------|-------------------------|------------------------|
| R  [1..1]    |           | Transport Instructions Text    | N/A                            |                         |                        |
| R  [1..1]    |           | Destination Name               | TBD                            | TBD                     |                        |
| R  [1..1]    |           | Destination Type               | TBD                            | TBD                     |                        |
| R  [1..1]    |           | Destination Address            | TBD                            | TBD                     |                        |
{:grid}


### 6.3.3 CDA Entry Content Modules

#### 6.3.3.E Medical Necessity Entry 1.3.6.1.4.1.19376
The Medical Necessity observation is a Simple Observation that records the Reason for Physician Certification Statement.  

##### 6.3.4.E.1 Specification 
**ToDo As CDA Template**
< observation classCode='OBS' moodCode='EVN'>
	<templateId root=’ 1.3.6.1.4.1.19376.1.5.3.1.4.13’
	<templateId root='1.3.6.1.4.1.19376.'/>
	<id root='' extension=''/>
	<code code='15515-0' displayName='Ambulance transport, Medical reason for transport '
codeSystem='2.16.840.1.113883.6.1' codeSystemName=' LOINC' />
	<text><reference value='#xxx'/></text>
	<value xsi:type=’CE’ ></value>
	<effectiveTime value=''/>
	<performer typeCode='PRF'>
		<assignedEntity>
			<code></code>
			<assignedPerson><name></name></assignedPerson>685 </assignedEntity>
	</performer>
</observation>

##### 6.3.4.E.1.1 moodCode='EVN'>
The Medical Necessity is recorded in an observation element, to describe the patient’s medical necessity taken during the encounter. In event mood (moodCode='EVN'), this records the Medical Necessity.

##### 6.3.4.E.1.2 <templateId root='1.3.6.1.4.1.19376.1.5.3/>
The templateId indicates that this Medical Necessity entry conforms to the constraints of thiscontent module.

##### 6.3.4.E.1.3 <id root=" extension="/>
This required element shall contain an identifier.

##### 6.3.4.E.1.4 <code code='' displayName='' codeSystem='' codeSystemName='' />
This required element indicates the medical reason for ambulance transport. The code be 15515-0, LOINC, “Ambulance transport, Medical reason for transport”.

##### 6.3.4.E.1.5  <value xsi:type='CE' .../>
The <value> element shall be present, and shall the coded reason for transport.

##### 6.3.4.E.1.6  <text><reference value='#xxx'/></text>
The <text> element shall contain a narrative of the physician medical necessity statement.

##### 6.3.4.E.1.7  <effectiveTime><low value=''/><effectiveTime/>
This <low> element records the time and date that the Physician Certification Statement was signed.

##### 6.3.4.E.1.8  <performer typeCode='PRF'> <assignedEntity><assignedPerson><name></assignedPerson></assignedEntity></performer>
The <performer> element shall be present, representing the Name of Individual Signing Physician Certification Statement in the <assignedEntity><assignedPerson><name> element.

##### 6.3.4.E.1.9  <performer> <assignedEntity><code> </assignedEntity></performer>
The <performer> element shall be present representing the healthcare provider type of the individual signing the Physician Certification Statement in the <assignedEntity><code> element.

##### 6.3.4.E.1.10  <entryRelationship typeCode='DRIV'>
Observations of Medical Necessity should provide an indication of whether a physician certification statement (PCS) is available documenting the medical necessity for the EMS encounter.

##### 6.3.4.E.1.11  <observation> <templateId root=' '/></observation>
An observation of whether a physician certification statement (PCS) is available SHALL be included if known.

##### 6.3.4.E.1.12  <code code='52018-9' displayName='Ambulance transport, Physician certification for transport indicator' codeSystem='2.16.840.1.113883.6.1'/> codeSystemName='LOINC'
This observation is an indication of whether a physician certification statement (PCS) is available documenting the medical necessity or the EMS encounter as indicated by the <code> element.

##### 6.3.4.E.1.13  <value xsi:type='BL' value='true|false'/>
The observation of whether a physician certification statement (PCS) is available may include a <value> element using the Boolean (xsi:type=' BL' ) data type to indicate simply whether or not the statement exists.

##### 6.3.4.E.1.14  <reference typeCode='REFR'><externalDocument classCode='DOC' moodCode='EVN'><id root=' ' extension=' '/><text><reference value=' '/></text>
The observation of whether a physician certification statement (PCS) is available may contain a single reference to an external document. That reference shall be recorded as shown above. The <id> element shall contain the appropriate root and extension attributes to identify the document. The <text> element may be present to provide a URL link to the document in the value attribute of the <reference> element. If the <reference> element is present, the PCS in the narrative shall contain a <linkHTML> element to the same URL found in the value attribute.

## 6.5 Transport Reason Value Sets

### 6.5.1 Transport Reason 1.3.6.1.4.1.19376.1.5.3.1.1.13.2.13
**ToDo**

| Coding Scheme | SNOMED-CT                                 |
|---------------|-------------------------------------------|
| 160685001     | Bed-ridden                                |
| 23852006 		| Cardiac monitoring (regime/therapy)       |
| 716777001 	| Hemodynamic monitoring (regime/therapy)   |
| 419284004 	| Altered mental status (finding)           |
| 67722007 		| At risk for joint contractures (finding)  |
| 65108000 		| At risk for joint contractures (finding)  |
| 225999004 	| At risk for violence (finding)            |
| 86340006 		| At risk of deep vein thrombosis (finding) |
| 425423002 	| Intravenous therapy (regime/therapy)      |
| 238136002 	| Pain provoked by movement (finding)       |
| 134291007 	| Morbid obesity (disorder)                 |
| 373062004 	| Multiple fractures (disorder)             |
| 225602000 	| Device used (finding)                     |
| 35497000 		| Restraint maintenance (procedure)         |
| 26544005 		| Unable to sit unsupported (finding)       |
| 40174006 		| Muscle weakness (finding)                 |
| 707808001 	| Isolation procedure (procedure)           |
| 410204009 	| Oxygen therapy support (regime/therapy)   |
| 62330004 		| Oxygen therapy management (procedure)     |
| 722179007 	| Decreased muscle function (finding)       |
| 225563000 	| Dependent for sitting (finding)           |
| 160685001 	| Pressure ulcer of buttock (disorder)      |
{:grid}

## 6.6 HL7 FHIR Content Module

#### 6.6.X.1 FHIR Resource Bundle Content 
**ToDo**

#### 6.6.X.1.2 FHIR Resource Data Specifications
**To Do Documnent Contraints**