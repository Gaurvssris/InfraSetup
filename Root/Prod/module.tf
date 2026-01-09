module "resource" {
  source = "../../Infra/azurerm_resource_group"
  rg     = var.resource
}
module "storage" {
    source ="../../Infra/azurerm_storage_account"
    strg = var.strg1
   

}