# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-security-group-ingress-traffic-restriction-protocol/./mocks/policy-success-sg-port/mock-tfplan-v2.sentinel"
  }
}



param "ensure_no_ingress_to_port_3389_from_unknown_sources" {
  value = true
}

param "prevent_unknown_ipv4_ingress" {
  value = true
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
