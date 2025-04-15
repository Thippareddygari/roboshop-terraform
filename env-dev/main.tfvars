env="dev"
instances ={

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