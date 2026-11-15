# Code of Operations and Best Practice
## Introduction

This documentation outlines the code of practice and operating policys for this oraganisation.
This document constitutes the parameters in which developers are allowed operate within this organisation. The boundaries of this are defined and set by IT, securiy and the DevOps departments in accordance with existing European union GDPR  guidelines and regulations. The following are rules and boundaries defined by these parties: 

---
## Compliance; Digital sovereignty

The following parameters are set for geographic resitrictions on resoureces deployed by the organisation:
* All data of a sensitive nature MUST been stored in a location within the boarders of the nation in which it is sourced. 
* All data must be kept in accordance to the Laws and guidelines of the nation in which it resides. In the instance of EU laws; rules regarding GDPR shall be followed and updated accordingly. 
* All Data stored MUST fall within GDPR regulations. 

---
## Security 
The following items require the specific attention regarding organisation security:  
*  To implement policies recommended by CIS and terraform from the repository.
*  A bi-weekly review and report on current policy, best practice and roadmap to future improve,ments.
*  At minimum, the following restrains are required in Policy as code:
  * EC2 instance types approved by head of Infrastructure.
  * Encrypted EBS storage - latest code block form CIS and Terraform 
  * Mandatory IMDSv2- latest code block form CIS and Terraform 
  * Appropriate network security configurations - latest code blocks form CIS and Terraform 
  * Restrictions on unrestricted inbound SSH access - latest code block form CIS and Terraform 
---

## Supply chain integrity
The following items require the specific attention regarding organisation supply chain integrity:  
  *  Enforce Approved Provider Versions
  *  Limit access the public resources to controlled platforms such the terraform registry.
  *  All thhird party resources should come with some form or traceability in the form of version and source.  

---