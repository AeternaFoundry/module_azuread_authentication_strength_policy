variable "authentication_strength_policies" {
  description = <<EOT
Map of authentication_strength_policies, attributes below
Required:
    - allowed_combinations
    - display_name
Optional:
    - description
EOT

  type = map(object({
    allowed_combinations = set(string)
    display_name         = string
    description          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.authentication_strength_policies : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

