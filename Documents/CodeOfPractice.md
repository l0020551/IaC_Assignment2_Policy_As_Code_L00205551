# Code of Operations and Best Practice
## Introduction
This documentation outlines the code of practice and operating policys for this oraganisation.
This document constitutes the parameters in which developers are allowed operate within this organisation. The boundaries of this are defined and set by IT, securiy and the DevOps departments in accordance with existing European union GDPR  guidelines and regulations. The following are rules and boundaries defined by these parties: 

## Compliance; Digital sovereignty

The following parameters are set for geographic resitrictions on resoureces deployed by the organisation:
* All data of a sensitive nature MUST been stored in a location within the boarders of the nation in which it is sourced. 
* All data must be kept in accordance to the Laws and guidelines of the nation in which it resides. In the instance of EU laws; rules regarding GDPR shall be followed and updated accordingly. 
* All Data stored MUST fall within GDPR regulations. 

```
Restrict infrastructure deployments to approved geographical regions.

Assignment Brief:

* Enforce data residency requirements for resources storing sensitive information.
* Consider the implications of data replication, backups and administrative access.
* Explain how jurisdictional restrictions contribute to digital sovereignty.
```
## Security 
The following items require the specific attention reqgarding organisation security:  

### Supply chain integrity
* All 
* Versioning
* Valide modules with defined versions. 
```
Assignment Brief:
* Restrict Terraform providers to approved sources.
* Enforce approved provider versions.
* Require trusted Terraform module sources and pinned versions.
* Address provider integrity, module provenance and dependency verification.
* Identify supply chain risks that cannot be addressed through Sentinel alone
```

### Infrastructure security

```
Assignment Brief:
* Approved EC2 instance types.
* Encrypted EBS storage.
* Mandatory IMDSv2.
* Appropriate network security configurations.
* Restrictions on unrestricted inbound SSH access.
```


## Operational best practices

### EC2 Elastic Cloud Compute 
