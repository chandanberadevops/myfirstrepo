module "azurerm_resource_group" {
  source = "../Child modules/azurerm_resource_group"
  RGs    = var.RGs
}
module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../Child modules/azurerm_virtual_network"
  RGs        = var.RGs
}
module "azurerm_subnet" {
  depends_on = [module.azurerm_resource_group, module.azurerm_virtual_network]
  source     = "../Child modules/azurerm_subnet"
  RGs        = var.RGs
}
module "azurerm_public_ip" {
  depends_on = [module.azurerm_resource_group]
  source     = "../Child modules/azurerm_public_ip"
  RGs        = var.RGs
}
module "azurerm_network_interface" {
  depends_on = [module.azurerm_resource_group, module.azurerm_subnet]
  source     = "../Child modules/azurerm_network_interface"
  RGs        = var.RGs
}


