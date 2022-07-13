module "caf" {
  source    = "aztfmod/caf/azurerm"
  version   = "5.6.0"
  providers = {
    azurerm.vhub = azurerm.vhub
  }

  global_settings = var.global_settings
  resource_groups = var.resource_groups

  networking = {
    vnets                             = var.virtual_networks
    network_security_group_definition = var.network_security_group_definition
    route_tables                      = var.route_tables
    routes                            = var.routes
    network_watcher                   = var.network_watcher
  }


}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias                      = "vhub"
  skip_provider_registration = true
  features {}
}
