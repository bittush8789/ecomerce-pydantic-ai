#!/bin/bash
# Enterprise Tool Installer (Ubuntu/Debian)

echo "--- Installing Git ---"
sudo apt update && sudo apt install git -y

echo "--- Installing Docker ---"
sudo apt install docker.io -y && sudo systemctl enable docker

echo "--- Installing kubectl ---"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl && sudo mv ./kubectl /usr/local/bin/

echo "--- Installing Helm ---"
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

echo "--- Installing Terraform ---"
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

echo "--- Tools Installation Complete ---"
