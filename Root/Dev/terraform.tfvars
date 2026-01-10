resource = {
  Resourcename1 = {
    name     = "rgDev"
    location = "EastUS"

  }
  Resourcename2 = {
    name     = "rgDev1"
    location = "centralindia"

  }
}
strg1 = {
    StorageAccount1 = {
        name ="strgdev9838084411"
        xyz = "rgDev"
        location = "EastUS"
    }
}
vnetd ={
    vnet1 ={
 name= "vnetdev1"
 name1     = "rgDev1"
    location = "centralindia"
    }
}
subnetd = {
    subnet1 ={
        name ="subnetdev"
        name2= "vnetdev1"
 name1     = "rgDev1"
    location = "centralindia"
    }
}
nicname = {
  nic1 ={
    name = "nicDev"
    resource_group_name     = "rgDev1"
    location = "centralindia"
  }

}
vmdev = {
  Virtualmachine1 ={
    name ="VirtualmachineDev1"
    location ="centralindia"
    resource_group_name     = "rgDev1"
  }
}