variable "to_po" {
  type        = number
  default     = "22"
  description = "description"
}
variable "from_po" {
  type    = number
  default = "22"
}
variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]

}
variable "Sg_tags" {
  type = map(any)
  default = {
    Name = "expense-backend-dev"
  }
}
variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "this is rhel9 ami"
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "ec2_tags" {
  type = map
  default = {
    Name        = "expense-backend-dev"
    project     = "expense"
    component   = "backend"
    environment = "dev"
  }

}
variable environment {
  type        = string
  default     = "dev"
 
}


