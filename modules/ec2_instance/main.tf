resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    associate_public_ip_address = true
    count = "${var.number_of_instances}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
//    user_data = "${file(var.user_data)}"
    security_groups = ["${var.sg_id}"]

    root_block_device {
        volume_size               = "${var.volume_size}"
        delete_on_termination     = true
    }

    tags {
        Environment = "${var.tag_Environment}"
        Name = "${var.instance_name}-${count.index}"
        Project = "${var.tag_Project}"
    }
}

resource "aws_route53_record" "ec2_instance" {
    zone_id = "${var.dns_zone_id}"
    name    = "${var.instance_name}.${var.domain_name}"
    type    = "A"
    ttl     = "300"
    records = ["${aws_instance.ec2_instance.public_ip}"]
}
