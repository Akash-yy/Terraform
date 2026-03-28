output "vpc_id" {
  value = aws_vpc.this.id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "tgw_subnets" {
  value = aws_subnet.tgw[*].id
}
