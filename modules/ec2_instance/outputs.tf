output "ec2_instance_config" {
  value = <<CONFIGURATION

${aws_instance.ec2_instance.tags.Name} ID: ${aws_instance.ec2_instance.id}
${aws_instance.ec2_instance.tags.Name} IP: ${aws_instance.ec2_instance.public_ip}

CONFIGURATION
}
