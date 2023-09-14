/*
data "aws_ec2_instance_type_offerings" "my-instance-type-1" {
  filter {
    name = "instance-type"
    values = [ "t3.micro" ]
  }
  filter {
    name = "location"
    values = [ "us-east-1a" ]
    #values = [ "us-east-1e" ]
  }
  location_type = "availability-zone"
}

output "v1-output-1" {
  value = data.aws_ec2_instance_type_offerings.my-instance-type-1.instance_types
}
*/