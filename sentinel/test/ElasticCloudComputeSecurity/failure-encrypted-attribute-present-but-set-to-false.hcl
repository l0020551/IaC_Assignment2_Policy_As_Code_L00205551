# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
  module {
    source = "ec2-ebs-encryption-enabled/./mocks/policy-failure-encrypted-attribute-present-but-set-to-false/mock-tfplan-v2.sentinel"
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
