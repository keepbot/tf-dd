variable "name" {
  description = "Zone name"
}

variable "vpc_id" {
  description = "The VPC ID (omit to create a public zone)"
  default     = ""
}
