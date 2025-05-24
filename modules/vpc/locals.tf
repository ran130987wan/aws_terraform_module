locals {
  # Define common tags for resources within this module
  # These tags will be merged with any tags passed from the calling module
  module_common_tags = {
    ManagedBy   = "Terraform"
    Environment = var.environment # Using a variable for flexibility
    Project     = var.project_name
  }
}