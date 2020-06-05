output "vpc_id" {
  value = module.vpc.default_vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}
