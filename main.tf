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
  region = "${var.aws_region_name}"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "${var.aws_instance_type}"

  tags = {
    Name = "${var.aws_vm_name}"
  }
}
