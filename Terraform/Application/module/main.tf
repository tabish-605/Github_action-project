resource "aws_instance" "example" {
    instance_type = var.instance_type
    ami           = var.ami
    subnet_id     = var.subnet_id
    security_groups = [var.security_group]
    
    tags = {
      Name = "TerraformExampleInstance"
    }

}