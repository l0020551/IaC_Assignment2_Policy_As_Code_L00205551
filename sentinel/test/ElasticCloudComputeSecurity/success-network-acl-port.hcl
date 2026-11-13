# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-network-acl/./mocks/success-network-acl-port/mock-tfplan-v2.sentinel"
  }
}



param "blocked_ports" {
  value = [20]
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
