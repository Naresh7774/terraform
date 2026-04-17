resource "aws_instance" "terraform" {
    #count = 10
    count = length(var.instances)
