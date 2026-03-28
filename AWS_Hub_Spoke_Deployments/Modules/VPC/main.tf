resource "aws_vpc" "this" {
  cidr_block = var.cidr
  enable_dns_hostnames = true

  tags = {
    Name = var.name
  }
}

# Private
resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.private_subnets[count.index]
  availability_zone = var.azs[0]

  tags = {
    Name = "${var.name}-private-${count.index}"
  }
}

# Public
resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.public_subnets[count.index]
  availability_zone = var.azs[0]

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-public-${count.index}"
  }
}

# TGW
resource "aws_subnet" "tgw" {
  count = length(var.tgw_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.tgw_subnets[count.index]
  availability_zone = var.azs[0]

  tags = {
    Name = "${var.name}-tgw-${count.index}"
  }
}
