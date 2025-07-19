resource "azurerm_resource_group" "rg" {
  name     = "${var.project_name}-${var.environment}-${var.location}-rg"
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = "healthcareacrlinga"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = true
}