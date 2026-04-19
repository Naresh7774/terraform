resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.lifecycle.id]
    tags = {
        Name = "lifecycle"
        Terraform = "true"
    }
    /* lifecycle{
      prevent_destroy = true
    } */
}
