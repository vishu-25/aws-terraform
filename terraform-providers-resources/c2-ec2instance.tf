resource "aws_instance" "myec2vm" {
  ami = "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2-demo"
  }
}