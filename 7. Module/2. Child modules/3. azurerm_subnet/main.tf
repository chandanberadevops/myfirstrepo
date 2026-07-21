resource "azurerm_subnet" "example" {
  for_each= var.RGs
  name                 = each.value.subnet_name
  resource_group_name  = each.key
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.subnet_address
}


# resource "azurerm_subnet" "example" {
#   for_each= var.RGs
#   name                 = each.value.subnet_name
#   resource_group_name  = each.key
#   virtual_network_name = azurerm_virtual_network.example[each.key].name
#   address_prefixes     = each.value.subnet_address
# }