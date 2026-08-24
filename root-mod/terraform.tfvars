vnet_name = "vnet02"
vnet_address_space = ["10.0.0.0/16"]
vm_name_prefix = "vm02"
vm_size = "Standard_DS1_v2"
vm_image_publisher = "Canonical"
vm_image_offer = "UbuntuServer"
vm_image_sku = "18.04-LTS"
admin_username = "azureuser"
admin_password = "Password123!"
tags = {
  environment = "dev"
  project     = "terraform"
}