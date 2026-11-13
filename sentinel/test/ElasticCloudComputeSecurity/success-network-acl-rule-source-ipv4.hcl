# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-network-acl/./mocks/success-network-acl-rule-source-ipv4/mock-tfplan-v2.sentinel"
  }
}



param "blocked_ports" {
  value = [22]
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
