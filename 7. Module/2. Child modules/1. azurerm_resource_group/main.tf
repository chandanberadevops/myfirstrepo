resource "azurerm_resource_group" "this" {
  for_each = var.RGs
    name     = each.key
    location = each.value.location
}