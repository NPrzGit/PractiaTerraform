resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "VPC_VIRGINIA"
        name = "prueba"
        env = "DEV"
    }
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "VPC_VIRGINIA"
        name = "prueba"
        env = "DEV"
    }
    provider = "aws.ohio"
}