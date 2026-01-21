resource = {
Resourcename2 = {
    name     = "rgProd"
    location = "EastUS"

  }
}
strg = {
    StorageAccount1 = {
        name ="strgprod983808441100"
        rg_name = "rgProd"
        location = "EastUS"
    }

}
vnet ={
    vnet1 ={
 vnet_name= "vnetProd"
  rg_name = "rgProd"
    location = "EastUS"
    }
}
subnet = {
    subnet1 ={
        name ="subnetProd"
        name2= "vnetProd"
name1 = "rgProd"
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
vmachine = {
  Virtualmachine1 ={
    name ="VirtualmachineProd"
    location ="EastUS"
    resource_group_name     = "rgProd"
  }
}