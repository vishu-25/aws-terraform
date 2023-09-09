output "instance-public-ip" {
  description = "EC2 instance public IP"
  value = toset([
    for myec2vm in aws_instance.myec2vm : myec2vm.public_ip
  ])
}

output "instance-public-dns" {
  description = "EC2 instance public DNS"
  value = toset([
    for myec2vm in aws_instance.myec2vm : myec2vm.public_dns
  ])
}

/*
output "instance-public-dns-with-maps" {
  description = "EC2 instance public DNS using Maps"
  value = toset({
    for s, myec2vm in aws_instance.myec2vm : s => myec2vm.public_dns
   })
}
*/