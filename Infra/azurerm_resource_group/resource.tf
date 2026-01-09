resource "azurerm_resource_group" "gaurav" {
    for_each = var.rg
  name = each.value.name
  location = each.value.location
}