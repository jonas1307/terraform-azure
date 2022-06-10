resource "azurerm_service_plan" "current" {
  name                    = var.service_plan_name
  resource_group_name     = azurerm_resource_group.current.name
  location                = azurerm_resource_group.current.location
  os_type                 = var.service_plan_os_type
  sku_name                = var.service_plan_sku_name
}
