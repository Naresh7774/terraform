resource "aws_instance" "terraform" {
    #for_each = var.instances
    for_each = toset(var.instances)
    ami = "ami-09c813fb71547fc4f"
