mock "tfconfig/v2" {
  module {
    source = "mocks/pass-valid-region.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "mocks/pass-valid-region.sentinel"
  }
}

test {
  rules = {
    main             = true
    provider_allowed = true
    az_allowed       = true
    region_allowed   = true
  }
}
