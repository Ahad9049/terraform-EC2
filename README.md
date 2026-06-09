# terraform-EC2
# Terraform EC2 Infrastructure on AWS

## Overview

This project uses Terraform to provision and manage AWS infrastructure as code. It automates the deployment of Amazon EC2 instances, security groups, and SSH key pair integration, making infrastructure deployment consistent, repeatable, and scalable.

## Architecture

The infrastructure includes:

* AWS EC2 Instance(s)
* AWS Security Group
* SSH Key Pair Authentication
* Configurable Instance Count
* Configurable Instance Type
* Terraform State Management

## Project Structure

```text
terraform-EC2/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars.example
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

## Prerequisites

Before using this project, ensure the following are installed:

* Terraform
* AWS CLI
* Git
* AWS Account with IAM User

Verify installations:

```bash
terraform -version
aws --version
git --version
```

## AWS Configuration

Configure AWS credentials:

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Default Region
Output Format
```

Verify authentication:

```bash
aws sts get-caller-identity
```

## Variables

Example configuration:

```hcl
ami            = "ami-xxxxxxxxxxxxx"
instance_type  = "t2.micro"
instance_count = 1
key_name       = "my-key"
```

Create a file named:

```text
terraform.tfvars
```

and provide your values.

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Preview Changes

```bash
terraform plan
```

## Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

when prompted.

## View Outputs

```bash
terraform output
```

## Destroy Infrastructure

To avoid AWS charges, destroy resources when finished:

```bash
terraform destroy
```

## Security Best Practices

* Never commit AWS credentials.
* Never commit private SSH keys.
* Never commit terraform.tfvars containing sensitive values.
* Use IAM users with least-privilege permissions.
* Store secrets securely.

## Technologies Used

* Terraform
* AWS EC2
* AWS IAM
* AWS Security Groups
* Git
* GitHub

## Learning Objectives

This project demonstrates:

* Infrastructure as Code (IaC)
* Terraform resource management
* AWS provisioning automation
* Variable management
* State management
* Version control for infrastructure

## Author

Abdul Ahad

Aspiring DevOps Engineer focused on AWS, Terraform, Linux, Jenkins, Docker, Kubernetes, and Automation.
