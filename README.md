# Terraform Infra CI/CD on Azure with GitHub Actions

This repository demonstrates a **real-world, production-ready CI/CD pipeline** for provisioning and managing **Azure infrastructure using Terraform**.  
The pipeline is implemented using **GitHub Actions** and follows **DevSecOps best practices**, including automated security scans and **manual approval** before applying infrastructure changes.

This setup closely represents how infrastructure is managed in **enterprise and production environments**.

---

## 🎯 Objective

The objective of this project is to:

- Implement **Infrastructure as Code (IaC)** using Terraform
- Automate infrastructure validation and planning
- Detect security and compliance issues early
- Enforce a **manual approval gate** before deployment
- Separate **Terraform Plan** and **Terraform Apply** stages for better control

---

## 🚀 Key Features

- Azure infrastructure provisioning using **Terraform**
- CI/CD automation using **GitHub Actions**
- Secure Azure authentication via **Service Principal**
- Integrated DevSecOps security scans:
  - **TFLint** – Terraform linting and best practices
  - **tfsec** – Security misconfiguration scanning
  - **Checkov** – Policy-as-Code compliance checks
- Terraform plan stored and reused as an artifact
- Manual approval required before `terraform apply`
- Clear separation of CI (Plan + Scan) and CD (Apply)

---

## 📂 Repository Structure

```text
.
├── Environment-Infra/
│   └── dev/
│       ├── main.tf           # Terraform resource definitions
│       ├── variables.tf      # Input variables
│       ├── providers.tf      # Azure provider configuration
│       └── terraform.tfvars  # Environment-specific values
│
├── .github/
│   └── workflows/
│       └── terraform.yml     # GitHub Actions CI/CD workflow
│
└── README.md
