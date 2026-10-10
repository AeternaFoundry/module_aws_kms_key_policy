output "kms_key_policies_id" {
  description = "Map of id values across all kms_key_policies, keyed the same as var.kms_key_policies"
  value       = { for k, v in aws_kms_key_policy.kms_key_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_key_policies_bypass_policy_lockout_safety_check" {
  description = "Map of bypass_policy_lockout_safety_check values across all kms_key_policies, keyed the same as var.kms_key_policies"
  value       = { for k, v in aws_kms_key_policy.kms_key_policies : k => v.bypass_policy_lockout_safety_check if v.bypass_policy_lockout_safety_check != null }
}
output "kms_key_policies_key_id" {
  description = "Map of key_id values across all kms_key_policies, keyed the same as var.kms_key_policies"
  value       = { for k, v in aws_kms_key_policy.kms_key_policies : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_key_policies_policy" {
  description = "Map of policy values across all kms_key_policies, keyed the same as var.kms_key_policies"
  value       = { for k, v in aws_kms_key_policy.kms_key_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "kms_key_policies_region" {
  description = "Map of region values across all kms_key_policies, keyed the same as var.kms_key_policies"
  value       = { for k, v in aws_kms_key_policy.kms_key_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

