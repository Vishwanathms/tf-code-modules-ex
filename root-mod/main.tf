provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg02"
  location = "East US"
}


module "vnet" {
  source              = "../modules/vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  vnet_name           = var.vnet_name
  vnet_address_space = var.vnet_address_space

    tags = var.tags
}

module "vm" {
  source = "../modules/vm"

  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  vm_name_prefix        = var.vm_name_prefix
  vm_size               = var.vm_size
  vm_image_publisher    = var.vm_image_publisher
  vm_image_offer        = var.vm_image_offer
  vm_image_sku          = var.vm_image_sku
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  subnet_id             = module.vnet.subnet_id
    tags = var.tags
}