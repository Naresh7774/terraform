resource "aws_security_group" "roboshop_instance" {
  name   = "roboshop-strict-sg"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }
  
  # block
  dynamic "ingress" {
