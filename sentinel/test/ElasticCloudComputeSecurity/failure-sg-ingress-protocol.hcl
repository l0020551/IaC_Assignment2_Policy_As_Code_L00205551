# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-security-group-ingress-traffic-restriction-protocol/./mocks/policy-failure-sg-ingress-protocol/mock-tfplan-v2.sentinel"
  }
}



param "prevent_unknown_ipv4_ingress" {
  value = true
}

param "port" {
  value = 22
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
