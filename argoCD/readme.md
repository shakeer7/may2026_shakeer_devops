Got it — here’s your updated README with every **`pathnex`** replaced by **`unipiper`**:

---

# ArgoCD on AWS EKS - GitOps Demo

This repository demonstrates a GitOps workflow using ArgoCD deployed on Amazon EKS.

## Architecture

GitHub Repository  
        ↓  
     ArgoCD  
        ↓  
Amazon EKS Cluster  
        ↓  
Applications  
   ├── Nginx  
   └── Grafana  

---

## Prerequisites

- AWS Account  
- AWS CLI  
- kubectl  
- Helm  
- Git  
- Amazon EKS Cluster  

---

## Environment

| Component   | Version   |
|-------------|-----------|
| Kubernetes  | v1.35.5   |
| AWS CLI     | v2        |
| kubectl     | v1.36.1   |
| Helm        | v3.21.0   |
| ArgoCD      | Stable Release |

---

## Project Structure

```text
.
├── argo-apps/
│   ├── nginx-app.yaml
│   └── grafana-app.yaml
│
├── nginx/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│
├── grafana/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│
└── README.md
```

---

## Install AWS CLI

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

aws --version
```

Configure AWS:

```bash
aws configure
```

---

## Install kubectl

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

kubectl version --client
```

---

## Connect to EKS Cluster

```bash
aws eks update-kubeconfig \
--region ap-south-1 \
--name unipiper
```

Verify:

```bash
kubectx

kubectl get nodes
```

---

## Install Helm

```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

helm version
```

---

## Install ArgoCD

Create namespace:

```bash
kubectl create namespace argocd
```

Install ArgoCD:

```bash
kubectl apply -n argocd \
-f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

---

## Expose ArgoCD

```bash
kubectl patch svc argocd-server \
-n argocd \
-p '{"spec":{"type":"LoadBalancer"}}'
```

Check LoadBalancer:

```bash
kubectl get svc argocd-server -n argocd
```

---

## Get Initial Admin Password

```bash
kubectl get secret argocd-initial-admin-secret \
-n argocd \
-o jsonpath="{.data.password}" | base64 -d
```

Username:

```text
admin
```

---

## Create Namespaces

```bash
kubectl create namespace unipiper-nginx

kubectl create namespace unipiper-grafana-monitoring
```

---

## Deploy Applications

Clone repository:

```bash
git clone https://github.com/unipiper/unipiper-argocd_lab.git

cd unipiper-argocd_lab
```

Deploy ArgoCD Applications:

```bash
kubectl apply -f argo-apps/
```

Expected output:

```text
application.argoproj.io/unipiper-nginx created
application.argoproj.io/unipiper-grafana created
```

---

## Verification

Check ArgoCD components:

```bash
kubectl get pods -n argocd
```

Check applications:

```bash
kubectl get applications -n argocd
```

Check cluster resources:

```bash
kubectl get pods -A

kubectl get svc -A

kubectl get nodes
```

---

## Useful Commands

Check disk usage:

```bash
df -h
```

Check directory size:

```bash
du -sh *
```

View Kubernetes contexts:

```bash
kubectx
```

View namespaces:

```bash
kubens
```

---

## GitOps Workflow

1. Developer pushes code to GitHub.  
2. ArgoCD detects repository changes.  
3. ArgoCD synchronizes manifests.  
4. EKS cluster state matches Git repository state.  
5. Drift is automatically detected and corrected.  

---

## Learning Objectives

- Amazon EKS  
- Kubernetes Administration  
- ArgoCD  
- GitOps  
- Helm Charts  
- Namespace Management  
- AWS CLI  
- kubectl Operations  

---

## Author

**Shakeer Mohammed**  
DevOps | Cloud | Kubernetes | GitOps  

---

✅ All instances of **pathnex** have been replaced with **unipiper**.  

Would you like me to also adjust the **GitHub repo link** (`https://github.com/unipiper/unipiper-argocd_lab`) so it actually exists, or keep it as a placeholder for now?
