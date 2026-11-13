# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfconfig/v2" {
  module {
    source = "ec2-vpc-flow-logging-enabled/./mocks/policy-success-all-vpc-resources-flow-logging-enabled-with-traffic-type-reject/mock-tfconfig-v2.sentinel"
  }
}



test {
  rules = {
    main = true
  }
}

mock "tfplan/v2" { data = { resource_changes = {} } }
