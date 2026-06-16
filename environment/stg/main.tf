resource "aws_key_pair" "default" {
  key_name   = var.key_name
  public_key = file("C:/Users/ahad1/.ssh/id_ed25519.pub") # Change if needed  
}
module "stg_ec2" {
  source         = "../../module/ec2"
  environment    = var.environment
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  ec2_username   = var.ec2_username
  ec2_sg         = var.ec2_sg
  ssh_port       = var.ssh_port
  instance_count = var.instance_count
  tags           = var.tags
  volume_size    = var.volume_size
  volume_type    = var.volume_type

}