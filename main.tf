provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "dns-test-rg"
  location = "East US"
}

module "azure-private-dns-zone" {
  source  = "app.harness.io/EeRjnXTnS4GrLG5VNNJZUw/azure-private-dns-zone/azurerm"
  version = "v1.0.1"

  name                = "privatelink.database.windows.net"
  resource_group_name = azurerm_resource_group.example.name
  tags = {
    environment = "test"
  }
}
