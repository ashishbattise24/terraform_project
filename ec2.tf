resource "aws_instance" "MyFirstInstnace" {
  count         = 3
  ami           = var.AMIS
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}
