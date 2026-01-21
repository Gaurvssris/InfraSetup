module "resource" {
  source = "../../InfraQA/azurerm_resource_group"
  rg     = var.resource
}
module "storage" {
    depends_on = [ module.resource ]
    source ="../../InfraQA/azurerm_storage_account"
    strg = var.strg
}
module "Vnet" {
    depends_on = [ module.resource ]
    source = "../../InfraQA/azurerm_virtual_network"
    vnet =var.vnet
}
module "Subnet" {
    depends_on = [ module.Vnet]
    source = "../../InfraQA/azurerm_subnet"
    subnetG =var.subnet
  
}
module "nic" {
    depends_on = [module.Subnet]
        source = "../../InfraQA/azurerm_nic"
    nic = var.nic

}
module "vm" {
    depends_on = [ module.nic ]
    source = "../../InfraQA/azurerm_virtual_machine"
    vm =var.vmachine
  
}