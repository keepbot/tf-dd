#--------------------------------------------------------------
# Main
#--------------------------------------------------------------

ami_ubuntu_1                = "ami-5055cd3f"  // Ubuntu Server 16.04 LTS (HVM), SSD Volume Type
domain_name                 = "doubledots.ru"
environment                 = "production"
key_name                    = "doubledots-ssh-key"
main_security_group_name    = "doubledots-main"
project                     = "doubledots"
region                      = "eu-central-1"
source_cidr_block_main      = "0.0.0.0/0"
telegram_instance_type      = "m4.xlarge"
telegram_instance_num       = 1
telegram_instance_user_data = "telegram-instagram-bot.sh"
