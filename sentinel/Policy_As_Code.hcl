# Policy_As_Code.hcl
# ---------------------------------------------------------
## modules
# ---------------------------------------------------------
import "module" "tfresources" {
  source = "../modules/tfresources/tfresources.sentinel"
}

import "module" "tfconfig-functions" {
  source = "../modules/tfconfig-functions/tfconfig-functions.sentinel"
}

import "module" "tfplan-functions" {
  source = "../modules/tfplan-functions/tfplan-functions.sentinel"
}

import "module" "report" {
  source = "../modules/report/report.sentinel"
}



# ---------------------------------------------------------
## Mocking & Global Runtime Data
# ---------------------------------------------------------
mock "tfconfig/v2" {
  module {
    source = "test/SupplyChainSecurity/mocks/SecureSupplyChain.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "test/region_of_operation/mocks/pass-secure-region.sentinel"
  }
}

# ---------------------------------------------------------
## Governance Policy Rules Definitions
# ---------------------------------------------------------
policy "region_of_operation" {
  source            = "./region_of_operation.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "SupplyChainSecurity" {
  source = "./SupplyChainSecurity.sentinel"
  enforcement_level = "hard-mandatory"
  
  params = {
    # organizations = ["your-corporate-org"]  # Commented out
    address       = "app.terraform.io"
    is_destroy    = false
  }
}


policy "GDPR_data_protection" {
  source            = "./GDPR_data_protection.sentinel"
  enforcement_level = "hard-mandatory"
}

#policy "ElasticCloudComputeSecurity" {
#  source = "./ElasticCloudComputeSecurity.sentinel"
#  enforcement_level = "hard-mandatory"
#}


policy "ec2-ebs-encryption-enabled" {
  source = "./ec2-ebs-encryption-enabled.sentinel"
  enforcement_level = "hard-mandatory"
}


policy "ec2-metadata-imdsv2-required" {
  source = "./ec2-metadata-imdsv2-required.sentinel"
  enforcement_level = "hard-mandatory"
}


policy "ec2-network-acl" {
  source = "./ec2-network-acl.sentinel"
  enforcement_level = "hard-mandatory"
}


policy "ec2-security-group-ingress-traffic-restriction-port" {
  source = "./ec2-security-group-ingress-traffic-restriction-port.sentinel"
  enforcement_level = "hard-mandatory"
}


policy "ec2-security-group-ingress-traffic-restriction-protocol" {
  source = "./ec2-security-group-ingress-traffic-restriction-protocol.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "ec2-vpc-default-security-group-no-traffic" {
  source = "./ec2-vpc-default-security-group-no-traffic.sentinel"
  enforcement_level = "hard-mandatory"
}


policy "ec2-vpc-flow-logging-enabled" {
  source = "./ec2-vpc-flow-logging-enabled.sentinel"
  enforcement_level = "hard-mandatory"
}


policy "ec2-type_restrictions" {
  source = "./ec2-type_restrictions.sentinel"
  enforcement_level = "hard-mandatory"
}
