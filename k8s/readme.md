# Deployment to EKS
Run file deploy.sh

# Image Pull Secret
Cause I create a Private Repo on ECR, so I'm gonna need a imagepullsecret in order to my deployment able to pull secret from ECR 
Just run regen-secret.sh to create a secret name `aws-ecr-credentials`

# Connection to RDS instance
Just add security group of EC2 instances to inbound rule of the RDS instance