provider "aws" {
  region = var.region
}

//Por defecto AWS no permite tráfico de entrada o salida desde una máquina virtual (EC2).Para permitirlo, tenemos que crear un 
// security group, que habilite el tráfico, en nuestro caso habilitaremos el mismo por el puerto 8080
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

//creamos el EC2 instance

resource "aws_instance" "example" {
  ami           = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hola, cracks a terraformiando con Falcon coach" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = "terraform-example"
  }
}