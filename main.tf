data "consul_keys" "keys_lookup" {
  for_each = var.keys_lookup

  datacenter            = each.value.datacenter
  error_on_missing_keys = each.value.error_on_missing_keys
  namespace             = each.value.namespace
  partition             = each.value.partition
  token                 = each.value.token

  dynamic "key" {
    for_each = each.value.key != null ? each.value.key : []
    content {
      default = key.value.default
      name    = key.value.name
      path    = key.value.path
    }
  }
}

