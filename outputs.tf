output "authentication_strength_policies_id" {
  description = "Map of id values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authentication_strength_policies_allowed_combinations" {
  description = "Map of allowed_combinations values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.allowed_combinations if v.allowed_combinations != null && length(v.allowed_combinations) > 0 }
}
output "authentication_strength_policies_description" {
  description = "Map of description values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "authentication_strength_policies_display_name" {
  description = "Map of display_name values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}

