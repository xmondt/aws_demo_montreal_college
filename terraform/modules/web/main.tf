resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  # other configuration for web instances
}
