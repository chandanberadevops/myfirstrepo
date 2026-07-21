# resource "azurerm_resource_group" "example" {
#   for_each = var.RGs
#   name     = each.key
#   location = each.value.location
# }

resource "azurerm_public_ip" "example" {
  #depends_on     = [azurerm_resource_group.example]
  for_each            = var.RGs
  name                = "${each.key}-pip"
  resource_group_name = each.key
  location            = each.value.location
  allocation_method   = each.value.ip_allocation_method

  #   tags = {
  #     environment = "Production"
  #   }
}