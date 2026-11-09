# test/SupplyChainSecurity/fail.hcl

mock "tfconfig/v2" {
  module {
    source = "mocks/ComprimisedSupplyChain.sentinel"
  }
}

param "organizations" {
  value = ["your-org"]
}

param "address" {
  value = "app.terraform.io"
}

param "is_destroy" {
  value = false
}

test {
  rules = {
    main = false
    providers_validated = false
    provenance_validated = false
    ##private_modules_validated = false
  }
}
