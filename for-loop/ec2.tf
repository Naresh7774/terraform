resource "aws_instance" "terraform" {
    #for_each = var.instances
    for_each = toset(var.instances)
    ami = "ami-09c813fb71547fc4f"
    #instance_type = each.value
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        #Name = each.key
        Name = each.value
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

