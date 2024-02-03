---
title: "Helm with an OCI repository"
date: 2023-06-07T10:00:00+02:00
draft: false
tags:
  - kubernetes
  - helm
---
# Helm with an OCI repository
Deploying a Helm chart from a OCI repository like Harbor. In this example we will deploy a cert-manager chart using a Harbor repository.

### Add Helm Repo 
```shell
helm repo add jetstack https://charts.jetstack.io
```

### Fetch Helm Chart 
```shell
helm fetch jetstack/cert-manager --version v1.12.1
```

### Login to local Harbor Repo
```shell
helm registry login harbor.example.com
```
   
### Upload Helm Chart
```shell
helm push cert-manager-v1.12.1.tgz oci://harbor.example.com/helm_repo
```

### Deploy Helm Chart
```shell
helm install cert-manager oci://harbor.example.com/helm-repo/cert-manager \
    --version v1.12.1 \
    --create-namespace \
    --namespace cert-manager \
    --set installCRDs=true
```
