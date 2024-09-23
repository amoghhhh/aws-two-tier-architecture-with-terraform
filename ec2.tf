resource "aws_instance" "web" {
  ami             = "ami-06694402df044279f"  # Amazon Linux 2 AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]  # Use security group IDs instead of names

  tags = {
    Name = var.instance_name
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to the Web Server</h1>" > /var/www/html/index.html
              EOF
}