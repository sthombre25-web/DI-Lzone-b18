terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-harry"
    storage_account_name = "harrystoragee"
    container_name = "tfstate"
    key = "dev-tfstate"
  }
}

provider "azurerm" {
  features {}
}