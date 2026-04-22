# 🛠️ Tool Installation Guide

This guide provides step-by-step installation instructions for all required tools across different Operating Systems.

## 1. Git
- **Ubuntu**: `sudo apt update && sudo apt install git -y`
- **Windows**: `winget install Git.Git`
- **Mac**: `brew install git`

## 2. Docker
- **Ubuntu**: `sudo apt install docker.io -y`
- **Windows**: `winget install Docker.DockerDesktop`
- **Mac**: `brew install --cask docker`

## 3. Kubernetes Tools (kubectl & kind)
- **kubectl**: `curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"`
- **kind**: `curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64 && chmod +x ./kind && sudo mv ./kind /usr/local/bin/kind`

## 4. Helm
- **Ubuntu/Mac**: `curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash`
- **Windows**: `choco install kubernetes-helm`

## 5. AWS CLI & eksctl
- **aws-cli**: `sudo apt install awscli -y`
- **eksctl**: `curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp && sudo mv /tmp/eksctl /usr/local/bin`

## 6. Terraform
- **Ubuntu**: `sudo apt-get install terraform`
- **Windows**: `choco install terraform`

## 7. Jenkins & Java
- **Java**: `sudo apt install openjdk-11-jdk -y`
- **Jenkins**: `wget -p -O - https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo apt-key add - && sudo apt install jenkins -y`

## 8. Security Tools (Trivy & Semgrep)
- **Trivy**: `wget https://github.com/aquasecurity/trivy/releases/download/v0.44.1/trivy_0.44.1_Linux-64bit.deb && sudo dpkg -i trivy_0.44.1_Linux-64bit.deb`
- **Semgrep**: `pip install semgrep`
