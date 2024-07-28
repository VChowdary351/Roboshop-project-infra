output "vpc_id" {
    value = local.vpc_id
  
}
output "public_subnet_ids" {
    value = local.public_subnet_ids
  
}

output "private_subnet_ids" {
    value = local.private_subnet_ids
}
output "database_subnet_ids" {
    value = local.database_subnet_ids
  
}
output "security_groups_id" {
    value =module.allow-all-sg.vpc_security_group_id
  
}
# output "ips" {
#     value = local.ips
  
# }




