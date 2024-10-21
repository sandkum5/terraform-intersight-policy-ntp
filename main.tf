terraform {
  required_version = "~> 1.9.8"
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "~> 1.0.57"
    }
  }
}

resource "intersight_ntp_policy" "ntp" {
  name        = var.name
  description = var.description
  enabled     = var.enabled
  ntp_servers = var.ntp_servers
  timezone    = var.timezone
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
