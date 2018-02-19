module "ec2_instance" {
  aws_access_key      = "${var.aws_access_key}"
  aws_secret_key      = "${var.aws_secret_key}"
  aws_region          = "${var.region}"
  ami_id              = "${var.ami_ubuntu_1}"
  number_of_instances = "${var.telegram_instance_num}"
  dns_zone_id         = "${module.dns_zone.zone_id}"
  domain_name         = "${var.domain_name}"
  instance_name       = "dd-ti-bot"
  instance_type       = "${var.telegram_instance_type}"
  key_name            = "${var.key_name}"
//  user_data           = "${file(var.telegram_instance_user_data)}"
  sg_id               = [ "${module.sg_main.security_group_id_main}" ]
  source              = "../modules/ec2_instance"
  tag_Environment     = "${var.environment}"
  tag_Project         = "${var.project}"
  volume_size         = 100
}

output "EC2 instance configuration: " {
  value = "${module.ec2_instance.ec2_instance_config}"
}
