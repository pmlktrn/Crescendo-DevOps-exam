output "private_instance_id" {
  value = aws_instance.web.id
}

output "private_subnet_id" {
  value = aws_subnet.private[0].id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}
