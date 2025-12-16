provider "aws" {
  region     = "ap-south-1"
}


resource "aws_instance" "websrv" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "t2.micro"
  root_block_device {
    volume_size           = 15
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = false
    tags = {
      Name = "RootVolume"
    }
  }
  tags = {
    Name = "hpcsa1"
  }
}
