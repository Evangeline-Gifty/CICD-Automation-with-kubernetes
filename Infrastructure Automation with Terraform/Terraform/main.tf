resource "aws_instance" "terraform1" {
    ami = "egami1234567890"
    instance_type = var.instance_type

    tags = {
        name = "terraform_infra1"
    }
}