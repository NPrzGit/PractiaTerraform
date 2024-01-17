resource "aws_s3_bucket" "proveedores" {
    bucket = "proveedores-${random_string.sufijo.id}"
    tags = {
        Owner = "nperez"
        Environment = "Dev"
        Ofiice = "Proveedores"
    }
}

resource "random_string" "sufijo" {
    count   = 6 // con esto se le dice que lo repita5 veces.
    length  = 4
    special = false
    upper   = false
    numeric = false
}