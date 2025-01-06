resource "aws_security_group" "javaapp_sg" {
  name  = "javaapp-security-group"
  description = "Allow the inbound and outbound rule for security group"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"] 
    }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

     ingress {
        from_port   = 9090
        to_port     = 9090
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = var.tag_sg_name
    }
}

resource "aws_instance" "santhu_instance" {
    ami             = var.ami_id
    instance_type   = var.instance_type
    key_name        = var.key_name
    security_groups = [aws_security_group.javaapp_sg.name]

    tags = {
        Name = var.tag_instance_name
  }
}