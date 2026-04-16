output "vpc_id" {
  value = aws_vpc.this.id
}

output "private_rt_id" {
  value = aws_route_table.private.id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "tgw_subnets" {
  value = aws_subnet.tgw[*].id
}
