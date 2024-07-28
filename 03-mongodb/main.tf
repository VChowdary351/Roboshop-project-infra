module "mongodb_sg" {
    source = "../../Terraform-security-group"
    project_name = var.project_name
    sg_name = "MongoDB"
    sg_description = var.sg_description
    #ingress_rules = var.ingress_rules
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}