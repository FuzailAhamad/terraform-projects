resource "aws_instance" "web" {
  ami                         = data.aws_ami.amiID.id
  instance_type               = "t2.small"
  key_name                    = "dove-key"
  vpc_security_group_ids      = [aws_security_group.dove-sg.id]
  availability_zone           = "ap-south-1a"

  tags = {
    Name    = "Dove-web"
    project = "Dove"
  }
}
