module "ec2" {
    source         = "./module"
    instance_type  = var.instance_type
    ami            = var.ami
    security_group = var.security_group
    subnet_id      = var.subnet_id
    
}