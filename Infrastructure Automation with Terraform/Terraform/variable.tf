variable "region" {
    description = "AWS region"
    type = String
}

variable "instance_type" {
    type =  String
    default = "t2.micro"
}