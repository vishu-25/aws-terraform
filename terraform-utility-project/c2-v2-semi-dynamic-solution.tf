data "aws_ec2_instance_type_offerings" "my-instance-type-2" {
  for_each = toset([ "us-east-1a" , "us-east-1b" , "us-east-1e" ])
  filter {
    name = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name = "location"
    values = [ each.key ]
  }
  location_type = "availability-zone"
}

output "output-v2-1" {
  value = toset([
    for t in data.aws_ec2_instance_type_offerings.my-instance-type-2 : t.instance_types
  ])
}

output "output-v2-2" {
  value = {
    for az, details in data.aws_ec2_instance_type_offerings.my-instance-type-2 : az => details.instance_types
  }
}