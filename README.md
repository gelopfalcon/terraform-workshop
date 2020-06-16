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
Existen mas formas de autenticarse, si no las conoces, puedes seguir las siguientes guías: [Crear credenciales para el proveedor de AWS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey) o [https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html](Configurar la CLI de AWS). Más información sobre la autenticación con el proveedor de AWS Terraform: [https://www.terraform.io/docs/providers/aws/index.html](Proveedor de AWS)