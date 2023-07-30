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

  provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }

  provisioner "remote-exec" {
    inline = [ 
        "chmod +x /tmp/script.sh",
        "/tmp/script.sh",
     ]
    
  }

  tags = {
    # Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}

# uses this link: https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec