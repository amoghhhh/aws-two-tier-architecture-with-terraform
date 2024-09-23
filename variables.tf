variable "vpc_name" {
  description = "Name of the VPC"
  default     = "two-tier-vpc"
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
  default     = "public-subnet"
}

variable "private_subnet_name" {
  description = "Name of the private subnet"
  default     = "private-subnet"
}

variable "internet_gateway_name" {
  description = "Name of the internet gateway"
  default     = "internet-gateway"
}

variable "route_table_name" {
  description = "Name of the route table"
  default     = "public-route-table"
}

variable "web_sg_name" {
  description = "Name of the web security group"
  default     = "web-sg"
}

variable "db_sg_name" {
  description = "Name of the database security group"
  default     = "db-sg"
}

variable "instance_name" {
  description = "Name of the EC2 web instance"
  default     = "web-server"
}

variable "db_subnet_group_name" {
  description = "Name of the RDS subnet group"
  default     = "db-subnet-group"
}

variable "db_instance_name" {
  description = "Name of the RDS instance"
  default     = "mydatabase"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

# variable "private_subnet_cidr" {
#   description = "CIDR block for the private subnet"
#   default     = "10.0.3.0/24"
# }

variable "private_subnet_cidr_az1" {
  description = "CIDR block for the private subnet in AZ 1"
  default     = "10.0.2.0/24"
}