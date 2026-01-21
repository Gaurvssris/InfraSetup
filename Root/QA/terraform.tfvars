resource = {
Resourcename1 = {
    name     = "rgqa"
    location = "EastUS"
  }
}
strg = {
    StorageAccount1 = {
        name ="strgqa98380844110"
        rg_name = "rgqa"
        location = "EastUS"
    }
}
vnet ={
    vnet1 ={
 vnet_name= "vnetqa"
  rg_name = "rgqa"
    location = "EastUS"
    }
}
subnet = {
    subnet1 ={
        name ="subnetqa"
        name2 = "vnetqa"
name1 = "rgqa"
    location = "EastUS"
    }
}
nic = {
  nic1 ={
    name = "nicqa"
    resource_group_name     = "rgqa"
    location = "EastUS"
  }
}
vmachine = {
  Virtualmachine1 ={
    name ="VirtualmachineQA"
    location ="EastUS"
    resource_group_name     = "rgqa"
  }
}