resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.vpc_instance_tenancy
  # Merge module-specific common tags with any additional tags passed from the calling config
  tags = merge(
    local.module_common_tags,
    var.additional_tags, # Tags passed from the root module
    {
      Name = "${var.project_name}-${var.environment}-vpc" # Specific name tag for the VPC
    }
  )
}