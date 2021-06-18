resource "aws_instance" "MyFirstInstnace" {
  count         = 3
  ami           = var.AMIS
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}

resource "aws_key_pair" "webkey" {
 key_name = "techie_key"
 public_key = file("script/techie_key.pub")

}
