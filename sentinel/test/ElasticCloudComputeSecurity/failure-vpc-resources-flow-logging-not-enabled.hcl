# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfconfig/v2" {
  module {
    source = "ec2-vpc-flow-logging-enabled/./mocks/policy-failure-vpc-resources-flow-logging-not-enabled/mock-tfconfig-v2.sentinel"
  }
}



test {
  rules = {
    main = false
  }
}

mock "tfplan/v2" { data = { resource_changes = {} } }
