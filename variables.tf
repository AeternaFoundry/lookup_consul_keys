variable "keys_lookup" {
  description = <<EOT
Map of keys_lookup, attributes below
Optional:
    - datacenter
    - error_on_missing_keys
    - namespace
    - partition
    - token
    - key (block):
        - default (optional)
        - name (required)
        - path (required)
EOT

  type = map(object({
    datacenter            = optional(string)
    error_on_missing_keys = optional(bool)
    namespace             = optional(string)
    partition             = optional(string)
    token                 = optional(string)
    key = optional(list(object({
      default = optional(string)
      name    = string
      path    = string
    })))
  }))
}

