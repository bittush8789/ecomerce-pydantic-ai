# 👕 ClothStore AI: Enterprise Transformation

[![DevOps](https://img.shields.io/badge/Ops-Enterprise-blue?style=for-the-badge)](https://github.com/bittush8789)
[![DevSecOps](https://img.shields.io/badge/Security-DevSecOps-green?style=for-the-badge)](https://github.com/bittush8789)
[![LLMOps](https://img.shields.io/badge/AI-LLMOps-orange?style=for-the-badge)](https://github.com/bittush8789)

## 🏢 Enterprise Architecture
- **Infrastructure**: AWS EKS, VPC, ECR managed via Terraform.
- **CI/CD**: Dual-pipeline strategy (GitHub Actions for PRs, Jenkins for Staging).
- **GitOps**: ArgoCD for automated K8s synchronization.
- **Monitoring**: Prometheus, Grafana, and ELK Stack.
- **LLMOps**: LangSmith for prompt tracing and observability.

## 🌿 Branching Strategy
- `main`: Production-ready.
- `develop`: Integration branch.
- `feature/*`: New feature development.

## 📁 Folder Structure
```text
devops/
├── docker/          # Hardened production Dockerfiles
├── kubernetes/      # K8s manifests (Deployment, HPA)
├── helm/            # Reusable Helm charts
├── terraform/       # AWS Infrastructure as Code
├── jenkins/         # Enterprise Jenkins Pipeline
└── monitoring/      # Prometheus & Grafana configs
```

## 🚀 Deployment Guide
### Local Deployment (Kind)
```bash
kind create cluster
docker build -t ecom-ai -f devops/docker/Dockerfile.production .
kind load docker-image ecom-ai
kubectl apply -f devops/kubernetes/
```

### AWS EKS Deployment
```bash
cd devops/terraform
terraform init && terraform apply
aws eks update-kubeconfig --name ecom-eks
helm install ecom-ai devops/helm/ecommerce-ai
```

**Developed by Bittu Sharma**
