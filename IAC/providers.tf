terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "90de0c98-2d25-4094-a834-32b29fdf8003"
  tenant_id       = "0b889ca3-c111-47fc-b0ed-88a37593b8fa"
}
terraform {
  backend "azurerm" {
    resource_group_name  = "HealthCareRG"
    storage_account_name = "lingaiahdeveastussa"
    container_name       = "lingaiahdeveastuscontainer"
    key                  = "aks.tfstate"
  }
}