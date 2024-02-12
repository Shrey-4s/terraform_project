resource "aws_instance" "my_instance" {
  ami           = var.AMIS
  instance_type = "t2.micro"
  key_name      = var.MY_KEY
  user_data     = file("script.sh")

}

output "instance_ip" {
  value = aws_instance.my_instance.public_ip
}
