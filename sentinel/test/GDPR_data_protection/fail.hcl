mock "tfplan/v2" {
  module {
    source = "mocks/GDPR_mock_uncompliant.sentinel"
  }
}

test {
  rules = {
    main                        = false
    bucket_encryption_is_valid  = false
    public_access_is_blocked    = false
    s3_has_lifecycle_policy     = false
    rds_network_isolated        = false
    rds_storage_encrypted       = false
    audit_integrity_valid       = false
    backups_are_encrypted       = false
    enforce_modern_tls          = false
  }
}
