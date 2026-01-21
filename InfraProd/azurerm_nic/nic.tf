resource "azurerm_network_interface" "nic00" {
    for_each = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
data "azurerm_subnet" "subnet" {
  name                 = "subnetProd"
  virtual_network_name = "vnetProd"
  resource_group_name  = "rgProd"
}