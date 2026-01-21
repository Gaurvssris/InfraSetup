resource "azurerm_virtual_network" "vnet01" {
    for_each = var.vnet
  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
   address_space       = ["10.0.0.0/16"]
}