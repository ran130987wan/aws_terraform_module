# outputs.tf

output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}

output "vpc_cidr_block_assigned" {
  description = "The CIDR block assigned to the VPC."
  value       = aws_vpc.main.cidr_block
}
