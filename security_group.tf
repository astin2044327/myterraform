resource "aws_security_group" "https_http_8080" {
  name        = "allow_3_port"
  description = "Allow inbound traffic for http, https and jenkins"
  vpc_id = aws_vpc.terraform_vpc.id
  
  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks= ["0.0.0.0/0"]
    
  }
   ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks= ["0.0.0.0/0"]
   }
   ingress {
description      = "jenkins"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks= ["0.0.0.0/0"]
   }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
   cidr_blocks= ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allow_web port open"
  }
  
}

  

/*
output "Sg_id" {
value= aws_security_group.https_http_8080.id
}
*/
