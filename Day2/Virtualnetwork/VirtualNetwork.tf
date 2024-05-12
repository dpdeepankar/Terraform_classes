
# This block defines an Azure Resource Group resource named "rg".
resource "azurerm_resource_group" "rg" {
    name = "infrarg"              # Specifies the name of the resource group.
    location = "eastus2"          # Specifies the location where the resource group will be created.

    # Specifies tags to associate metadata with the resource group
    tags = {
      "Env" = "Prod"
    }
}


# This block defines an Azure Virtual Network resource named "vnet".
resource "azurerm_virtual_network" "vnet" {
  name = "vnet1"                                            # Specifies the name of the virtual network.
  resource_group_name = azurerm_resource_group.rg.name      # Specifies the name of the Azure resource group where the virtual network will be created.
  location = "eastus2"                                      # Specifies the location where the virtual network will be created.
  address_space = ["172.27.0.0/16"]                         # Specifies the address space for the virtual network.

  # Defines subnets within the virtual network.
  subnet {
    name = "subnet1"                                        # Specifies the name of the subnet.
    address_prefix = "172.27.1.0/24"                        # Specifies the address prefix for the subnet.
  }

  subnet {
    name = "subnet2"
    address_prefix = "172.27.2.0/24"
  }

  # Specifies tags to associate metadata with the virtual network.
  tags = {
    "Env" = "Prod"
  }
}
