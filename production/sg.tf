variable "security_group_name"    { }
variable "source_cidr_block_main" { }

module "sg_main" {
  source = "../modules/sg_main"
  security_group_name = "${var.security_group_name}"
  source_cidr_block = ["${var.source_cidr_block_main}"]
}