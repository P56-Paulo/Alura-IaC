module "aws-dev" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao = "us-east-1"
  chave = "IaC-DEV"
}