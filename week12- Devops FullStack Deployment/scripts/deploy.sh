#!/bin/bash

echo "Initializing Terraform..."
terraform init

echo "Applying Infrastructure..."
terraform apply -auto-approve

echo "Deploying to Kubernetes..."
helm upgrade --install frontend ../kubernetes/helm/frontend