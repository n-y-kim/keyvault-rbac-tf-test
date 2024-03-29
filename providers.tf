terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm"{
    features {}
}

provider "azurerm" {
    alias = "keyvault-sp"
    features {}
    skip_provider_registration = true
    use_msi = false
    client_id = "client id of service principle"
    client_secret = "client secret generated by service principle"
    subscription_id = "subscription id"
    tenant_id = "tenant id"
}