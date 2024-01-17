resource "random_string" "sufijo" {
    count   = 5 // con esto se le dice que lo repita5 veces.
    length  = 4
    special = false
    upper   = false
    numeric = false
}