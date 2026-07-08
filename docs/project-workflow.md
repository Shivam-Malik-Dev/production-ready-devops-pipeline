# Production Ready DevOps Pipeline - Project Workflow

## Project Overview

This project demonstrates a complete Production Ready DevOps CI/CD Pipeline using AWS, Jenkins, Docker, DockerHub, Kubernetes and Terraform.

Whenever a developer pushes new code to GitHub, Jenkins automatically builds a new Docker image, pushes it to DockerHub, and deploys the latest version to a Kubernetes cluster running on AWS EC2.

---

# Project Workflow

```
Developer
    │
    ▼
GitHub Repository
    │
    ▼
Jenkins Pipeline Trigger
    │
    ▼
Clone Repository
    │
    ▼
Build Docker Image
    │
    ▼
Push Image to DockerHub
    │
    ▼
SSH to Kubernetes Master Node
    │
    ▼
kubectl apply
    │
    ▼
Deployment Updated
    │
    ▼
Pods Recreated
    │
    ▼
Application Available via NodePort
```

---

# Infrastructure

Terraform provisions the following AWS infrastructure:

- Jenkins Server
- Kubernetes Master Node
- Kubernetes Worker Node
- Security Group

---

# Technologies Used

- AWS EC2
- Terraform
- Jenkins
- Docker
- DockerHub
- Kubernetes
- Git
- GitHub
- Linux
- Shell Script

---

# CI/CD Pipeline Stages

## Stage 1

Clone the latest source code from GitHub.

---

## Stage 2

Build Docker Image.

```
docker build
```

---

## Stage 3

Authenticate with DockerHub.

```
docker login
```

---

## Stage 4

Push the latest Docker image.

```
docker push
```

---

## Stage 5

Deploy to Kubernetes.

```
kubectl apply -f deployment.yml
kubectl apply -f service.yml
```

---

# Kubernetes Components

Deployment

- Creates application Pods
- Maintains desired replica count
- Performs rolling updates

Service

- Exposes application using NodePort
- Makes application accessible externally

Pods

- Run the Docker container

Node

- Master Node manages the cluster
- Worker Node runs application Pods

---

# Deployment Verification

The following commands were used after deployment.

```
kubectl get nodes
```

```
kubectl get pods
```

```
kubectl get services
```

---

# Final Output

After successful deployment:

- Jenkins Pipeline completed successfully
- Docker image pushed to DockerHub
- Kubernetes deployment updated
- Pods running successfully
- NodePort service exposed
- Application accessible through browser

Example:

```
http://<Worker-Public-IP>:30080/todo
```

---

# Future Improvements

- Replace SSH deployment with Kubernetes Credentials in Jenkins
- Configure Ingress Controller
- Add HTTPS using Nginx Ingress
- Integrate Monitoring using Prometheus and Grafana
- Add ArgoCD for GitOps deployment
- Configure Horizontal Pod Autoscaler