# module "ec2" {
#  for_each = var.instances
#   source = "./modules/ec2"
#   ami_id = each.value["ami_id"]
#   env = var.env
#   instance_type = each.value["instance_type"]
#   name = each.key
#   vpc_security_group_ids = var.vpc_security_group_ids
#   zone_id = var.zone_id
# }

module "eks" {
  for_each = var.eks
  source = "./modules/eks"
  env = var.env
  eks_version = each.value["eks_version"]
  subnets = each.value["subnets"]
  node_groups=each.value["node_groups"]
}