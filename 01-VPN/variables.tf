variable "project_name" {
    default = "Roboshop-vpn"
  
}

variable "sg_name" {
    default = "allow-all-vpn"
  
}

variable "sg_description" {
    default = "allowing all ports from my home Ip address"
}

variable "common_tags" {
    default = {
        project = "roboshop"
        Environment = "DEV"
        component = "VPN"
        Terraform = "true"
    }
  
}

