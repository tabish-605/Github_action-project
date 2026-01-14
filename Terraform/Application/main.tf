module "ec2" {
    source         = "./module"
    instance_type  = var.instance_type
    ami            = var.ami
    vpc_security_group_ids = var.security_group
    subnet_id      = var.subnet_id
    
}