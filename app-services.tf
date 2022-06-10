locals {
  app_service_https_only  = true

  app_service_site_config = {
    always_on             = false
    minimum_tls_version   = "1.2"
    use_32_bit_worker     = true

    application_stack     = {
      dotnet_version      = "6.0"
    }
  }
}

resource "azurerm_linux_web_app" "current" {
  name                    = var.app_service_name
  resource_group_name     = azurerm_resource_group.current.name
  location                = azurerm_service_plan.current.location
  service_plan_id         = azurerm_service_plan.current.id
  https_only              = local.app_service_https_only

  site_config {
    application_stack {
      dotnet_version = local.app_service_site_config.application_stack.dotnet_version
    }

    always_on             = local.app_service_site_config.always_on
    minimum_tls_version   = local.app_service_site_config.minimum_tls_version
    use_32_bit_worker     = local.app_service_site_config.use_32_bit_worker
  }
}
