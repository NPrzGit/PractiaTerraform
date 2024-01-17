resource "aws_instance" "public_instance" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]

  lifecycle {
    //primero crea el nuevo recurso luego destruye el actual
    //create_before_destroy = true
    //no destruye el recurso utilizado normalmente en recursos criticos
    //prevent_destroy = true
    //ignora los cambios de los parametros
    //ignore_changes = [ ami, subnet_id ]
    //si algun parametro sufre algun cambio surge un replacemente del recurso
    replace_triggered_by = [
      //aws_subnet.public_subnet
      // o
      aws_subnet.public_subnet.id
    ]
  }
}