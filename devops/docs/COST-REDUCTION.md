# 💰 Cloud Cost Reduction & Optimization Guide

This document outlines the strategy for reducing AWS costs while maintaining performance.

## 1. Spot Instances for Dev/Staging
Use Spot instances for non-production environments to save up to 90%.
```bash
eksctl create nodegroup --cluster=ecom-eks --name=dev-spot --spot --instance-types=t3.medium
```

## 2. Cluster Autoscaler & HPA
Automate scaling to avoid paying for idle resources.
- **HPA**: `kubectl apply -f devops/kubernetes/base/hpa.yaml`
- **Cluster Autoscaler**: `helm install cluster-autoscaler kubernetes/cluster-autoscaler`

## 3. Storage Optimization
- **gp3 volumes**: Use gp3 instead of gp2 for EBS (20% cheaper).
- **S3 Lifecycle**: Move old logs to Glacier.
```hcl
resource "aws_s3_bucket_lifecycle_configuration" "logs" {
  rule {
    id     = "archive"
    status = "Enabled"
    transition { days = 30; storage_class = "GLACIER" }
  }
}
```

## 4. Resource Quotas
Prevent "runaway" costs in namespaces.
```yaml
apiVersion: v1
kind: ResourceQuota
metadata: { name: dev-quota, namespace: dev }
spec: { hard: { cpu: "4", memory: "8Gi" } }
```

## 5. Right-Sizing
Use Graviton (m6g) instances for a better price-to-performance ratio.
