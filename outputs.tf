output "keys_lookup_id" {
  description = "Map of id values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.id }
}
output "keys_lookup_datacenter" {
  description = "Map of datacenter values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.datacenter }
}
output "keys_lookup_error_on_missing_keys" {
  description = "Map of error_on_missing_keys values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.error_on_missing_keys }
}
output "keys_lookup_key" {
  description = "Map of key values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.key }
}
output "keys_lookup_namespace" {
  description = "Map of namespace values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.namespace }
}
output "keys_lookup_partition" {
  description = "Map of partition values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.partition }
}
output "keys_lookup_token" {
  description = "Map of token values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.token }
  sensitive   = true
}
output "keys_lookup_var" {
  description = "Map of var values across all keys_lookup, keyed the same as var.keys_lookup"
  value       = { for k, v in data.consul_keys.keys_lookup : k => v.var }
}

