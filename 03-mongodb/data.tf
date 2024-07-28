data "aws_ssm_parameter" "vpc_id" {
    name = "/roboshop/dev/vpc_id"  #${var.project_name}${var.env}/vpc_id
  
}