# terraform-workshop
Explicamos como terraform funciona mediante la creación de una VPC, subnets, firewalls e instancias asociadas. Este workshop está hecho primeramente en AWS, pero irá creciendo en otros cloud providers como GCP, Azure.

## Paso 1 - Fundamentos
```
git clone https://github.com/gelopfalcon/terraform-workshop.git
git checkout aws-sesion1
cd aws
```

### Pasos
1- Asegurarse que Terraform está instalado
```
terraform -v
terraform -h
```

2- Exporte sus credenciales de AWS como variables de ambiente:
```
export AWS_ACCESS_KEY_ID="xxxxxxxxxx"
export AWS_SECRET_ACCESS_KEY="xxxxx"
```
Existen mas formas de autenticarse, si no las conoces, puedes seguir las siguientes guías: [Crear credenciales para el proveedor de AWS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey) ó [Configurar la CLI de AWS](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html). Más información sobre la autenticación con el proveedor de AWS Terraform: [Proveedor de AWS](https://www.terraform.io/docs/providers/aws/index.html)

3- Si queremos ver un vistazo de los recursos a crear por TF lo podemos hacer executando:
```
terraform plan
```
4- Por último, vamos a proceder a crear la infraestructura:
```
terraform apply
```
Nos mostrará que recursos se van a crear, además una confirmación que usted necesitará hacer digitando 'yes'. Ahora, si deseamos evitarnos esa confirmación, podemos usar el auto-approve:
```
terraform apply -auto-approve
```