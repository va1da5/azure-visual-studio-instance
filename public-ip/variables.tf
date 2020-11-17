variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "visual-studio"
}

variable "client_public_ip" {
  description = "Client public IP that is allowed to connect"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "West Europe"
}

variable "admin_username" {
  description = "Username for the Administrator account"
}

variable "admin_password" {
  description = "Password for the Administrator account"
}

variable "vm_size" {
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2"
  default     = "Standard_F4" //0.35€/hour
}
