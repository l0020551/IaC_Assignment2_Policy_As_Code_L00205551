# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-metadata-imdsv2-required/./mocks/policy-failure-no-metadata/mock-tfplan-v2.sentinel"
  }
}



test {
  rules = {
    main = false
  }
}

mock "tfconfig/v2" {
  data = {
    resources = {}
  }
}
