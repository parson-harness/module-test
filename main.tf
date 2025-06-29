provider "azurerm" {
  features {}
}
module "azure-private-dns-zone" {
  source  = "app.harness.io/EeRjnXTnS4GrLG5VNNJZUw/azure-private-dns-zone/azurerm"
  version = "v1.0.6-alpha"

  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
