env="dev"
instances ={
    
}
eks =  {
   main = {
    subnets= ["subnet-0c19f3c7a2ba2788e","subnet-0ac7bbd1695882a29"]
    version= 1.32
    node_groups= {
        main ={
            min_node= 1
            max_node= 1
            instance_types=["t3.small","t2.small"]
        }
    }
}
}