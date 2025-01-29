resource "aws_instance" "expense" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.instance_type
  tags                   = var.ec2_tags

}
resource "aws_security_group" "allow_tls" {
  name        = "allow"
  description = "allow all tls inbount traffiv and outboud traffic"
  ingress {
    from_port   = var.to_po
    to_port     = var.from_po
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks

  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks

  }
  tags = var.Sg_tags
} 