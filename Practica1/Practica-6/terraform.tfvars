virginia_cidr = "10.0.0.0/16"
#public_subnet = "10.0.0.0/24"
#private_subnet = "10.0.1.0/24"
subnets = ["10.0.0.0/24", "10.0.1.0/24"]
tags = {
  "env"         = "dev"
  "owner"       = "Nazareno"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.6.5"
}

sg_ingress_cidr = "0.0.0.0/0"