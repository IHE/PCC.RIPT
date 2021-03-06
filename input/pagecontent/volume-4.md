## National Extensions for the United States of America (USA)

### **Comment Submission**

This national extension document was authored under the sponsorship and supervision of the IHE Patient Care Coordination Technical Committee who welcome comments on this document and the IHE USA initiative. Comments should be directed to: http://www.ihe.net/PCC_Public_Comments

### **Referral for Interfacility Patient Transport  (RIPT)**

--------

#### **RIPT US Volume 3 Constraints **

----------

##### **RIPT US Volume 3 Attribute Constraints** 

The following attribute cardinalities constraints apply in the US.

**Table 4.I.2.1.1-1: US Attribute Cardinality Constraints**

|Attribute 			    | Cardinality |
|-----------------------|-------------|
| Race   				| RE [0..*]   |
| Ethnicity  			| RE [0..1]   |
{:grid}

##### **RIPT US Volume 3 Section Constraints** 

The following additional cardinality constraints apply to the Referral for Interfacility Patient Transport document specification and entries in Table 6.3.1.D.5-1 Referral for Interfacility Patient Transport (RIPT) Document Content Module Specification 

**FHIR**

For Use in the United states the following Structured Definitions should be replaced within the RIPT Composition: 

**RIPT US Resource Constraints**

|International					     | US Relm							    |
|------------------------------------|--------------------------------------|
| StructureDefinition/Patient-uv-ips | StructureDefinition/us-core-patient  |
{:grid}

**CDA**

The following additional cardinality constraints apply to the Referral for Interfacility Patient Transport document specification and entries:

**Table 4.I.2.1.2-1: PCS US Section Constraints **

|Cardinality		    | Section Element 	    |Value Set OID   					| Specification Document | Vocabulary Constraint |
|-----------------------|-----------------------|-----------------------------------|------------------------|-----------------------|
| RE [0..1]  			| Payor   				| 1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7 | PCC TF-2: 6.3.3.7.1    | 6.3.D2.5.3  | 
{:grid}

#### **RIPT Value Set Binding for US Realm Concept Domains**

This section defines the actual value sets and code systems for any coded concepts that were described by concept domains in the main profile and binds the value set to the coded concepts.

Value Set Binding for US Realm Concept Domains is same in FHIR as in CDA. When Using the FHIR Option for RIPT in the USA the us-core-patient and us-core-location structure definitions are to be used in place of the Patient and Location structure definitions. 
**Table 4.I.2.2-1: RIPT Value Set Binding for US Realm Concept Domains**

|UV Concept Domain		           | US Realm Vocabulary Binding or Single Code Binding | Value Set OID    				| 
|----------------------------------|----------------------------------------------------|-------------------------------|
| Ethnicity  				       | Ethnicity Group  			  						| 2.16.840.1.114222.4.11.837    |
| Race 							   | RaceCategory   			  						| 2.16.840.1.114222.4.11.836    |
| sDTCRaceCode 					   | Race    					  						| 2.16.840.1.113883.1.11.14914  |
| Religious Affiliation  		   | HL7 Religious Affiliation    						| 2.16.840.1.113883.1.11.19185  |
| Language Communication 		   | Language    				  						| 2.16.840.1.113883.1.11.11526  |
| Data Enterer  				   | Assigned entity   			  						| 2.16.840.1.113883.4.6         |
| Confidentiality code 			   | HL7 BasicConfidentialityKind 						| 2.16.840.1.113883.1.11.16926  |
{:grid}
