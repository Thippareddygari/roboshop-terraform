resource "aws_instance" "mango_db" {
  ami= "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06664a65d9522acf5"]

  tags = {
    Name= "Mango_db"
  }
}

resource "aws_route53_record" "mangodb_record" {
  type = "A"
  zone_id = "Z10310253KPZLFJOC7YEK"
  name = "mangodb-dev"
  ttl = 0
  records = [aws_instance.mango_db.private_ip]
}