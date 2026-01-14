resource "aws_instance" "example" {
    instance_type = var.instance_type
    ami           = var.ami
    subnet_id     = var.subnet_id
    vpc_security_group_ids = [var.security_group]
    
    tags = {
      Name = "Test123"
    }

}