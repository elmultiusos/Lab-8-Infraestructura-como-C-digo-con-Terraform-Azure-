terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  # Backend remoto en Azure Storage
  backend "azurerm" {}
}
provider "azurerm" {
  features {}
  subscription_id                 = "a80bb1ba-8502-46b7-80e7-f2901dbb0bab"
  resource_provider_registrations = "none"

  # Permite autenticación con Service Principal (GitHub Actions) o Azure CLI (local)
  use_cli                    = false
  use_msi                    = false
  use_oidc                   = false
  skip_provider_registration = true
}