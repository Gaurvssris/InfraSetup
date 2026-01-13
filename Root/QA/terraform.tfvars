resource = {
Resourcename1 = {
    name     = "rgqanew"
    location = "EastUS"
  }
}
strg1 = {
    StorageAccount1 = {
        name ="strgqa98380844110"
        rgname = "rgqanew"
        location = "EastUS"
    }
}
vnetq ={
    vnet1 ={
 name= "vnetqa"
  rgname = "rgqanew"
    location = "EastUS"
    }
}
subnetq = {
    subnet1 ={
        name ="subnetqa"
        vnet_name= "vnetqa"
resource_group_name = "rgqanew"
    location = "EastUS"
    }
}
nicq = {
  nic1 ={
    name = "nicqa"
    resource_group_name     = "rgqanew"
    location = "EastUS"
  }
}
vmqa = {
  Virtualmachine1 ={
    name ="VirtualmachineQA"
    location ="EastUS"
    resource_group_name     = "rgqanew"
  }
}