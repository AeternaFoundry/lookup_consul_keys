output "keys_lookup_id" {
  description = "Map of id values across all keys_lookup, keyed the same as var.keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "keys_lookup_datacenter" {
  description = "Map of datacenter values across all keys_lookup, keyed the same as var.keys_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "keys_lookup_error_on_missing_keys" {
  description = "Map of error_on_missing_keys values across all keys_lookup, keyed the same as var.keys_lookup except keys with no error_on_missing_keys are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.error_on_missing_keys if v.error_on_missing_keys != null }
}
output "keys_lookup_key" {
  description = "Map of key values across all keys_lookup, keyed the same as var.keys_lookup except keys with no key are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.key if v.key != null && length(v.key) > 0 }
}
output "keys_lookup_namespace" {
  description = "Map of namespace values across all keys_lookup, keyed the same as var.keys_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "keys_lookup_partition" {
  description = "Map of partition values across all keys_lookup, keyed the same as var.keys_lookup except keys with no partition are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "keys_lookup_token" {
  description = "Map of token values across all keys_lookup, keyed the same as var.keys_lookup except keys with no token are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "keys_lookup_var" {
  description = "Map of var values across all keys_lookup, keyed the same as var.keys_lookup except keys with no var are omitted"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.var if v.var != null && length(v.var) > 0 }
}

