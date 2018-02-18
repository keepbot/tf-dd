// Module specific variables
variable "security_group_name" {
  description = "The name for the security group"
}

variable "source_cidr_block" {
  description = "The source CIDR block to allow traffic from"
  type        = "list"
}
