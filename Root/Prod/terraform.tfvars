resource = {
Resourcename2 = {
    name     = "rgProd34"
    location = "EastUS"

  }
}
strg1 = {
    StorageAccount1 = {
        name ="strgprod983808441100"
        rg_name = "rgProd34"
        location = "EastUS"
    }

}
vnetd ={
    vnet1 ={
 vnet_name= "vnetProd1"
  rg_name = "rgProd34"
    location = "EastUS"
    }
}
subnetd = {
    subnet1 ={
        name ="subnetProd"
        name2= "vnetProd1"
name1 = "rgProd34"
    location = "EastUS"
    }
}
nicname = {
  nic1 ={
    name = "nicProd"
    resource_group_name     = "rgProd34"
    location = "EastUS"
  }

}
vmdev = {
  Virtualmachine1 ={
    name ="VirtualmachineProd1"
    location ="EastUS"
    resource_group_name     = "rgProd34"
  }
}