# Authen
```bash
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=ap-southeast-1
```

# Create Cluster with node group
```bash
eksctl create cluster -f cluster-config.yml
```

# Create Cluster Only
```bash
eksctl create cluster -f cluster-config.yml --without-nodegroup
```

# Create Node Group
```bash
eksctl create nodegroup --config-file=cluster-config.yml
```

# Delete Node Group
```bash
eksctl delete nodegroup --cluster=basic-cluster --name=ng-1
```

# Addon
```bash
eksctl update addon --config-file=cluster-config.yml
```

# Create IAM Service Account
```bash
eksctl create iamserviceaccount --config-file=cluster-config.yml
```