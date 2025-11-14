terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  # Backend local temporal - comentar para usar backend remoto
  # backend "azurerm" {}
}
provider "azurerm" {
  features {}
  subscription_id = "a80bb1ba-8502-46b7-80e7-f2901dbb0bab"
}
