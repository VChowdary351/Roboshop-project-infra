variable "project_name" {
    default = "Roboshop-vpc"
  
}

variable "sg_name" {
    default = "Mongodb"
  
}

variable "sg_description" {
    default = "allowing traffic"
}

variable "common_tags" {
    default = {
        project = "roboshop"
        Environment = "DEV"
        component = "MONGODB"
        Terraform = "true"
    }
  
}