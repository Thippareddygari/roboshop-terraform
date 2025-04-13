resource "aws_instance" "instance" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name = "$(var.name)-$(var.env)"
  type = "A"
  ttl = 0
  records = [aws_instance.instance.private_ip]
}