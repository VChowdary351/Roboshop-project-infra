# module "records" {
#     source = "terraform-aws-modules/route53/aws//modules/records"
#     for_each = local.ips
#     zone_name = var.zone_name
#     records = [
#         {
#         name = "${each.key}"
#         ttl =1
#         type = "A"
#         records = [
#             each.key == "Web" ? each.value.public_ip : each.value.private_ip
#         ]
#         }
#     ]
# }