module "resource" {
  source = "../../InfraProd/azurerm_resource_group"
  rg     = var.resource
}
module "storage" {
    depends_on = [ module.resource ]
    source ="../../InfraProd/azurerm_storage_account"
    strg = var.strg
}
module "Vnet" {
    depends_on = [ module.resource ]
    source = "../../InfraProd/azurerm_virtual_network"
    vnet =var.vnet
}
module "Subnet" {
    depends_on = [ module.Vnet]
    source = "../../InfraProd/azurerm_subnet"
    subnetG =var.subnet
  
}
module "nic" {
    depends_on = [module.Subnet]
        source = "../../InfraProd/azurerm_nic"
    nic = var.nicname

}
module "vm" {
    depends_on = [ module.nic ]
    source = "../../InfraProd/azurerm_virtual_machine"
    vm =var.vmachine
  
}