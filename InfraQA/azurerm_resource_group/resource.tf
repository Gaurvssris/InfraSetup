resource "azurerm_resource_group" "gaurav017" {
    for_each = var.rg
  name = each.value.name
  location = each.value.location
}