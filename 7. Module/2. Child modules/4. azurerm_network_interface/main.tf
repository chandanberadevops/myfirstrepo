data "azurerm_subnet" "example" {
    for_each = var.RGs
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.key
}
resource "azurerm_network_interface" "nic" {
    #depends_on = [ data.azurerm_subnet.example ]
    for_each = var.RGs
  name                = "${each.key}-nic"
  location            = each.value.location
  resource_group_name = each.key

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}