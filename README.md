# IaC_Assignment2_Policy_As_Code_L00205551

---

Student: Ruairí Ó hÓgartaigh
Student ID: L00205551

---
This the the Second assignment Title "Policy As Code"


Refer to [Code of Operations and Best Practice](./Documents/CodeOfPractice.md) for the organisation's code of operations. The Codified declaration of the systems Policy as Code. 



## Digital Sovereignty

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




## IaC Supply chain security

### Resources used
* Article: [https://oneuptime.com/blog/post/2026-02-23-how-to-handle-terraform-provider-supply-chain-security/view](https://oneuptime.com/blog/post/2026-02-23-how-to-handle-terraform-provider-supply-chain-security/view)
* Article: [https://www.hashicorp.com/en/blog/enforce-private-module-registry-usage-in-terraform-with-sentinel](https://www.hashicorp.com/en/blog/enforce-private-module-registry-usage-in-terraform-with-sentinel)

## Implementation
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

* I tried to implement pivate org modules as shown in the first article. I didn't have a same to test so left the modules commented out. 

## Infrastucture Security

### Instance type parameters
For this task the folloing tutorials and repos were analysed: 
* Turorial: [https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-policy](https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-policy)
    * Repo:[https://github.com/hashicorp-education/learn-sentinel-write-policy](https://github.com/hashicorp-education/learn-sentinel-write-policy) 

* Tutorial: [https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-import](https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-import)
  * Repo: https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-import
* Tutorial: [https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-testing](=https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-testing)







# Add tagging