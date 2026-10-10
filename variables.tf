variable "kms_key_policies" {
  description = <<EOT
Map of kms_key_policies, attributes below
Required:
    - key_id
    - policy
Optional:
    - bypass_policy_lockout_safety_check
    - region
EOT

  type = map(object({
    key_id                             = string
    policy                             = string
    bypass_policy_lockout_safety_check = optional(bool)
    region                             = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

