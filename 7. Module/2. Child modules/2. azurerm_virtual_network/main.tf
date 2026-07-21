resource "azurerm_virtual_network" "example" {
    for_each= var.RGs
  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.key
  address_space       = each.value.vnet_address
}

