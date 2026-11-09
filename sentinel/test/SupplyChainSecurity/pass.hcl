# test/SupplyChainSecurity/pass.hcl

mock "tfconfig/v2" {
  module {
    source = "mocks/ComprimisedSupplyChain.sentinel"
  }
}

mock "tfplan/v2" {
  data = {
    resource_changes = {}
  }
}

param "organizations" {
  value = ["your-org"]
}

param "address" {
  value = "app.terraform.io"
}

param "is_destroy" {
  value = true
}

test {
  rules = {
    main = false
    providers_validated = false
    provenance_validated = false
    private_modules_validated = true  
  }
}
