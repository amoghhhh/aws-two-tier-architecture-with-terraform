# Public Subnet in AZ 1
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name
  }
}

# Private Subnet in AZ 1
resource "aws_subnet" "private_subnet_az1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnet_cidr_az1
  availability_zone = "ap-south-1a"

  tags = {
    Name = "${var.private_subnet_name}-az1"
  }
}

# Private Subnet in AZ 2
resource "aws_subnet" "private_subnet_az2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.4.0/24"   # You need to specify a different CIDR block for the second subnet
  availability_zone = "ap-south-1b"

  tags = {
    Name = "${var.private_subnet_name}-az2"
  }
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = var.db_subnet_group_name
  subnet_ids = [aws_subnet.private_subnet_az1.id, aws_subnet.private_subnet_az2.id]  # Add both subnets

  tags = {
    Name = var.db_subnet_group_name
  }
}