## Mocking Configuration
mock "tfplan/v2" {
  data = {
    tfplan = "/home/tpt480/Documents/IaCModule/Assignment2/IaC_Assignment2_Policy_As_Code_L00205551/sentinel/mock_tests/mock_tfplan-pass.sentinel"
  }
}

## Digital Sovereignty Framework
policy "region_of_operation" {
    source = "/home/tpt480/Documents/IaCModule/Assignment2/IaC_Assignment2_Policy_As_Code_L00205551/sentinel/region_of_operation.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "GDPR_data_protection" {
    source            = "./policies/GDPR_data_protection.sentinel"
    enforcement_level = "hard-mandatory"
}