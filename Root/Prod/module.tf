module "resource" {
  source = "../../Infra/azurerm_resource_group"
  rg     = var.resource
}
module "storage" {
    depends_on = [ module.resource ]
    source ="../../Infra/azurerm_storage_account"
    strg = var.strg1
}
module "Vnet" {
    depends_on = [ module.resource ]
    source = "../../Infra/azurerm_virtual_network"
    vnet =var.vnetd
}
module "Subnet" {
    depends_on = [ module.Vnet]
    source = "../../Infra/azurerm_subnet"
    subnetG =var.subnetd
  
}
module "nic" {
    depends_on = [module.Subnet]
        source = "../../Infra/azurerm_nic"
    nic = var.nicname

}
module "vm" {
    depends_on = [ module.nic ]
    source = "../../Infra/azurerm_virtual_machine"
    vm =var.vmdev
  
}