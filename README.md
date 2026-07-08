# 🚀 Production Ready DevOps Pipeline on AWS

<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?style=for-the-badge&logo=amazonaws)
![Docker](https://img.shields.io/badge/Docker-Containers-2496ED?style=for-the-badge&logo=docker)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?style=for-the-badge&logo=kubernetes)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-D24939?style=for-the-badge&logo=jenkins)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</p>

---

## 📌 Project Overview

This project demonstrates a complete **Production Ready DevOps CI/CD Pipeline** built using **Terraform, AWS, Jenkins, Docker, DockerHub, and Kubernetes**.

The pipeline automatically builds a Docker image, pushes it to DockerHub, and deploys the application to a Kubernetes cluster running on AWS.

---

# 🏗 Architecture

<p align="center">
<img src="architecture/architecture-diagram.png" width="100%">
</p>

---

# 🛠 Tech Stack

| Category | Technology |
|----------|------------|
| Cloud | AWS EC2 |
| IaC | Terraform |
| CI/CD | Jenkins |
| Containers | Docker |
| Registry | DockerHub |
| Orchestration | Kubernetes |
| Version Control | Git & GitHub |
| OS | Ubuntu Linux |
| Backend | Node.js |

---

# 🔄 CI/CD Workflow

```
Developer
    │
    ▼
GitHub
    │
    ▼
Jenkins
    │
    ├── Clone Repository
    ├── Build Docker Image
    ├── Push Docker Image
    └── Deploy to Kubernetes
             │
             ▼
      Kubernetes Cluster
             │
             ▼
      Application Running
```

### Jenkins Pipeline

<p align="center">
<img src="screenshots/04-jenkins-pipeline-success.png" width="100%">
</p>

---

# ☁️ Infrastructure

Terraform provisions:

- Jenkins Server
- Kubernetes Master Node
- Kubernetes Worker Node
- Security Group

### Terraform Apply

<p align="center">
<img src="screenshots/01-terraform-apply-success.png" width="100%">
</p>

### EC2 Instances

<p align="center">
<img src="screenshots/02-ec2-instances.png" width="100%">
</p>

---

# ☸ Kubernetes Deployment

### Cluster Nodes

<p align="center">
<img src="screenshots/05-kubernetes-nodes.png" width="100%">
</p>

### Running Pods

<p align="center">
<img src="screenshots/06-kubernetes-pods.png" width="100%">
</p>

### NodePort Service

<p align="center">
<img src="screenshots/07-kubernetes-service.png" width="100%">
</p>

---

# 🌐 Application

The application is deployed on Kubernetes and exposed using a **NodePort Service**.

<p align="center">
<img src="screenshots/08-application-running.png" width="100%">
</p>

---

# 📂 Project Structure

```
production-ready-devops-pipeline/
│
├── app/
├── docker/
├── terraform/
├── kubernetes/
├── jenkins/
├── architecture/
├── screenshots/
├── docs/
├── LICENSE
├── .gitignore
└── README.md
```

---

# 📚 Documentation

Additional project workflow documentation is available in:

```
docs/project-workflow.md
```

---

# 👨‍💻 Author

**Shivam Malik**

GitHub: https://github.com/Shivam-Malik-Dev

LinkedIn: https://www.linkedin.com/in/shivam-malik-59b13a29b/

---

## ⭐ If you found this project helpful, consider giving it a Star.