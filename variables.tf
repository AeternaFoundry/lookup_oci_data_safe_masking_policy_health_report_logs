variable "data_safe_masking_policy_health_report_logs_lookup" {
  description = <<EOT
Map of data_safe_masking_policy_health_report_logs_lookup, attributes below
Required:
    - masking_policy_health_report_id
Optional:
    - message_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    masking_policy_health_report_id = string
    message_type                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

