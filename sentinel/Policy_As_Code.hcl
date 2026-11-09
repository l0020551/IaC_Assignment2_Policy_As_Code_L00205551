# Policy_As_Code.hcl

# ---------------------------------------------------------
## Mocking & Global Runtime Data
# ---------------------------------------------------------
mock "tfconfig/v2" {
  module {
    source = "test/SupplyChainSecurity/mocks/SecureSupplyChain.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "test/region_of_operation/mocks/pass-secure-region.sentinel"
  }
}

# ---------------------------------------------------------
## Governance Policy Rules Definitions
# ---------------------------------------------------------
policy "region_of_operation" {
  source            = "./region_of_operation.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "SupplyChainSecurity" {
  source = "./SupplyChainSecurity.sentinel"
  enforcement_level = "hard-mandatory"
  
  params = {
    # organizations = ["your-corporate-org"]  # Commented out
    address       = "app.terraform.io"
    is_destroy    = false
  }
}


policy "GDPR_data_protection" {
  source            = "./GDPR_data_protection.sentinel"
  enforcement_level = "hard-mandatory"
}
