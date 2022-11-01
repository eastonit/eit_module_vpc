variable "vpc_cidr_block" {
  description = "VPC cidr block range"
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames within AWS account"
}

variable "enable_dns_support" {
  description = "Enable DNS support within AWS account"
}

variable "var.public_1_subnet_cidr_block" {
  description = "Public Subnet 1 cidr block"
}

variable "var.public_2_subnet_cidr_block" {
  description = "Public Subnet 2 cidr block"
}

variable "var.public_3_subnet_cidr_block" {
  description = "Public Subnet 3 cidr block"
}

variable "var.private_1_subnet_cidr_block" {
  description = "Private Subnet 1 cidr block"
}

variable "var.private_2_subnet_cidr_block" {
  description = "Private Subnet 2 cidr block"
}

variable "var.private_3_subnet_cidr_block" {
  description = "Private Subnet 3 cidr block"
}
