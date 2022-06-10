resource "random_string" "suffix" {
  length      = 8
  special     = false
  upper       = false
}

locals {
  resource_group_name = random_string.suffix.result
}

resource "azurerm_resource_group" "current" {
  name     = local.resource_group_name
  location = "centralus"
}
