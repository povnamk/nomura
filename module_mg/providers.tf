terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  /*backend "azurerm" {
    resource_group_name = "HCL-POC-002"
    storage_account_name = "hclpoc002"
    container_name = "tfstate"
    key = "POC/HCL/terraform.tfstate"
  }
    backend "remote"{
      hostname = "app.terraform.io"
      organization = "devops4all"
      workspaces {
        name = "RG"
      }
    }*/
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "4c7b1209-2804-4691-ab8e-33eb8bc88035"
  #client_id = "4105a64a-2443-484e-877f-cd565759fee7"
  #client_secret = "Pl78Q~F6.LgE~nMhO-rjSOVU6LCEmooubXeDTcNo"
  #tenant_id = "a63a50d0-7fd7-4cf2-a949-9f7e3703cc36" 
  
}
#