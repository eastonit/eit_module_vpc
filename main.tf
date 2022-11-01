resource "aws_vpc" "wp_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} VPC"
  }

}

resource "aws_subnet" "public_1_subnet" {
  vpc_id            = aws_vpc.wp_vpc.id
  cidr_block        = var.public_1_subnet_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Public 1 Subnet"

  }
}

resource "aws_subnet" "public_2_subnet" {
  vpc_id            = aws_vpc.wp_vpc.id
  cidr_block        = var.public_2_subnet_cidr_block
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Public 2 Subnet"
  }
}

resource "aws_subnet" "public_3_subnet" {
  vpc_id            = aws_vpc.wp_vpc.id
  cidr_block        = var.public_3_subnet_cidr_block
  availability_zone = data.aws_availability_zones.available.names[2]

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Public 3 Subnet"
  }
}

resource "aws_subnet" "private_1_subnet" {
  vpc_id            = aws_vpc.wp_vpc.id
  cidr_block        = var.private_1_subnet_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Private 1 Subnet"
  }
}

resource "aws_subnet" "private_2_subnet" {
  vpc_id            = aws_vpc.wp_vpc.id
  cidr_block        = var.private_2_subnet_cidr_block
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Private 2 Subnet"
  }
}

resource "aws_subnet" "private_3_subnet" {
  vpc_id            = aws_vpc.wp_vpc.id
  cidr_block        = var.private_3_subnet_cidr_block
  availability_zone = data.aws_availability_zones.available.names[2]

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Private 3 Subnet"
  }
}

resource "aws_route_table" "wp_vpc_route_table" {
  vpc_id = aws_vpc.wp_vpc.id

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Route Table"
  }
}

resource "aws_internet_gateway" "wp_internet_gateway" {
  vpc_id = aws_vpc.wp_vpc.id

  tags = {
    Project = var.project_name
    Name    = "${var.project_name} Internet Gateway"
  }

}
