variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
}

variable "instance_type" {}

variable "ami_id" {
  description = "The AMI to use"
}

variable "number_of_instances" {
  description = "number of instances to make"
  default = 1
}

//variable "user_data" {
//  description = "The path to a file with user_data for the instances"
//}

variable "tag_Environment" {
  default = "production"
}

variable "tag_Project" {
  description = "Name of project to which this node related"
}

variable "key_name" {
  description = "SSH key name for EC2 instances"
}

variable "domain_name" {
  description = "Zone name"
}

variable "dns_zone_id" {
  description = "DNS Zone ID"
}

variable "volume_size" {
  description = "Size of hard drive"
}

variable "sg_id" {
  description = "Security group ID"
}


variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
