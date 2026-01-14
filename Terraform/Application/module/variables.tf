variable "instance_type" {
  description = "type of ec2 instance"
  type = string
  default = "t2.micro"
}
variable "ami" {
  description = "ami id for ec2 instance"
  type = string
  default = ""
}
variable "security_group" {
  description = "Security group"
  type = string
  default = ""
}
variable "subnet_id" {
  type = string
  description = "value"
}
variable "vpc" {
  type = string
  description = "value"
}