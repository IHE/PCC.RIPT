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

### 6.3.2 CDA Header Content Modules
No new Header Elements.

### 6.3.3 CDA Section Content Modules

##### 6.3.3.10.S1 Certification of Medical Necessity - Section Content Module 
**ToDo**

##### 6.3.3.10.S2 Transport Instructions - Section Content Module
**ToDo**

### 6.3.3 CDA Entry Content Modules

#### 6.3.3.E Medical Necessity Entry 1.3.6.1.4.1.19376
The Medical Necessity observation is a Simple Observation that records the Reason for Physician Certification Statement.  

##### 6.3.4.E.1 Specification 
**ToDo**

## 6.5 Transport Reason Value Sets

### 6.5.1 Transport Reason 1.3.6.1.4.1.19376.1.5.3.1.1.13.2.13
**ToDo**

## 6.6 HL7 FHIR Content Module

#### 6.6.X.1 FHIR Resource Bundle Content 
**ToDo**

#### 6.6.X.1.2 FHIR Resource Data Specifications
**To Do Documnent Contraints**