# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-metadata-imdsv2-required/./mocks/policy-success-account-level-metadata/mock-tfplan-v2.sentinel"
  }
}



test {
  rules = {
    main = true
  }
}

mock "tfconfig/v2" {
  data = {
    resources = {}
  }
}
