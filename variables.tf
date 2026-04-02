/*Include input variables for the Resource Group Name, Location, Storage Account Name, and Environment.
Include a local variable for resource tags, set the Environment tag to the environment variable Environment.*/

variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "environment" {
  type = string
}

