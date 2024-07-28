module "allow-all-sg" {
    source = "../../Terraform-security-group"
    project_name = "Roboshop-mongodb"
    sg_name = var.sg_name
    sg_description = var.sg_description
    #ingress_rules = var.ingress_rules
    vpc_id = data.aws_vpc.default.id
    common_tags = var.common_tags
}