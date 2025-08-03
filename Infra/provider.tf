terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
  backend "azurerm" {
    use_cli              = true                                    # Can also be set via `ARM_USE_CLI` environment variable.
    tenant_id            = "d76015c1-91ed-4502-986c-b2fd34d63343"  # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    subscription_id      = "bcf304d8-21b8-4358-9c77-54b5dd26f938"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable. Azure CLI will fallback to use the connected subscription ID if not supplied.
    resource_group_name  = "myChildResourceGroup"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "mystorageaccount129"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "backend.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
}
    