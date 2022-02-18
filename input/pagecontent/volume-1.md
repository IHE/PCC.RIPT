=======
# 1:XX Refferal For Interfacility Patient Transport (RIPT)
This content profile defiines the Referral for Interfacility Patient Transport document that contains the inforamtion needed to be informed of the patient's condition during trasnport from the hospital to the transport system.

## 1:X.1 RIPT Actors and Transactions <a name="actors-and-transactions"> </a>
This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the Technical Frameworks General Introduction Appendix A. IHE Transactions can be found in the Technical Frameworks General Introduction Appendix B. Both appendices are located at http://ihe.net/Technical_Frameworks/#GenIntro
 
 <div>
{%include ActorsAndTransactions.svg%}
</div>
<br clear="all">

**Figure: RIPT Actor Diagram**

 [Figure X.1-1: RIPT Actor Diagram](RIPT Actor Diagram.png)
Figure X.1-1 shows the actors directly involved in the RIPT Profile and the relevant transactions between them. If needed for context, other actors that may be indirectly involved due to their participation in other related profiles are shown in dotted lines. Actors which have a mandatory grouping are shown in conjoined boxes.
* Actors

  - [Content Creator](2_actors_and_transactions.html#Content Creator)

  - [Content Consumer](2_actors_and_transactions.html#Content Consumer)

* Transactions

  - [PCC-1](PCC-1.html)
  - [ITI-65](ITI-65.html)
  
**Table X.1-1: RIPT Profile – Actors and Transactions**

| Actors 			    | Transactions   					    | Initiator or Responder	| Optionality	| Reference	|
|-----------------------|----------------------------			|--------------------------|---------------|-----------|
| Content Creator   	| Document Sharing [PCC-1](PCC-1.html)  | Initiator				| R				| TBD		|
| Content Consumer  	| Document Sharing [PCC-1](PCC-1.html) | Responder				| R				| TBD		|
{:grid}

Figure X.1-1 shows the actors directly involved in the RIPT Profile and the direction that the content is exchanged. 

A product implementation using this profile may group actors from this profile with actors from a workflow or transport profile to be functional. The grouping of the content module described in this profile to specific actors is described in more detail in [Required Actor Groupings]() or in [Cross Profile Considerations]().

**Table X.1-2: RIPT – Actors and Content Modules**

| Actors 			    | Content Modules  										 | Optionality	| Reference	|
|-----------------------|-----------------------------							 |--------------|-----------|
| Content Creator   	| Transport Data Summary   | R			| TBD		|
| Content Consumer  	| Transport Data Summary   | O(Note 1)	| TBD		|
{:grid}

Table X.1-2 lists the content module(s) defined in the PCS Profile. To claim support with this profile, an actor shall support all required content modules (labeled “R”) and may support optional content modules (labeled “O”). 

### XX.1.1 Actor Descriptions and Actor Profile Requirements
Transactional requirements are documented in PCC TF-2 Transactions. This section documents any additional requirements on profile’s actors.

#### XX.1.1.1 Content Creator <a name="Content Creator"> </a>
The Content Creator shall be responsible for the creation of content of an Interfacility Transport Referral document containing the data elements defined in  PCC TF-3: 6.3.1.D or, where the FHIR is used, containing the FHIR Document Bundle defined TF-3: 6.6.x.1. 

#### XX.1.1.2 Content Consumer <a name="Content Consumer"> </a>
The Content Creator shall be responsible for the creation of content of an Interfacility Transport Referral document containing the data elements defined in PCC TF-3: 6.3.1.D.5 or, where the FHIR is used, containing the FHIR Document Bundle defined TF-3: 6.6.x.1. 

##### XX.1.1.2.1 Trigger Events
Upon the discharge or transfer order of a patient, a Transport Data Summary will be generated

##### XX.1.1.2.2 Transaction Descriptions
The transactions in this profile are summarized in the sections below.

###### XX.1.1.2.2.1 FooBar do transaction

This transaction is used to **do things**

For more details see the detailed [Document Sharing PCC-1](PCC-1.html)

###### XX.1.1.2.2.1 FooBar do transaction
This transaction is used to **do things**

For more details see the detailed [transaction description](ITI-65.html)

## XX.2 RIPT Actor Options <a name="actor-options"> </a>
Options that may be selected for each actor in this profile, if any, are listed in the Table X.2-1. Dependencies between options, when applicable, are specified in notes.
**Table X.2-1: Referral for Interfacility Patient Transport – Actors and Options**

| Actors 			    | Option Name  				   				| Reference	|
|-----------------------|----------------------------- 				|--------------|
| Content Creator   	| CDA Option (Note 1) 		   				| TBD			|
						| FHIR Option (Note 1) 		   				| TBD			|
| Content Consumer  	| View Option Note2   		   				| TBD			|
						| Document Import Option Note2 				| TBD			|
						| Section Import Option Note2  				| TBD			|
						| Discrete Data Import Option Note2 		| TBD			|
{:grid}

Note 1: The Content Creator must be able to support at least one of these options. 
Note 2: The Content Consumer must implement at least one of these options.



### XX.2.1 CDA Option
This option defines the processing requirements placed on the Content Creators for producing a CDA structured document version of the Interfacility Transport Referral document. The CDA details are in Volume 3, Section 6.3.1.
**TODO: link to CDA template infromaiton**

### XX.2.2 FHIR Option
This option defines the processing requirements placed on the Content Creators for producing a FHIR document bundle version of the Interfacility Transport Referral document. The FHIR bundle details are [Refferal For Interfacility Patient Transport](RIPT_Composition.html)

## XX.3 RIPT Required Actor Groupings <a name="required-groupings"> </a>
There are no required actor groupings for this profile. 

## XX.4 RIPT Overview <a name="overview"> </a>

Transport organizations must record information about patients being transferred under their care so that the organizations can minimize errors in their patient care record and the patient can have accurate and an appropriate level of care for their condition. This information is either gathered verbally through nursing staff or by perusing extensive paperwork to find the information needed for the transport patient care record. Once the transport is completed, the same information is also communicated as part of the transport summary. While this is often done in electronic information systems today, a lack of standards means that duplicate entry is commonplace, leading to a higher chance for data entry errors by transport staff. In fact, there is approximately a 67% error associated with manual entry of patient information transferred into an electronic system, not to mention various other errors when there are misspellings0F . Creating a patient summary for the transport team is a low-cost approach that builds on existing functionality as it reuses much of the information that is typically documented in hospital systems today. This will make it easy to find an efficient way to transfer information that is already in the EMR system and only needs to be efficiently transferred to another system. 
Once the current transfer of information issue is solved, the transport team’s time spent gathering information in the hospital can be greatly reduced and the team can spend more time providing care to the patient, rather than spending prolonged periods of time searching for, and manually re-entering, the needed information for patient transport and informed patient care. Improved throughput for Emergency Department (ED) and inpatient bed availability become a hospital benefit, by creating a faster turnover rate for hospital discharge. This profile specifies the CDA and FHIR transactions that will be used to carry out this transaction. The exchange of the patient identifier is out of scope for this profile. This must be determined by the implementation (e.g., out of band, PIX, PDQ).

### XX.4.1 Concepts

Transport companies’ main goal is to transport a patient from point A to point B while caring for any of the patient’s medical needs. In the absence of interoperability, when a patient needs a medical transport, the transport providers are required to develop a patient record using the information found in the discharge summary. If done manually inputting this information often takes 30 minutes and creates a lag in the discharge process and increases the amount of time that the transport team spends on each call. 

#### XX.4.2.1 Use Case 1: Hospital Discharge to Transport with information Query

The use case describes the discharge process in a hospital after treatment has been carried out using an information query for the transfer of patient information. 

##### XX.4.2.1.1 Hospital Discharge to Transport with information Query  Use Case Description

Alison Patel, a 28-year-old female, is going home from the hospital after having an infection due to systemic fibrosis. The doctors prescribed oxygen after treatment, and call a transport company to take her to rehab. Alison is a paraplegic and is wheelchair bound. Due to the prescribed oxygen, there needs to be monitoring for her transport. The hospital provides the transport team with the transport summary. The information is then available to the transport provider system where it is retrieved to populate the patient information record for the transport. 
The contacted transport care team arrives on scene for the transport, prepared with portable oxygen. The R.N. transfers care to the transport team who then goes into Alison’s room to meet her. The transport is then carried out. 


###### XX.4.2.1.2 Hospital Discharge to Transport Using Information Query Process Flow

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">
**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in Discharge to Transport Using FHIR Profile

**Pre-conditions**:

1.	Hospital EMR has patient information in the system
2.	Physician Clears Patient for discharge 
3.	Transport provider is contacted and minimum required patient data is shared with the transport provider (name, gender, date of birth, MRN)
4.	The pickup time is arranged  
5.	Transport patient care record is ready to retrieve information and both the EMR and patient care record have an established XD* infrastructure.
6.	A referral document is sent to the transport team prior to their arrival 

**Main Flow**:

1.	Transport team receives nurse report and transfer of care
2.	Patient contact is made and transport is started


**Post-conditions:**

1.	Patient information is updated in the patient care record system during transport.
2.	Patient is transferred to the care of the drop-off facility staff. 


#### XX.4.2.2 Use Case #2: Emergency Transport from Long-Term Care Facility 

The use case describes the Emergency process at a long-term care facility when a transport to a hospital is needed and carried out. 

##### XX.4.2.2.1 Emergency Transport from Long-Term Care Facility Use Case Description

John Smith, an 87-year-old male living in a long-term care facility. The patient is suffering from a cardiac event and an emergency transport is needed. The long-term care facility contacts a transport provider and generates an electronic patient summary. The contracted transport care team arrives on scene for the transport. The long-term care facility provides the transport team with the transport summary CDA document. The electronic patient information consumed into their patient care system. The nurse transfers care to the transport team and the team takes the necessary care for the patient’s condition and starts the transport. 

##### XX.4.2.2.2 Hospital Discharge to Transport Using CDA Process Flow

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">
**Figure: Use Case 1 Process Flow**
Figure X.4.2.2.2-1: Basic Process Flow in Discharge to Transport Using CDA Profile

**Pre-conditions**:

1.	1.	The long-term care facility EMR has patient information in the system
2.	Patient is considered to have an emergency event and a hospital trip needs to be made
3.	Transport provider is contacted and minimum required patient data is shared with the transport provider (name, gender, date of birth, MRN) 
4.	Transport patient care record is ready to consume information and both the EMR and patient care record have an established XD* infrastructure.

**Main Flow**:

1.	Transport teams arrives at pick-up location and imports the patient information into the patient care record system. 
2.	Transport team receives nurse report and transfer of care
3.	Patient contact is made and transport is started

**Post-conditions:**

1.	Patient information is updated in the patient care record system during transport.
2.	Patient is transferred to the care of the closest appropriate hospital staff. 

## XX.5 RIPT Security Considerations <a name="security-considerations"> </a>

Actors in the RIPT Profile create, modify, and consume patient demographics, clinical and administrative information which includes personally identifiable health information. This information must be protected against unauthorized access, modification or tampering. This profile recommends but does not require that connections between actors be grouped with the Secure Node or Secure Application Actors from the IHE ATNA Profile.
These actors ensure appropriate user authentication and authorization to access the application and protect personally identifiable health information against unauthorized access, modification or tampering while the information is in transit.
The security considerations for a content module are dependent upon the security provisions defined by the grouped actor(s). There may be jurisdictional restrictions on some patient content available to transport systems. 

See [ITI TF-2.x: AppendixZ.8](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf)
“Mobile Security Considerations”.

## XX.6 RIPT Cross-Profile Considerations <a name="other-grouping"> </a>
The use of the IHE XD* family of transactions is encouraged to support standards-based interoperability between systems acting as the RIPT Content Creator and RIPT Content Consumer. However, this profile does not require any groupings with ITI XD* actors to facilitate transport of the content document it defines. Below is a summary of recommended IHE transport transactions that MAY be utilized by systems playing the roles of RIPT Content Creator or RIPT Content Consumer to support the standard use case defined in this profile: 

•	A Document Source in XDS.b, a Portable Media Creator in XDM, or a Document Source in XDR might be grouped with the RIPT Content Creator. A Document Consumer in XDS.b, a Portable Media Importer in XDM, or a Document Recipient in XDR might be grouped with the RIPT Content Consumer. A registry/repository-based infrastructure is defined by the IHE Cross Enterprise Document Sharing (XDS.b) that includes profile support that can be leveraged to facilitate retrieval of public health related information from a document sharing infrastructure: Multi-Patient Query (MPQ), and Document Metadata Subscription (DSUB). 

•	A reliable messaging-based infrastructure is defined by the IHE Cross Enterprise Document Reliable Interchange (XDR) Profile. Document Source in XDR might be grouped with the RIPT Content Creator. A Document Recipient in XDR might be grouped with the RIPT Content Consumer. 

Detailed descriptions of these transactions can be found in the IHE IT Infrastructure Technical Framework.

