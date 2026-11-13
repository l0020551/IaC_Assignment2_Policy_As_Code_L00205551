# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-ebs-encryption-enabled/./mocks/policy-success-encrypted-attribute-set-to-true/mock-tfplan-v2.sentinel"
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
