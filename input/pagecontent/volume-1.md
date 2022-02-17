
<<<<<<< HEAD
### About This Guide

This content profile defiines the Referral for Interfacility Patient Transport document that contains the inforamtion needed to be informed of the patient's condition during trasnport from the hospital to the transport system.

## RIPT Actors, and Transactions

* Actors

  - [Content Creator](2_actors_and_transactions.html#Content Creator)

  - [Content Consumer](2_actors_and_transactions.html#Content Consumer)

* Transactions

  - [PCC-1](PCC-1.html)
  - [ITI-65](ITI-65.html)

## RIPT Overview

Transport organizations must record information about patients being transferred under their care so that the organizations can minimize errors in their patient care record and the patient can have accurate and an appropriate level of care for their condition. This information is either gathered verbally through nursing staff or by perusing extensive paperwork to find the information needed for the transport patient care record. Once the transport is completed, the same information is also communicated as part of the transport summary. While this is often done in electronic information systems today, a lack of standards means that duplicate entry is commonplace, leading to a higher chance for data entry errors by transport staff. In fact, there is approximately a 67% error associated with manual entry of patient information transferred into an electronic system, not to mention various other errors when there are misspellings0F . Creating a patient summary for the transport team is a low-cost approach that builds on existing functionality as it reuses much of the information that is typically documented in hospital systems today. This will make it easy to find an efficient way to transfer information that is already in the EMR system and only needs to be efficiently transferred to another system. 
Once the current transfer of information issue is solved, the transport team’s time spent gathering information in the hospital can be greatly reduced and the team can spend more time providing care to the patient, rather than spending prolonged periods of time searching for, and manually re-entering, the needed information for patient transport and informed patient care. Improved throughput for Emergency Department (ED) and inpatient bed availability become a hospital benefit, by creating a faster turnover rate for hospital discharge. This profile specifies the CDA and FHIR transactions that will be used to carry out this transaction. The exchange of the patient identifier is out of scope for this profile. This must be determined by the implementation (e.g., out of band, PIX, PDQ).

## RIPT Actors, and Transactions
This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the Technical Frameworks General Introduction Appendix A. IHE Transactions can be found in the Technical Frameworks General Introduction Appendix B. Both appendices are located at http://ihe.net/Technical_Frameworks/#GenIntro
 
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

### Actor Descriptions and Actor Profile Requirements
Transactional requirements are documented in PCC TF-2 Transactions. This section documents any additional requirements on profile’s actors.

#### Content Creator
The Content Creator shall be responsible for the creation of content of an Interfacility Transport Referral document containing the data elements defined in  PCC TF-3: 6.3.1.D or, where the FHIR is used, containing the FHIR Document Bundle defined TF-3: 6.6.x.1. 

#### Content Consumer
The Content Creator shall be responsible for the creation of content of an Interfacility Transport Referral document containing the data elements defined in PCC TF-3: 6.3.1.D.5 or, where the FHIR is used, containing the FHIR Document Bundle defined TF-3: 6.6.x.1. 

#### Trigger Events
Upon the discharge or transfer order of a patient, a Transport Data Summary will be generated

## RIPT Actor Options
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



### CDA Option
This option defines the processing requirements placed on the Content Creators for producing a CDA structured document version of the Interfacility Transport Referral document. The CDA details are in Volume 3, Section 6.3.1.
**TODO: link to CDA template infromaiton**

### FHIR Option
This option defines the processing requirements placed on the Content Creators for producing a FHIR document bundle version of the Interfacility Transport Referral document. The FHIR bundle details are in TF-3: 6.6.x.1
[Refferal For Interfacility Patient Transport](RIPT_Composition.html)

### RIPT Required Actor Groupings 
There are no required actor groupings for this profile. 


### Concepts

Transport companies’ main goal is to transport a patient from point A to point B while caring for any of the patient’s medical needs. In the absence of interoperability, when a patient needs a medical transport, the transport providers are required to develop a patient record using the information found in the discharge summary. If done manually inputting this information often takes 30 minutes and creates a lag in the discharge process and increases the amount of time that the transport team spends on each call. 

### Use Case 1: Hospital Discharge to Transport with information Query

The use case describes the discharge process in a hospital after treatment has been carried out using an information query for the transfer of patient information. 

#### Hospital Discharge to Transport with information Query  Use Case Description

Alison Patel, a 28-year-old female, is going home from the hospital after having an infection due to systemic fibrosis. The doctors prescribed oxygen after treatment, and call a transport company to take her to rehab. Alison is a paraplegic and is wheelchair bound. Due to the prescribed oxygen, there needs to be monitoring for her transport. The hospital provides the transport team with the transport summary. The information is then available to the transport provider system where it is retrieved to populate the patient information record for the transport. 
The contacted transport care team arrives on scene for the transport, prepared with portable oxygen. The R.N. transfers care to the transport team who then goes into Alison’s room to meet her. The transport is then carried out. 


#### Hospital Discharge to Transport Using Information Query Process Flow

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


### Use Case #2: Emergency Transport from Long-Term Care Facility 

The use case describes the Emergency process at a long-term care facility when a transport to a hospital is needed and carried out. 

#### Emergency Transport from Long-Term Care Facility Use Case Description

John Smith, an 87-year-old male living in a long-term care facility. The patient is suffering from a cardiac event and an emergency transport is needed. The long-term care facility contacts a transport provider and generates an electronic patient summary. The contracted transport care team arrives on scene for the transport. The long-term care facility provides the transport team with the transport summary CDA document. The electronic patient information consumed into their patient care system. The nurse transfers care to the transport team and the team takes the necessary care for the patient’s condition and starts the transport. 

#### Hospital Discharge to Transport Using CDA Process Flow

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

## RIPT Security Considerations

Actors in the RIPT Profile create, modify, and consume patient demographics, clinical and administrative information which includes personally identifiable health information. This information must be protected against unauthorized access, modification or tampering. This profile recommends but does not require that connections between actors be grouped with the Secure Node or Secure Application Actors from the IHE ATNA Profile.
These actors ensure appropriate user authentication and authorization to access the application and protect personally identifiable health information against unauthorized access, modification or tampering while the information is in transit.
The security considerations for a content module are dependent upon the security provisions defined by the grouped actor(s). There may be jurisdictional restrictions on some patient content available to transport systems. 

See [ITI TF-2.x: AppendixZ.8](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf)
“Mobile Security Considerations”.

## RIPT Cross Profile Considerations
The use of the IHE XD* family of transactions is encouraged to support standards-based interoperability between systems acting as the RIPT Content Creator and RIPT Content Consumer. However, this profile does not require any groupings with ITI XD* actors to facilitate transport of the content document it defines. Below is a summary of recommended IHE transport transactions that MAY be utilized by systems playing the roles of RIPT Content Creator or RIPT Content Consumer to support the standard use case defined in this profile: 
•	A Document Source in XDS.b, a Portable Media Creator in XDM, or a Document Source in XDR might be grouped with the RIPT Content Creator. A Document Consumer in XDS.b, a Portable Media Importer in XDM, or a Document Recipient in XDR might be grouped with the RIPT Content Consumer. A registry/repository-based infrastructure is defined by the IHE Cross Enterprise Document Sharing (XDS.b) that includes profile support that can be leveraged to facilitate retrieval of public health related information from a document sharing infrastructure: Multi-Patient Query (MPQ), and Document Metadata Subscription (DSUB). 
•	A reliable messaging-based infrastructure is defined by the IHE Cross Enterprise Document Reliable Interchange (XDR) Profile. Document Source in XDR might be grouped with the RIPT Content Creator. A Document Recipient in XDR might be grouped with the RIPT Content Consumer. 
Detailed descriptions of these transactions can be found in the IHE IT Infrastructure Technical Framework.
=======
# 1:XX Profile name

**TODO: Provide an end-user friendly overview of what the profile does for them. Keep it brief (a paragraph or two, up to a page). If extensive detail is needed, it should be included in Section XX.4- Use Cases.**

**TODO: Explicitly state whether this is a Workflow, Transport, or Content Module (or combination) profile. See the IHE Technical Frameworks General Introduction for definitions of these profile types. The IHE Technical Frameworks [General Introduction](https://profiles.ihe.net/GeneralIntro/). **

## 1:X.1 FooBar Actors, Transactions, and Content Modules <a name="actors-and-transactions"> </a>

* Actors

  - [Client](#client)

  - [Server](#server)

* Transactions

  - [do domain-Y](domain-YY.html)

Actors and transactions are used to achieve this use-case...

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">

**Figure: Use Case 1 Process Flow**

This section defines the actors and transactions in this implementation guide.

Figure below shows the actors directly
involved in the FooBar 
Profile and the relevant transactions between them.

<div>
{%include ActorsAndTransactions.svg%}
</div>
<br clear="all">

**Figure: FooBar Actor Diagram**

Table XX.1-1: Profile Acronym Profile - Actors and Transactions

|         |               |                        |                 |                                   |
|---------|---------------|------------------------|-----------------|-----------------------------------|
| Actors  | Transactions  | Initiator or Responder | Optionality     | Reference                         |
| Actor A | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
|         | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
| Actor F | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
|         | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
| Actor D | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
| Actor E | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
|         | Transaction 3 |                        | O ( See Note 1) | Domain Acronym TF-2: 3.Y3 |
|         | Transaction 4 |                        | O ( See Note 1) | Domain Acronym TF-2: 3.Y4 |
| Actor B | Transaction 3 |                        | R               | Domain Acronym TF-2: 3.Y3 |
|         | Transaction 4 |                        | O ( See Note 2) | Domain Acronym TF-2: 3.Y4 |
{: .grid}

Note 1: *For example, a note could specify that at least one of the
transactions shall be supported by an actor or other variations. For
example: Note: Either Transaction Y3 or Transaction Y4 shall be
implemented for Actor E. *

Note 2: *For example, could specify that Transaction Y4 is required
if Actor B supports XYZ Option, see Section XX.3.X.*

### XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.

#### XX.1.1.1 Client <a name="client"> </a>

The Client queries for blah meeting certain criteria and may retrieve selected blah.

FHIR Capability Statement for [Client]{CapabilityStatement-IHE.FooBar.client.html}

#### XX.1.1.2 Server <a name="server"> </a>

The Sever processes query request from the Client actor.

FHIR Capability Statement for [Server](CapabilityStatement-IHE.FooBar.server.html)

### Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### FooBar do transaction

This transaction is used to **do things**

For more details see the detailed [transaction description](domain-YY.html)

## XX.2 FooBar Actor Options <a name="actor-options"> </a>

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies 
between options when applicable are specified in notes.

|         |             |
|---------|-------------|
| Actor   | Option Name |
| Actor A | Option AB  |
| Actor B | none |
{: .grid}

#### XX.2.1 AB Option

**TODO: describe this option and the Volume 1 requirements for this option

## XX.3 FooBar Required Actor Groupings <a name="required-groupings"> </a>

*Describe any requirements for actors in this profile to be grouped
with other actors.*

*This section specifies all REQUIRED Actor Groupings (although
“required” sometimes allows for a selection of one of several). To
SUGGEST other profile groupings or helpful references for other profiles
to consider, use Section XX.6 Cross Profile Considerations. Use Section
X.5 for security profile recommendations.*

An actor from this profile (Column 1) shall implement all of the
required transactions and/or content modules in this profile ***in
addition to*** ***<u>all</u>*** of the requirements for the grouped
actor (Column 2) (Column 3 in alternative 2).

If this is a content profile, and actors from this profile are grouped
with actors from a workflow or transport profile, the Reference column
references any specifications for mapping data from the content module
into data elements from the workflow or transport transactions.

In some cases, required groupings are defined as at least one of an
enumerated set of possible actors; this is designated by merging column
one into a single cell spanning multiple potential grouped actors. Notes
are used to highlight this situation.

Section XX.5 describes some optional groupings that may be of interest
for security considerations and Section XX.6 describes some optional
groupings in other related profiles.

Two alternatives for Table XX.3-1 are presented below.

-   If there are no required groupings for any actor in this profile,
    use alternative 1 as a template.

-   If an actor in this profile (with no option), has a required
    grouping, use alternative 1.

-   If any required grouping is associated with an actor/option
    combination in this profile, use alternative 2.

alternative 1 Table XX.3-1: Profile Name - Required Actor
Groupings

All actors from this profile should be listed in Column 1, even if
none of the actors has a required groupings. If no required grouping
exists, “None” should be indicated in Column 2. If an actor in a content
profile is required to be grouped with an actor in a transport or
workflow profile, it will be listed **with at least one** required
grouping. Do not use “XD\*” as an actor name.

In some cases, required groupings are defined as at least one of an
enumerated set of possible actors; to designate this, create a row for
each potential actor grouping and merge column one to form a single cell
containing the profile actor which should be grouped with at least one
of the actors in the spanned rows. In addition, a note should be
included to explain the enumerated set. See example below showing
Document Consumer needing to be grouped with at least one of XDS.b
Document Consumer, XDR Document Recipient or XDM Portable Media
Importer

The author should pay special consideration to security profiles in
this grouping section. Consideration should be given to Consistent Time
(CT) Client, ATNA Secure Node or Secure Application, as well as other
profiles. For the sake of clarity and completeness, even if this table
begins to become long, a line should be added for each actor for each of
the required grouping for security. Also see the ITI document titled
‘Cookbook: Preparing the IHE Profile Security Section’ at
<http://ihe.net/Technical_Frameworks/#IT> for a list of suggested IT and
security groupings.

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<thead>
<tr class="header">
<th>this Profile Acronym Actor</th>
<th>Actor(s) to be grouped with</th>
<th>Reference</th>
<th>Content Bindings Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Actor A</td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p>
<p><em>e.g., ITI CT / Time Client</em></p></td>
<td><p><em>TF Reference; typically from Vol 1</em></p>
<p><em>e.g., ITI-TF-1: 7.1</em></p></td>
<td>--</td>
</tr>
<tr class="even">
<td>Actor B</td>
<td>None</td>
<td>--</td>
<td>--</td>
</tr>
<tr class="odd">
<td><p>Actor C</p>
<p><em>In this example, Actor C shall be grouped with all three actors listed in column 2</em></p></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="even">
<td></td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="odd">
<td></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="even">
<td><p>Actor D <em>(See note 1)</em></p>
<p><em>In this example, the note is used to indicate that the Actor D shall be grouped with one or more of the two actors of the two actors in column 2.</em></p></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="odd">
<td></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="even">
<td><p>Actor E</p>
<p><em>In rare cases, the actor to be grouped with must implement an option. An example is in column 2.)</em></p></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym Actor</em></p>
<p><em>e.g., ITI RFD Form Filler with the Archive Form Option</em></p></td>
<td><p><em>TF Reference to the Option definition; typically from Vol 1</em></p>
<p><em>(e.g., ITI TF-1: 17.3.11)</em></p></td>
<td></td>
</tr>
<tr class="odd">
<td><em>e.g., Content Consumer (See Note 1)</em></td>
<td><em>ITI XDS.b / Document Consumer</em></td>
<td><em>ITI TF-1: 10.1</em></td>
<td><em>PCC TF-2:4.1 (See Note 2)</em></td>
</tr>
<tr class="even">
<td></td>
<td><em>ITI XDR / Document Recipient</em></td>
<td><em>ITI TF-1: 15.1</em></td>
<td><em>PCC TF-2:4.1 (See Note 2)</em></td>
</tr>
<tr class="odd">
<td></td>
<td><em>ITI XDM / Portable Media Importer</em></td>
<td><em>ITI TF-1: 16.1</em></td>
<td><em>PCC TF-2:4.1 (See Note 2)</em></td>
</tr>
<tr class="even">
<td><em>e.g., Content Consumer</em></td>
<td><em>ITI CT / Time Client</em></td>
<td><em>ITI TF-1: 7.1</em></td>
<td>--</td>
</tr>
</tbody>
</table>

Note 1: *This is a short note. It may be used to describe situations
where an actor from this profile may be grouped with one of several
other profiles/actors.*

Note 2: *A note could also be used to explain why the grouping is
required, if that is still not clear from the text above.*

alternative 2 Table XX.3-1: this Profile Acronym Profile
- Required Actor Groupings

All actors from this profile should be listed in Column 1. If no
required grouping exists, “None” should be indicated in Column 3. 

Guidance on using the “Grouping Condition” column:

-   If an actor has no required grouping, Column 2 should contain “--“.
    See Actor A below.

-   If an actor has a required grouping that is not associated with a
    profile option (i.e., it has no condition), column 2 should contain
    “Required”. See Actor B below.

-   Sometimes an option requires that an actor in this profile be
    grouped with an actor in another profile. That condition is
    specified in Column 2. See Actor C below.

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<tbody>
<tr class="odd">
<td>this Profile Acronym Actor</td>
<td>Grouping Condition</td>
<td>Actor(s) to be grouped with</td>
<td>Reference</td>
</tr>
<tr class="even">
<td>Actor A</td>
<td>--</td>
<td>None</td>
<td>--</td>
</tr>
<tr class="odd">
<td>Actor B</td>
<td>Required</td>
<td><p><em>external Domain Acronym or blank profile acronym/Actor</em></p>
<p><em>e.g., ITI CT / Time Client</em></p></td>
<td><p><em>TF Reference; typically from Vol 1</em></p>
<p><em>(e.g., ITI TF-1: 7.1)</em></p></td>
</tr>
<tr class="even">
<td>Actor C</td>
<td>With the <em>Option name in this profile</em> Option</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>Where the Option is defined in this profile Section XX.3 z</em></td>
</tr>
<tr class="odd">
<td><p>Actor D</p>
<p><em>if an actor has both required and conditional groupings, list the Required grouping first</em></p></td>
<td>Required</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>TF Reference; typically from Vol 1</em></td>
</tr>
<tr class="even">
<td></td>
<td>If the <em>Option name in this profile</em> Option is supported.</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>TF Reference; typically from Vol 1</em></td>
</tr>
<tr class="odd">
<td></td>
<td>If the <em>other Option name in this profile</em> Option is supported.</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>TF Reference; typically from Vol 1</em></td>
</tr>
<tr class="even">
<td><p>Actor E</p>
<p><em>(In rare cases, the actor to be grouped with must implement an option, an example is in column 3)</em></p></td>
<td>Required</td>
<td><p><em>external Domain Acronym or blank profile acronym/Actor</em> with the <em>option name</em></p>
<p><em>e.g. ITI RFD Form Filler with the Archive Form Option</em></p></td>
<td><p><em>TF Reference to the Option definition; typically from Vol 1</em></p>
<p><em>(eg ITI TF-1:17.3.11)</em></p></td>
</tr>
</tbody>
</table>


## XX.4 FooBar Overview <a name="overview"> </a>

This section shows how the transactions/content modules of the profile
are combined to address the use cases.

Use cases are informative, not normative, and “SHALL” language is
not allowed in use cases.

### XX.4.1 Concepts

If needed, this section provides an overview of the concepts that
provide necessary background for understanding the profile. If not
needed, state “Not applicable.” For an example of why/how this section
may be needed, please see ITI Cross Enterprise Workflow (XDW).

It may be useful in this section but is not necessary, to provide a
short list of the use cases described below and explain why they are
different.

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case \#1: simple name

One or two sentence simple description of this particular use
case.

Note that Section XX.4.2.1 repeats in its entirety for additional use
cases (replicate as Section XX.4.2.2, XX.4.2.3, etc.).

##### XX.4.2.1.1 simple name Use Case Description

Describe the key use cases addressed by the profile. Limit to a
maximum of one page of text or consider an appendix.

##### XX.4.2.1.2 simple name Process Flow

Diagram and describe the process flow(s) covered by this profile in
order to satisfy the use cases. Demonstrate how the profile transactions
are combined/sequenced. To provide context and demonstrate how the
profile interacts with other profiles, feel free to include transactions
and events that are “external” to this profile (using appropriate
notation.)

The set of process flows will typically be exemplary, not exhaustive
(i.e., it will address all the use cases, but will not show all possible
combinations of actors, or all possible sequencing of transactions).

If there are detailed behavioral rules that apply to a specific process
flow or multiple process flows, an appendix may be added as needed.

The roles at the top of the swimlane diagram should correspond to
actor names, include the profile acronym:actor name if referencing an
actor from a different profile.

Modify the following “Swimlane Diagram”.

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.2-1: Basic Process Flow in Profile Acronym Profile

If process flow “swimlane” diagrams require additional explanation
to clarify conditional flows, or flow variations need to be described
where alternate systems may be playing different actor roles, document
those conditional flows here.

Delete the material below if this is a workflow or transport
profile. Delete the material above if this profile is a content module
only profile.

**Pre-conditions**:

Very briefly (typically one sentence) describe the conditions or
timing when this content module would be used.

**Main Flow**:

Typically in an enumerated list, describe the clinical workflow
when, where, and how this content module would be used.

**Post-conditions:**

Very briefly (typically one sentence) describe the state of the
clinical scenario after this content module has been created including
examples of potential next steps.

## XX.5 FooBar Security Considerations <a name="security-considerations"> </a>

See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

The following is instructions to the editor and this text is not to be included in a publication. 
The material initially from [RFC 3552 "Security Considerations Guidelines" July 2003](https://tools.ietf.org/html/rfc3552).

This section should address downstream design considerations, specifically for: Privacy, Security, and Safety. These might need to be individual header sections if they are significant or need to be referenced.

The editor needs to understand Security and Privacy fundamentals. 
General [Security and Privacy guidance](http://hl7.org/fhir/secpriv-module.html) is provided in the FHIR Specification. 
The FHIR core specification should be leveraged where possible to inform the reader of your specification.

IHE FHIR based profiles should reference the [ITI Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html) section 8 Mobile Security and Privacy Considerations base when appropriate.

IHE Document Content profiles can reference the security and privacy provided by the Document Sharing infrastructure as directly grouped or possibly to be grouped.

   While it is not a requirement that any given specification or system be
   immune to all forms of attack, it is still necessary for authors of specifications to
   consider as many forms as possible.  Part of the purpose of the
   Security and Privacy Considerations section is to explain what attacks have been 
   considered and what countermeasures can be applied to defend against them.
   
   There should be a clear description of the kinds of threats on the
   described specification.  This should be approached as an
   effort to perform "due diligence" in describing all known or
   foreseeable risks and threats to potential implementers and users.

Authors MUST describe:
* which attacks have been considered and addressed in the specification
* which attacks have been considered but not addressed in the specification
* what could be done in system design, system deployment, or user training


   At least the following forms of attack MUST be considered:
   eavesdropping, replay, message insertion, deletion, modification, and
   man-in-the-middle.  Potential denial of service attacks MUST be
   identified as well.  If the specification incorporates cryptographic
   protection mechanisms, it should be clearly indicated which portions
   of the data are protected and what the protections are (i.e.,
   integrity only, confidentiality, and/or endpoint authentication,
   etc.).  Some indication should also be given to what sorts of attacks
   the cryptographic protection is susceptible.  Data which should be
   held secret (keying material, random seeds, etc.) should be clearly
   labeled.

   If the specification involves authentication, particularly user-host
   authentication, the security of the authentication method MUST be
   clearly specified.  That is, authors MUST document the assumptions
   that the security of this authentication method is predicated upon.

   The threat environment addressed by the Security and Privacy Considerations
   section MUST at a minimum include deployment across the global
   Internet across multiple administrative boundaries without assuming
   that firewalls are in place, even if only to provide justification
   for why such consideration is out of scope for the protocol.  It is
   not acceptable to only discuss threats applicable to LANs and ignore
   the broader threat environment.  In
   some cases, there might be an Applicability Statement discouraging
   use of a technology or protocol in a particular environment.
   Nonetheless, the security issues of broader deployment should be
   discussed in the document.

   There should be a clear description of the residual risk to the user
   or operator of that specification after threat mitigation has been
   deployed.  Such risks might arise from compromise in a related
   specification (e.g., IPsec is useless if key management has been
   compromised), from incorrect implementation, compromise of the
   security technology used for risk reduction (e.g., a cipher with a
   40-bit key), or there might be risks that are not addressed by the
   specification (e.g., denial of service attacks on an
   underlying link protocol).  Particular care should be taken in
   situations where the compromise of a single system would compromise
   an entire protocol.  For instance, in general specification designers
   assume that end-systems are inviolate and don't worry about physical
   attack.  However, in cases (such as a certificate authority) where
   compromise of a single system could lead to widespread compromises,
   it is appropriate to consider systems and physical security as well.

   There should also be some discussion of potential security risks
   arising from potential misapplications of the specification or technology
   described in the specification.  
  
This section also include specific considerations regarding Digital Signatures, Provenance, Audit Logging, and De-Identification.

Where audit logging is specified, a StructureDefinition profile(s) should be included, and Examples of those logs might be included.

## XX.6 FooBar Cross-Profile Considerations <a name="other-grouping"> </a>

This section is informative, not normative. It is intended to put
this profile in context with other profiles. Any required groupings
should have already been described above. Brief descriptions can go
directly into this section; lengthy descriptions should go into an
appendix. Examples of this material include ITI Cross Community Access
(XCA) Grouping Rules (Section 18.2.3), the Radiology associated profiles
listed at wiki.ihe.net, or ITI Volume 1 Appendix E “Cross Profile
Considerations”, and the “See Also” sections Radiology Profile
descriptions on the wiki such as
<http://wiki.ihe.net/index.php/Scheduled_Workflow#See_Also>. If this
section is left blank, add “Not applicable.”

Consider using a format such as the following:

other profile acronym - other profile name

A other profile actor name in other profile name might
be grouped with a this profile actor name to describe
benefit/what is accomplished by grouping.


>>>>>>> 59cc4c3cb2364362776567462c391dc0e461a0c2
