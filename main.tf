provider "aws" {
  profile = var.profile
  region  = "ap-southeast-1"
}

data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["premier-research-ap-southeast-1b"]
  }
}

resource "aws_instance" "tao_ec2" {
  count         = 1
  ami           = "ami-093da183b859d5a4b"
  subnet_id     = "subnet-4182a637"
  instance_type = var.instance_type
  key_name      = "tao-tf"
  user_data     = file("bootstrap.sh")
  tags = {
    Name = "tao-tf"
  }
}

