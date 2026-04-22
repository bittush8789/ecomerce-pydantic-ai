#!/bin/bash
# Local Setup Script
echo "Installing dependencies..."
pip install -r requirements.txt
echo "Building local docker image..."
docker build -t ecom-ai:local -f devops/docker/Dockerfile.backend .
echo "Setup complete!"
