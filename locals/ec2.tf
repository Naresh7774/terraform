resource "aws_instance" "terraform" {
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = local.ec2_tags
}

