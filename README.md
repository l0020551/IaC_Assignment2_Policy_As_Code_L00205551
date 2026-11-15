# IaC_Assignment2_Policy_As_Code_L00205551

---

Student: Ruairí Ó hÓgartaigh
Student ID: L00205551

---
This the the Second assignment Title "Policy As Code"


Refer to [Code of Operations and Best Practice](./Documents/CodeOfPractice.md) for the organisation's code of operations. The Codified declaration of the systems Policy as Code. 

---

## Digital Sovereignty

* In this section, to focus the goals of this task, the aims are to implement GDPR compliant structures to data. This is the minimum standard required organisations that handle the personal data of individuals in ireland and most other European countries. 

### Resources used
* Referrred to this for region restriction [https://oneuptime.com/blog/post/2026-02-23-how-to-write-sentinel-policies-for-region-restrictions/view](https://oneuptime.com/blog/post/2026-02-23-how-to-write-sentinel-policies-for-region-restrictions/view)

* Database Security policies [https://oneuptime.com/blog/post/2026-02-23-how-to-use-sentinel-for-database-security-policies/view](https://oneuptime.com/blog/post/2026-02-23-how-to-use-sentinel-for-database-security-policies/view)
* Centre of internet security (CIS) pre-written Sentinel libraries [https://www.hashicorp.com/en/blog/simplify-policy-adoption-in-terraform-with-pre-written-sentinel-policies-for-aws](https://www.hashicorp.com/en/blog/simplify-policy-adoption-in-terraform-with-pre-written-sentinel-policies-for-aws)
* CIS Policy Library [Repository](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/tree/main/policies/)
* Extremely useful: GDPR blocks [https://compliance.tf/gdpr/](https://compliance.tf/gdpr/)


### Implementation:
1. This blog was used for referenece when developing geo-restrictions: [https://oneuptime.com/blog/post/2026-02-23-how-to-write-sentinel-policies-for-region-restrictions/view](https://oneuptime.com/blog/post/2026-02-23-how-to-write-sentinel-policies-for-region-restrictions/view)

2.  I asked the Gemini LLM AI built into the chrome browser to refer to [https://compliance.tf/gdpr/](https://compliance.tf/gdpr/) and generate GDPR compliant data storage blocks for aws

```
  Given this webpage https://compliance.tf/gdpr/; provide GDPR compliant blocks for data storage and management.
```
[AI prompt on GDPR](./Documents/Screenshots/GDPR.png)

On reviewing the content generated, I prompted the same AI if this was a comprehensive cover of GDPR rules. It noted  storage backups which bleed into the next part of this section: 

[GDPR data backup](./Documents/Screenshots/GDPR_Data-Handling.png)

3. On receiving this advice, I confirmed that [GDPR regulations implemented cover topic three](./Documents/Screenshots/GDPR_DataProtection.png). Chrome based Geimini once again confirmed that implementing policy in accordance with GDPR covers Data Protection are regulation. 

4. *Explain how jurisdictional restrictions contribute to digital sovereignty.*

   GDPR (General Data Protection Regulation) is a good example of digital sovereignty in practice. It covers the safegaurding of an individual's information within the Laws of the European union. 
   
   By Codify regulations around private person's data, organisations have clear guidelines to follow within the EU regards to how private data is stored, processed  and the geographic boundaries in which it must reside. 

   Within this framework indiduals maintain the rights and sovereignty to their own data. This can be summerised in the eight fundemental rights of GDPR which are are follows: 

   1. The Right to be Informed – Articles 13 & 14
   2. The Right of Access – Article 15
   3. The Right to Rectification – Article 16
   4. The Right to Erasure ("Right to be Forgotten") – Article 17
   5. The Right to Restrict Processing – Article 18
   6. The Right to Data Portability – Article 20
   7. The Right to Object – Article 21
   8. Rights in Relation to Automated Decision-Making and Profiling – Article 22
  
  In conclusion, the jurisdictional restrictions define within GDPR among other elements of the framework give idividuals within the EU sovereignty over how there personal data is used.  

   Geimini questions when forming response to question 4: 
   * To help form response to question(prompt1)[.Documents/Screenshots/gdpr_regarding_digitalSovereignty.png] 
   * To summarises individual's rights regarding data usage (prompt2)[./Documents/gdpr_individual_rights.png]


## Digital Sovereignty further discussions, sentinel limitations -discussion:
* Sentinel can only protect data on infrastructure within its scope. Organisations need to be aware of their obligations beyond this scope too. i.e. hard-copies of data, data stored locally that is outside the scope of cloud compute resources etc..
*  Laws, Rules and regulations are subject to change, it is important for organisations to keep up to date with current and incoming regulations. It is also important that these changes are proactively implemented on an organisational level in code of practice and implementation. 
*  GDPR is the bare minimum, organisations may wish to act more proactively in implementing digital sovereignty depending on local laws and the nature of the data. 

---

## IaC Supply chain security

### Resources used
* Article: [https://oneuptime.com/blog/post/2026-02-23-how-to-handle-terraform-provider-supply-chain-security/view](https://oneuptime.com/blog/post/2026-02-23-how-to-handle-terraform-provider-supply-chain-security/view)
* Article: [https://www.hashicorp.com/en/blog/enforce-private-module-registry-usage-in-terraform-with-sentinel](https://www.hashicorp.com/en/blog/enforce-private-module-registry-usage-in-terraform-with-sentinel)
* https://www.sentinelone.com/cybersecurity-101/cybersecurity/software-supply-chain-security/

### Implementation
* Implemented private module enforement using the terraform article refereneced above.
* Followed other article too  and implemented versioning of provider.
* I couldn't find other articles to build upon so questioned Geimini in the browser again:
  ```
  using terraform Sentinel, how can I improve on supply change security? I have implemented these codeblocks sofar:
  https://oneuptime.com/blog/post/2026-02-23-how-to-handle-terraform-provider-supply-chain-security/view

  and 
  https://www.hashicorp.com/en/blog/enforce-private-module-registry-usage-in-terraform-with-sentinel
  ```
[Geimini](./Documents/Screenshots/)

* I tried to implement pivate org modules as shown in the first article. I didn't have a same to test so left the modules commented out. (Maybe possible with HCP)


### The importance of supply chain integrity - discussion.

* Using third party libraries and modules is a key concern and vulerability. It is one of the main potential vunerabilities to a project. While insuring complete security is an endless endevour, there  are safegaurds that can be put in place to insure supply chain security. 
* By using available methods to the secure supply chain,  vunerabilitys in which a project can be comprimised leading to reputational, financial loss or legal litigation can be minimised and or avoided.   
* Many of these tools work to secure a project supplychain but are not a panacea. It is important for the concerning party to be proactive in keeping up to date with emerging vunerabilities and insuring the possible patches available are implemented.  

---

## Infrastucture Security

* In this section existing publicly available code blockes from CIS and terraform were integrted into the project. These code block have greater test coverage and implements several safegaurds that otherwise wouldn't be integratavble into this project in the alloted timeframe. 

### Resources used
* restricting EC2 types, using [this tutorial](https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-policy)
* Found EBS encryption in CIS repo referenced [here](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-ebs-encryption-enabled.sentinel) 
* Mandatory IMDSv2 [sample block used](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-metadata-imdsv2-required.sentinel)
* for Appropriate network security configurations refer to remainder of CIS repo. 
* SSH restrictions [sampleblock used](https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel)


### Implementation

* I noticed most of the content of this step is present in this repo, I simply copied over the code blocks and added it to the Policy_As_Code.hcl block: https://github.com/hashicorp/policy-library-CIS-Policy-Set-for-AWS-Terraform/tree/main/policies/ec2
* If I were to develop further on the repo, I would add the CIS as a submodule where the most upto date CIS block would be deployed. 

* Finalling, I added the EC2 restrictions outlined in [this tutorial](https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-policy).



## Infrastucture Security - Discussion
* While CIS gives good overall prebuilt AWS security modules, it is important for an organisations to review these and explore whether they require further action for their particular application and security.
* It is important to keep up to date with this repo for patches for future exploits which may be discovered or emerge in future developments.
* There is no point in reinventing the wheel, if terraform signs off on the CIS modules, they probably provide a level of security suitable for a project. 


---

## Policy implementation and testing

* A this stage all sentinel policies have been generated with mock scripts passing or failing policies as desired. If a person reviewing this codebase have terraform sentinel on their local system then [sentinel test1/3](./Documents/Screenshots/SentinelTest1_3.png),[sentinel test2/3](./Documents/Screenshots/sentinelTest2_3.png),[sentinel test3/3](./Documents/Screenshots/sentinel_test3_3.png) and [sentinel apply](./Documents/Screenshots/SentinelApply.png) should compile without issue. 
* Existing mocking infrastructure already provides a layer validation for policy passing or failing given a paramater meets of fails to meet defined policy. All this testing can be found in the sentinel subfolder. 
* Next step will be Integration of policies with HCP. On setting up HCP, it prompts AWS keys to continue. I didn't want to pay AWS for testing. The mocking files provide enough evidence. 
* Refer to [mock files](./sentinel/) within the sentinel directory for policy evaluations. 
  * The hcl files labelled `pass.hcl` or for examples integrated from CIS repo; the hcl containing `success` for passing parameters. 
  * The hcl files labelled `fail.hcl`  or for examples integrated from CIS repo; the hcl containing `failure` for failing parameters. 
  
* Only after generating all sentinel policies did I realise there was a method of creating  a .tf policy and poritng it to sentinel. This step was skipped and I went straight into mocking pass/fail criteria in HCL files. 

* In hindesight, I could have used this method but was able to generate policies without it. 

* There doesn't appear to be a means of generating this data without completely redo-ing work on policys that already work. 
* One last attempt was made with HCL, using a localstack docker container ti mock AWS.  
* In the end the policies were manually loaded in and tested with the one "hard--Manditory" limit. Screenshots of these functioning may be found in the test_proof directory. Modules copied from CIS were not tested as it can be assumed these production blocks work as intended, also to get them to compile locally, some paths needed to be altered in this repo. 

### Explain how policy enforcement prevents non-compliant deployments:
  * By implementing sentinel or policy as code, developers can apply parameters that limit the scope of infrastructure that can be deployed. 
  * This limit makes the scope of deployment fall within the limits defined by Sentinel or codifiedpolicy as code.
  * Sentinel and other policy as code tools can be used to enforce legal requiremments such as GDPR.
  * It can also be used to to limit the deployment of infrastructure to pre-approved resources. 
  * Sentinel sets operating parameters in which devlopment and operations are  allowed to occur.
  * By implemententing Sentinel or other Policy as Code, users operate within organisational and or legal  rules. 







