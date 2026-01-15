resource = {
  Resourcename1 = {
    name     = "rgDev29"
    location = "centralindia"

  }
}
strg1 = {
    StorageAccount1 = {
        name ="strgdev98380844110"
        rg_name = "rgDev29"
        location = "EastUS"
    }
}
vnetd ={
    vnet1 ={
 vnet_name= "vnetdev29"
 rg_name = "rgDev29"
        location = "EastUS"
    }
}
subnetd = {
    subnet1 ={
        name ="subnetdev"
        name2= "vnetdev29"
 name1     = "rgDev29"
    location = "EastUS"
    }
}
nicname = {
  nic1 ={
    name = "nicDev29"
    resource_group_name     = "rgDev29"
    location = "EastUS"
 
  }

}
vmdev = {
  Virtualmachine1 ={
    name ="VirtualmachineDev29"
    location ="EastUS"
    resource_group_name     = "rgDev29"
  }
}