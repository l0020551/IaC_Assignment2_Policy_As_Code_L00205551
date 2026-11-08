mock "tfconfig/v2" {
  module {
    source = "mocks/failed-unauthorised-region.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "mocks/failed-unauthorised-region.sentinel"
  }
}

test {
  rules = {
    main             = false
    provider_allowed = false
    az_allowed       = false
    region_allowed   = false
  }
}
