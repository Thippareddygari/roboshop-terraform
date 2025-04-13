variable "vpc_security_group_ids" {
  default = ["sg-06664a65d9522acf5"]
}

variable "instances" {
  default = {
    frontend= {
        ami_id = "ami-09c813fb71547fc4f"
        instance_type= "t3.small"
    }
    catalogue = {
        ami_id= "ami-09c813fb71547fc4f"
        instance_type= "t3.small"
    }

    mongodb = {
        ami_id= "ami-09c813fb71547fc4f"
        instance_type= "t3.small"
    }
  }
}

variable "zone_id" {
  default = "Z10310253KPZLFJOC7YEK"
}

variable "env" {
  default = "dev"
}