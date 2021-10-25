# Authen
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=ap-southeast-1

# Create Cluster with node group
eksctl create cluster -f cluster-config.yml

# Create Cluster Only
eksctl create cluster -f cluster-config.yml --without-nodegroup

# Create Node Group
eksctl create nodegroup --config-file=cluster-config.yml

# Delete Node Group
eksctl delete nodegroup --cluster=basic-cluster --name=managed-ng-common-private

# Addon
eksctl update addon --config-file=cluster-config.yml

# Create IAM Service Account
eksctl create iamserviceaccount --config-file=cluster-config.yml