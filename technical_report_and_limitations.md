# Technical report and Limitations

Review sample [Code of Practice](./Documents/CodeOfPractice.md) document. This is a brief take on what a codified document of operations may look like in brief. It is important to provide clear documentation outline code of operations, review development that can be understood in lay-mans teams so everyone within the organisation can understand, implement changes and highlight possible issue that may cause reputational, legal or fiscal damage to the organisatin.Other than this, other points to note are as follows:

## Digital Sovereignty 
* Sentinel can only protect data on infrastructure within its scope. Organisations need to be aware of their obligations beyond this scope too. i.e. hard-copies of data, data stored locally that is outside the scope of cloud compute resources etc..
*  Laws, Rules and regulations are subject to change, it is important for organisations to keep up to date with current and incoming regulations. It is also important that these changes are proactively implemented on an organisational level in code of practice and implementation. 
*  GDPR is the bare minimum, organisations may wish to act more proactively in implementing digital sovereignty depending on local laws and the nature of the data. 

## Infrastucture Security
* Terraform and CIS provide excellent modules for Infrastructure security that provide execellent coverage and cannot come more highly recommended.
* While CIS gives good overall prebuilt AWS security modules, it is important for an organisations to review these and explore whether they require further action for their particular application and security.
* It is important to keep up to date with this repo for patches for future exploits which may be discovered or emerge in future developments.
* There is no point in reinventing the wheel, if terraform signs off on the CIS modules, they probably provide a level of security suitable for a project. 

## Supply chain Security
* It is now more important than ever to be pro-active with supply chain securirty, with agentic AIs finding large vunerabilities in legacy infrastructure on a regular if not daily basis in 2026. It is important that third party modules are audited n a regular basis and all possile safegaurds enabled. 



##  Operational recommendations

* The free tier of HCL is extremely inefficient for testing with a limit on one "hard-mandatory". Local mocking provides a better free tier test environment.
* Terraform are arguable the largest provider of IaC solutions on the market. Some have voiced a deterioration in their front end service since being acquired by IBM. There are other IaC solutions on the market, if there is a high code literacy rate in an organisation's department, Pulumi may be a viable alternative.
* Terraform Premium tier may be a necessary cost for efficient operations. 
