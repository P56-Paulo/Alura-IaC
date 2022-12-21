terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48"
    }
  }

  required_version = "1.3.6"
}

provider "aws" {
  region  = var.regiao
}

resource "aws_instance" "app_server" {
  ami           = "ami-050406429a71aaa64"
  instance_type = var.instancia
  key_name      = var.chave
  
  tags = {
    Name = "Terraform Ansible Python"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name   = var.chave
  public_key = file("${var.chave}.pub")
}