module "allow-all-sg" {
    source = "../../Terraform-security-group"
    project_name = var.project_name
    sg_name = var.sg_name
    sg_description = var.sg_description
    ingress_rules = var.ingress_rules
    vpc_id = local.vpc_id
    common_tags = var.common_tags
}

