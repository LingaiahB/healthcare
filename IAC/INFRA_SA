resource "azurerm_storage_account" "SA" {
  name                     = "healthcaresalingaiah"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "development"
  }
}
resource "azurerm_storage_container" "example" {
  name                  = "tfstatecontainer"
  storage_account_id    = azurerm_storage_account.SA.id
  container_access_type = "private"
}
