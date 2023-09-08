output "for_list" {
  description = "For Loop with List"
  value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

output "for_map" {
  description = "For Loop with Map"
  value = { for instance in aws_instance.myec2vm: instance.id => instance.public_dns }
}

output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = { for c, instance in aws_instance.myec2vm: c => instance.public_dns }
}

/*
output "legacy_splat_operator" {
  description = "Legacy Splat Operator"
  value = aws_instance.myec2vm.*.public_dns
}
*/

output "latest_splat" {
  description = "Latest Splat Operator"
  value = aws_instance.myec2vm[*].public_dns
}