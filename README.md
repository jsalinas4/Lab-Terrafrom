# Laboratorio Terraform

Este crea un entorno con los siguientes servicios en contenedores Docker usando Terraform:

- 3 aplicaciones Nginx (`app1`, `app2`, `app3`)
- Redis
- PostgreSQL
- Grafana

## Lista de Requisitos

- Docker instalado
- Terraform instalado

## Pasos

```bash
git clone https://github.com/jsalinas4/Lab-Terrafrom.git
cd Lab-Terrafrom
terraform init
terraform workspace new dev
terraform plan -var-file="variables.tfvars"
yes
terraform apply -var-file="variables.tfvars"
yes

```
