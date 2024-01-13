# Create an EC2 instance within VPC
resource "aws_instance" "instance" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = data.aws_availability_zones.az.names[0]
  key_name          = var.key_pair
  security_groups   = [aws_security_group.sg.id]
  subnet_id         = aws_subnet.subnet_az1.id

  user_data = <<-EOF
                #!/bin/bash
                sudo apt update
                sudo apt install ansible -y
                sudo apt install docker.io -y
                sudo systemctl start docker
                sudo systemctl enable docker
                EOF

  tags = {
    Name = "${var.project_name}-instance"
  }
}
