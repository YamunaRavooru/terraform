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
  type = map(any)
  default = {
    Name        = "expense-backend-dev"
    project     = "expense"
    component   = "backend"
    environment = "dev"
  }

}
variable "environment" {
  type    = string
  default = "dev"

}
variable "common_tags" {
  type = map(any)
  default = {
    environment = "dev"
    project     = "expense"
  }
}
variable "instances" {
  type    = list(any)
  default = ["mysql", "backend", "frontend"]
}
variable "zone_id" {
  type    = string
  default = "Z10470331A87DVPOT82Q9"
}
variable "domain_name" {
  type    = string
  default = "daws82s.cloud"

}
/* 
1. command line --> -var "<var-name>=<var-value>"
2. tfvars
3. env var
4. default values
5. user prompt */




