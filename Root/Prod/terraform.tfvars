resource = {
Resourcename1 = {
    name     = "rgProd"
    location = "EastUS"

  }
}
strg1 = {
    StorageAccount1 = {
        name ="strgprod98380844110"
        rgname = "rgProd"
        location = "EastUS"
    }

}
vnetd ={
    vnet1 ={
 name= "vnetProd1"
  rgname = "rgProd"
    location = "EastUS"
    }
}
subnetd = {
    subnet1 ={
        name ="subnetProd"
        vnet_name= "vnetProd1"
resource_group_name = "rgProd"
    location = "EastUS"
    }
}
nicname = {
  nic1 ={
    name = "nicProd"
    resource_group_name     = "rgProd"
    location = "EastUS"
  }

}
vmdev = {
  Virtualmachine1 ={
    name ="VirtualmachineProd1"
    location ="EastUS"
    resource_group_name     = "rgProd"
  }
}