# 🚀 DevOps & Cloud Infrastructure Repository

[![DevOps Practices](https://img.shields.io/badge/Practices-CI%2FCD%20%7C%20IaC%20%7C%20Automation-blue?style=for-the-badge&logo=devdotto)](https://github.com/kayyumshaikh698/DevOps)
[![Platform](https://img.shields.io/badge/Cloud-AWS%20%7C%20Docker%20%7C%20Kubernetes-orange?style=for-the-badge&logo=cloudprovider)](https://github.com/kayyumshaikh698/DevOps)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

Welcome to my central repository for **DevOps, Cloud-Native Engineering, and Infrastructure Automation**. This repository contains scripts, configuration files, manifests, and guides demonstrating robust automation pipelines, container orchestration, and cloud infrastructure management.

---

## 📂 Repository Structure

```text
├── .github/workflows/       # CI/CD Pipeline definitions (GitHub Actgggions)
├──Terraform-docker/        # Dockerfiles and containerization setups
├── kubernetes/              # K8s manifests, deployments, and helm charts
├── terraform/               # Infrastructure as Code (IaC) modules and scripts
├── scripts/                 # Automation and utility shell/Python scripts
└── docs/                    # Architecture diagrams and configuration guides

How to run ansible, jenkins and postgres containers:
cd /Terraform-docker
terraform init
terraform play
terraform apply --auto-approve
terraform destroy --auto-approve
