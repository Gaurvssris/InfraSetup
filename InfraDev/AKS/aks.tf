resource "azurerm_resource_group" "gauravaks" {
  name     = "gauravaks1"
  location = "centralindia"
}

resource "azurerm_kubernetes_cluster" "gauravaksdev" {
  name                = "Dev-AKS"
  location            = azurerm_resource_group.gauravaks.location
  resource_group_name = azurerm_resource_group.gauravaks.name
  dns_prefix          = "exampledevaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.gauravaksdev.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.gauravaksdev.kube_config_raw

  sensitive = true
}