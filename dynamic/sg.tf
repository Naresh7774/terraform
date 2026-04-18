resource "aws_security_group" "roboshop_instance" {
  name   = "roboshop-strict-sg"

  egress {
