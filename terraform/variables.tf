
variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westus2"
}

variable "resource_group_name" {
  description = "Name of the monitoring resource group"
  type        = string
  default     = "rg-azure-monitoring"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for the VM administrator"
  type        = string
}
