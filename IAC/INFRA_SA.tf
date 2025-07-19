/* resource "azurerm_storage_account" "this" {
  name                     = "${var.project_name}${var.environment}${var.location}sa" #"healthcaresalingaiah" 
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "development"
  }
}
resource "azurerm_storage_container" "this" {
  name                  = "${var.project_name}${var.environment}${var.location}container" #"tfstatecontainer"
  storage_account_id    = azurerm_storage_account.this.id
  container_access_type = "private"
} */