env="dev"
db_instances ={
  mongodb = {
    ami_id           = "ami-09c813fb71547fc4f"
    instance_type    = "t3.small"
    root_volume_size = 15
  }
  redis = {
    ami_id           = "ami-09c813fb71547fc4f"
    instance_type    = "t3.small"
    root_volume_size = 15
  }

  mysql = {
    ami_id           = "ami-09c813fb71547fc4f"
    instance_type    = "t3.small"
    root_volume_size = 15
  }
  rabbitmq = {
    ami_id           = "ami-09c813fb71547fc4f"
    instance_type    = "t3.small"
    root_volume_size = 15
  }
}

vpc_security_group_ids = ["sg-06664a65d9522acf5"]
zone_id="Z10310253KPZLFJOC7YEK"

eks =  {
   main = {
    subnets= ["subnet-0c19f3c7a2ba2788e","subnet-0ac7bbd1695882a29"]
    eks_version= 1.32
    node_groups= {
        main ={
            min_nodes= 1
            max_nodes= 1
            instance_types=["t3.small","t2.small"]
        }
    }
}
}