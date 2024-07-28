# default vpc id info
data "aws_vpc" "default" {
  default = true
} 

# get my Ip address
data "http" "myip" {
  url = "https://ipv4.icanhazip.com"
}

# ami_id get from aws
data "aws_ami" "devops_ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}