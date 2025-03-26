resource "aws_instance" "catalogue" {
  ami="ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06664a65d9522acf5"]
  tags = {
    Name = "Catalogue"
  }

  provisioner "" {
    
  }
}

resource "aws_route53_record" "catalogue_record" {
  ttl = 0
  name = "catalogue-dev"
  zone_id = "Z10310253KPZLFJOC7YEK"
  type = "A"
  records = [aws_instance.catalogue.private_ip]
}

