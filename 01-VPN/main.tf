module "vpn_sg" {
    source = "../../Terraform-security-group"
    project_name = var.project_name
    sg_name = var.sg_name
    sg_description = var.sg_description
    #ingress_rules = var.ingress_rules
    vpc_id = data.aws_vpc.default.id
    common_tags = var.common_tags
  
}

resource "aws_security_group_rule" "vpn" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = ["${chomp(data.http.myip.response_body)}/32"]
  #ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
  security_group_id = module.vpn_sg.vpc_security_group_id
}

module "VPN_instance"{
    source = "terraform-aws-modules/ec2-instance/aws"
    ami = data.aws_ami.devops_ami.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [module.vpn_sg.vpc_security_group_id]
    #subnet_id = data.aws_vpc.default.subnet_id
    tags = merge(
        var.common_tags,
        {
            Name = "VPN_instance"
        }
    )

}