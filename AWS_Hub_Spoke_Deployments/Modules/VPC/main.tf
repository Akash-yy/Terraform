resource "aws_vpc" "this" {
  cidr_block = var.cidr

  enable_dns_hostnames = true

  lifecycle {
    prevent_destroy = var.environment == "prod"
  }

  tags = {
    Name = var.name
  }
}

resource "aws_vpc" "this" {
  cidr_block = var.cidr
  enable_dns_hostnames = true

  tags = {
    Name = var.name
  }
}

# Private Subnets
resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.private_subnets[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "${var.name}-private-${count.index}"
  }
}

# TGW Subnets
resource "aws_subnet" "tgw" {
  count = length(var.tgw_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.tgw_subnets[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "${var.name}-tgw-${count.index}"
  }
}

# Route Table (private)
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "${var.name}-private-rt"
  }
}

# Association
resource "aws_route_table_association" "private" {
  count = length(aws_subnet.private)

  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}
