mock "tfplan/v2" {
  module {
    source = "mocks/GDPR_mock_compliant.sentinel"
  }
}

test {
  rules = {
    main                        = true
    bucket_encryption_is_valid  = true
    public_access_is_blocked    = true
    s3_has_lifecycle_policy     = true
    rds_network_isolated        = true
    rds_storage_encrypted       = true
    audit_integrity_valid       = true
    backups_are_encrypted       = true
    enforce_modern_tls          = true
  }
}
