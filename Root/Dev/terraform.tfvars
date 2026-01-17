resource  = {
  Resourcename1 = {
    name     = "rgDev"
    location = "centralindia"

  }
}
strg1 = {
    StorageAccount1 = {
        name ="strgdev98380844110"
        rg_name = "rgDev"
        location = "EastUS"
    }
}
vnetd ={
    vnet1 ={
 vnet_name= "vnetdev"
 rg_name = "rgDev"
        location = "EastUS"
    }
}
subnetd = {
    subnet1 ={
        name ="subnetdev"
        name2= "vnetdev"
 name1     = "rgDev"
    location = "EastUS"
    }
}
nicname = {
  nic1 ={
    name = "nicDev"
    resource_group_name     = "rgDev"
    location = "EastUS"
 
  }

}
vmdev = {
  Virtualmachine1 ={
    name ="VirtualmachineDev"
    location ="EastUS"
    resource_group_name     = "rgDev"
  }
}