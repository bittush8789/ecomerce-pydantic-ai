# 👕 ClothStore AI: Enterprise GenAI Platform

[![DevOps](https://img.shields.io/badge/Enterprise-DevOps-blue)](https://github.com/bittush8789)
[![DevSecOps](https://img.shields.io/badge/Security-DevSecOps-green)](https://github.com/bittush8789)
[![LLMOps](https://img.shields.io/badge/AI-LLMOps-orange)](https://github.com/bittush8789)

Welcome to the enterprise-grade transformation of ClothStore AI. This project demonstrates a production-ready ecosystem for Generative AI applications.

## 📁 Industry Standard Structure
- **`.github/workflows/`**: 5+ separate CI/CD pipelines for validation, release, and security.
- **`devops/kubernetes/`**: Modular base and environment-specific overlays.
- **`devops/terraform/`**: Infrastructure as Code for AWS (EKS, VPC, ECR).
- **`devops/llmops/`**: Tracing (LangSmith) and Cost/Token tracking.
- **`devops/security/`**: Shift-left security scanning tools.

## 🚀 Quick Deployment Guide
### 1. Install Tools
See [INSTALLATION.md](./devops/docs/INSTALLATION.md) for OS-specific commands.

### 2. Local Run (Kind)
```bash
sh devops/scripts/setup-local.sh
sh devops/scripts/deploy-kind.sh
```

### 3. AWS EKS Run (Terraform)
```bash
cd devops/terraform
terraform init && terraform apply --auto-approve
aws eks update-kubeconfig --name ecommerce-ai
helm install ecommerce-ai devops/helm/ecommerce-ai
```

## 💰 Cost Reduction Strategy
We implement Spot Instances, HPA, and Cluster Autoscaler to minimize AWS spend. Refer to [COST-REDUCTION.md](./devops/docs/COST-REDUCTION.md).

## 🛡️ Security Strategy
Automated Trivy, Bandit, and Gitleaks scanning in every pipeline. See [SECURITY.md](./devops/docs/SECURITY.md).

**Developed with ❤️ by [Bittu Sharma](https://github.com/bittush8789)**
