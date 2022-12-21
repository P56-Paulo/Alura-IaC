resource "aws_security_group" "acesso-alura" {
    name = "acesso_geral"
    description = "grupo de Dev"
    ingress = {
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    engress = {
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    
    tags ={
        Name = "Acesso_geral"
    }
  
}