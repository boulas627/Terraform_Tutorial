terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  # ami           = "ami-830c94e3"
  ami = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

#   provisioner "file" {
#     source = "/script.sh"
#     destination = "/script.sh"
#   }

  connection {
    type     = "ssh"
    user     = "developer_1"
    # password = var.root_password
    password = ""
    host     = aws_instance.app_server.public_ip
    timeout = "1m"
    # host = var.instance_public_ip
  }

  provisioner "local-exec" {
    command = "echo 'Virtual machine created'"
    
  }
  
#   provisioner "remote-exec" {
#     inline = [ 
#         "sudo apt-get update",
#      ]
    

  tags = {
    # Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}

# uses this link: https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec