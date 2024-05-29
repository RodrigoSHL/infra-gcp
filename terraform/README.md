# Proyecto GKE con Terraform y .NET Framework 4.8

## Requisitos

- Terraform >= 0.12
- Google Cloud SDK
- Cuenta en Google Cloud Platform con permisos para crear recursos

## Configuración

1. Clonar el repositorio.
2. Configurar las variables en `terraform/terraform.tfvars`.
3. Ejecutar `terraform init` y `terraform apply` en la carpeta `terraform`.
4. Aplicar los archivos de Kubernetes en la carpeta `kubernetes`.

## Despliegue

Para desplegar la infraestructura:

```sh
cd terraform
terraform init
terraform apply
