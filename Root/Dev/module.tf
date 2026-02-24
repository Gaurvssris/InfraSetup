module "resource" {
source = "../../InfraDev/azurerm_resource_group"
  rg     = var.resource
}
module "storage" {
    depends_on = [ module.resource ]
    source ="../../InfraDev/azurerm_storage_account"
    strg = var.strg1
}
module "Vnet" {
    depends_on = [ module.resource ]
    source = "../../InfraDev/azurerm_virtual_network"
    vnet =var.vnetd
}
module "Subnet" {
    depends_on = [ module.Vnet]
    source = "../../InfraDev/azurerm_subnet"
    subnetG =var.subnetd
  
}
module "nic" {
    depends_on = [module.Subnet]
        source = "../../InfraDev/azurerm_nic"
    nic = var.nicname

}
module "vm" {
    depends_on = [ module.nic ]
    source = "../../InfraDev/azurerm_virtual_machine"
    vm =var.vmdev
  
}
module "AKSDev" {
    source = "../../InfraDev/AKS"
  
}