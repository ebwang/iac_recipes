# Procedimento terraform
# 1-Executar o global para criar o state em s3 com dynamodb
# Essa receita ira criar S3 e o Dynamo para state e lock


cd global/
terraform init
terraform apply 

# 2-Apos criacao do s3 dynamodb rodar a base do terraform
# Essa receita ira criar as seguintes estruturas VPC,VPN,NAT,IGW,ROUTE,EIP,SUBNET

cd base/
terraform init
terraform apply

# 3- Apos criacao do base preparar a estrutura da eks
# Essa receita ira criar o EKS, OIDC, GRUPOS ADMINS

cd eks/
terraform init
terraform apply

# 4- Apos criacao do eks partir para o nodegroup 
# Essa receita ira criar o nodegroup juntamente com auto-scale

cd nodegroup/
terraform init
terraform apply

# 5- Rodar os helms para as aplicacoes base do eks
# Essa receita ira criar, autoscaler, spot terminator, dashboard, metrics, sealed

cd helm/
terraform init
terraform apply