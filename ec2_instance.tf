resource "aws_instance" "My_ec22" {
    ami= "ami-0d5eff06f840b45e9"
    instance_type = var.instance_type
    vpc_security_group_ids= [aws_security_group.https_http_8080.id]
    subnet_id = aws_subnet.public.id
    availability_zone = "us-east-1a"
    
    
        tags ={
        Name= "env_dev"
        }
    }

