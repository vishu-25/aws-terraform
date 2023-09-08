output "instance_public_ip" {
  description = "Public IPv4 address"
  value = aws_instance.myec2vm.public_ip
}