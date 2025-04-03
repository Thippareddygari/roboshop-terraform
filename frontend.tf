resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-06664a65d9522acf5"]
  tags = {
    Name = "frontend"
  }
}

# resource "aws_route53_record" "frontend_record" {
#   ttl = 0
#   name = "frontend-dev"
#   zone_id = "Z10310253KPZLFJOC7YEK"
#   records = [aws_instance.frontend.public_ip]
#   type = "A"
# }
