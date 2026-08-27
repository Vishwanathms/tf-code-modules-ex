
## Enter Vnet relation information here

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string  
  
}
variable "vnet_address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}
variable "vm_name_prefix" {
  description = "The prefix for the virtual machine names."
  type        = string
}

## Enter general information here

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}


variable "location" {
  description = "The location of the virtual network."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}

## Enter VM information here

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}
variable "vm_image_publisher" {
  description = "The publisher of the virtual machine image."
  type        = string
}
variable "vm_image_offer" {
  description = "The offer of the virtual machine image."
  type        = string
}
variable "vm_image_sku" {
  description = "The SKU of the virtual machine image."
  type        = string
}
variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}
variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
}