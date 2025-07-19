variable "project_name" {
  description = "The ID of the project in which resources will be created."
  type        = string
  default     = "lingaiah"
}

variable "location" {
  description = "The region where resources will be deployed."
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "The environment for the resources (e.g., development, production)."
  type        = string
  default     = "dev"
}

variable "subscription_id" {
  description = "The Azure subscription ID where resources will be created."
  type        = string
  default     = "90de0c98-2d25-4094-a834-32b29fdf8003"
}