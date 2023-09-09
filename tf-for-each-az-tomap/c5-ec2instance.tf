data "aws_availability_zones" "my-AZs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  #instance_type = var.instance_type_list[1] # For List
  #instance_type = var.instance_type_map["qa"] # For Map
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  for_each = toset(data.aws_availability_zones.my-AZs.names)
  availability_zone = each.key
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id , aws_security_group.vpc-web.id ]
  tags = {
    "Name" = "Fo-Each-Demo-${each.key}"
  }
}