resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu_noble.id
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnets.default.ids[0]
}
