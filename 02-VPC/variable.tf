variable "project_name" {
    default = "Roboshop"
  
}
variable "cidr_block" {
    default = "10.0.0.0/16"
  
}
variable "common_tags" {
    default = {
        project = "roboshop"
        Environment = "DEV"
        component = "Roboshop-VPC"
        Terraform = "true"
    }
  
}
variable "public_subnet_cidr" {
    default = ["10.0.1.0/24","10.0.2.0/24"]
  
}

variable "private_subnet_cidr" {
    default = ["10.0.11.0/24","10.0.12.0/24"]
  
}

variable "database_subnet_cidr" {
    default = ["10.0.21.0/24","10.0.22.0/24"]
  
}

variable "sg_name" {
    default  = "allow-all"
  
}
variable "sg_description" {
    default = "allowing all traffic from internet"
  
}
variable "ingress_rules" {
    default = [
        {
    description = "allowing http"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}

variable "instances" {
    type = map
    default = {
        MongoDB ="t3.medium"
        MySQL = "t3.medium"
        Web = "t2.micro"
        cart = "t2.micro"
        User = "t2.micro"
        catalogue = "t2.micro"
        payment = "t2.micro"
        shipping = "t2.micro"
        redis = "t2.micro"
        RabbitMQ = "t2.micro"  
    }
  
}

variable "zone_name" {
    default = "featureit.online"
  
}

