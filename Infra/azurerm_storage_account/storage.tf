
resource "azurerm_storage_account" "storage" {
  for_each = var.strg

  name                     = each.value.name
  resource_group_name      = each.value.rgname
  location                 = each.value.location
   account_tier             = "Standard"
  account_replication_type = "LRS"
}
