# This block defines an Azure Resource Group resource named "rg".
resource "azurerm_resource_group" "rg" {
    name = "infrarg"              # Specifies the name of the resource group.
    location = "eastus2"          # Specifies the location where the resource group will be created.

    # Specifies tags to associate metadata with the resource group
    tags = {
      "Env" = "Prod"
    }
}
