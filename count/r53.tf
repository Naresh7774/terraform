resource "aws_route53_record" "roboshop" {
  count = length(var.instances)
  zone_id = "${var.zone_id}"
