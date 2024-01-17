resource "aws_vpc" "main" {
    cidr_block = var.virginia_cidr
    tags = {
        Name = "VPC_VIRGINIA"
        name = "prueba"
        env = "DEV"
    }
}

resource "aws_vpc" "main" {
    cidr_block = var.ohio_cidr
    tags = {
        Name = "VPC_VIRGINIA"
        name = "prueba"
        env = "DEV"
    }
    provider = "aws.ohio"
}