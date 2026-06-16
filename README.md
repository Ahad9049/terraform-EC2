# Terraform EC2 — Multi-Environment Infrastructure 🚀

> One codebase. Three isolated environments. Zero duplicate code.

---

## Overview

A production-grade Terraform project that provisions EC2 instances with Security Groups across **Dev**, **Staging**, and **Production** environments using Terraform Workspaces and a modular structure.

```
One command to build. One command to destroy.
Same code. Every environment. Always consistent.
```

---

## Project Structure

```
terraform-EC2/
├── environment/
│   ├── dev/
│   │   └── stg.tfvars
│   ├── stg/
│   │   └── stg.tfvars
│   └── prod/
│       └── stg.tfvars
├── module/
│   └── ec2/
│       ├── main.tf        # EC2 + Security Group resources
│       ├── var.tf         # Input variables
│       └── output.tf      # Output values
├── .gitignore
├── .terraform.lock.hcl
├── terraform.tfstate
├── terraform.tfstate.backup
└── README.md
```

---

## What Gets Provisioned

- ✅ EC2 instance (t2.micro)
- ✅ Security Group with SSH inbound rules
- ✅ Key pair for secure access
- ✅ Isolated state per environment
- ✅ Modular and reusable structure

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| **Terraform** | Infrastructure as Code |
| **AWS EC2** | Compute instances |
| **Terraform Workspaces** | Multi-environment management |
| **HCL** | HashiCorp Configuration Language |
| **Git** | Version control |

---

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) installed
- AWS CLI configured with credentials
- Git installed

```bash
aws configure
terraform --version
```

---

## Quick Start

**1. Clone the repository:**
```bash
git clone https://github.com/Ahad9049/terraform-EC2.git
cd terraform-EC2
```

**2. Initialize Terraform:**
```bash
terraform init
```

**3. Create and switch workspaces:**
```bash
# Create environments
terraform workspace new dev
terraform workspace new stg
terraform workspace new prod

# Switch to desired environment
terraform workspace select dev
```

**4. Plan and apply:**
```bash
terraform plan -var-file="environment/dev/stg.tfvars"
terraform apply -var-file="environment/dev/stg.tfvars"
```

**5. Destroy when done:**
```bash
terraform destroy -var-file="environment/dev/stg.tfvars"
```

---

## Workspaces

| Workspace | Purpose |
|-----------|---------|
| **dev** | Development — break things freely |
| **stg** | Staging — test before it matters |
| **prod** | Production — real traffic, zero tolerance |

Each workspace maintains its **own isolated state** — zero interference between environments. ✅

---

## Security Group Rules

| Type | Port | Protocol | Source |
|------|------|----------|--------|
| Inbound | 22 (SSH) | TCP | 0.0.0.0/0 |
| Outbound | All | All | 0.0.0.0/0 |

---

## Author

**Abdul Ahad** — [@Ahad9049](https://github.com/Ahad9049)

⭐ Star this repo if it helped you!
