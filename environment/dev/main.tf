resource "aws_key_pair" "default" {
  key_name   = var.key_name
  public_key = file("C:/Users/ahad1/.ssh/id_ed25519.pub") # Change if needed  
}
module "dev_ec2" {
  source = "../../module/ec2"
  ami = var.ami
  

}