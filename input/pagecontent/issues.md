### Issues

#### Open Issues

<<<<<<< HEAD
1.	How can we reuse transactions and create transactions based on its use in QEDm? 
2.	Patient Medical History and risk factors map to multiple FHIR resources: Procedures, conditions, date of onset. 
3.	Should we subsume the mappings in the ETS and ITS Profiles into this profile and deprecate them?
4.	There is a FHIR resource gap for Transport instructions. 
5.	Should the Transport Data Consumer and Transport Data Responder Actors have a more generic name such as Data Consumer and Data Responder?
6.	There is no LOINC code for Revised Trauma Score.
7.	Cannot find the NEMSIS copyright statement. 


#### Closed Issues

1.	(2/7/2017) Profile needs to be renamed to become more universal. 
The committee discussed and agreed on the profile renaming to Routine Interfacility patient Transport (RIPT). 
2.	(4/27/2017) There is no CDA section for “the Certificate of Medical Necessity” and no FHIR source to match it.
The committee discussed and agreed to create a CDA section in the Profile for the “Certificate of Medical Necessity”. The FHIR source for it will be composition.type. 
3.	(4/27/2017) There is no CDA section for “Transport Instructions”.
The Committee discussed and agreed to create a CDA section for “Transport Instructions”. 
4.	(4/27/2017) Should patient matching be profiled in this due to possibility of MRN not being sent over properly? 
The Committee discussed and agreed that this is out of scope for this profile. 
5.	(4/27/2017) Do we use the term query or retrieve in transaction titles?  
The Committee discussed and agreed that the term “query” is the most appropriate as the transaction title for this profile. 
6.	(4/27/2017) There are some attributes in this profile hat are not included in NEMSIS. 
The committee discussed and agreed to include these attributes in the profile and that it is up to NEMSIS to make the custom elements to absorb it. 
7.	(4/27/2017) Is it the responsibility of the content creator or the content consumer to map to the custom the NEMSIS defined codes?
The Committee discussed and agreed that it will be the responsibility of the implantation to create the mapping required for the custom NEMSIS codes. 
=======
* FooBar_001: this is open issue 1

#### Closed Issues

* FooBar_002: this is closed issue 2
>>>>>>> 59cc4c3cb2364362776567462c391dc0e461a0c2
