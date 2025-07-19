resource "azurerm_kubernetes_cluster" "aks" {
  name                = "healthcare-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "healthcareaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "development"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw

  sensitive = true
}

/* resource "kubernetes_namespace_v1" "healthcare" {
  metadata {
    labels = {
      mylabel = "healthcare"
    }
    name = "healthcare-namespace"
  }
} */