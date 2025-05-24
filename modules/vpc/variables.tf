# variables.tf
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "vpc_instance_tenancy" {
  description = "The instance tenancy for the VPC (default or dedicated)."
  type        = string
  default     = "default"
  validation {
    condition     = contains(["default", "dedicated"], var.vpc_instance_tenancy)
    error_message = "Instance tenancy must be either 'default' or 'dedicated'."
  }
}

variable "project_name" {
  description = "The value for the Name tag of the VPC."
  type        = string
}

variable "environment" {
  description = "The value for the Environment tag of the VPC."
  type        = string
}

variable "additional_tags" {
  description = "A map of additional tags to apply to all resources in the VPC module."
  type        = map(string)
  default     = {} # Provide a default empty map
}

