output "authentication_strength_policies_id" {
  description = "Map of id values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.id }
}
output "authentication_strength_policies_allowed_combinations" {
  description = "Map of allowed_combinations values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.allowed_combinations }
}
output "authentication_strength_policies_description" {
  description = "Map of description values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.description }
}
output "authentication_strength_policies_display_name" {
  description = "Map of display_name values across all authentication_strength_policies, keyed the same as var.authentication_strength_policies"
  value       = { for k, v in azuread_authentication_strength_policy.authentication_strength_policies : k => v.display_name }
}

