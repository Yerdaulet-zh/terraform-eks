# Terraform-EKS

Terraform repository for production-grade management of cloud services, focused on provisioning and managing EKS clusters.

---

## Overview

This repository configures a **single EKS cluster** dedicated to the **development environment**.

While best practices usually recommend deploying **separate clusters per VPC** to achieve stronger network isolation and environment segregation, this can add significant cost and complexity, especially for smaller projects or early-stage development.

This repo provides a **simplified EKS setup** for development that balances **cost-efficiency** and **ease of use**.

---

## Recommended Architecture

<pre>
.
├── global
│   ├── backend.tf
│   ├── dynamodb.tf
│   ├── provider.tf
│   ├── s3.tf
│   └── variables.tf
├── development
│   └── vpc
│       ├── backend.tf
│       ├── igw.tf
│       ├── locals.tf
│       ├── nat.tf
│       ├── provider.tf
│       ├── routes.tf
│       ├── subnets.tf
│       └── vpc.tf
├── production
│   └── vpc
│       ├── backend.tf
│       ├── igw.tf
│       ├── locals.tf
│       ├── nat.tf
│       ├── provider.tf
│       ├── routes.tf
│       ├── subnets.tf
│       └── vpc.tf
├── staging
│    └── vpc
│        ├── backend.tf
│        ├── igw.tf
│        ├── locals.tf
│        ├── nat.tf
│        ├── provider.tf
│        ├── routes.tf
│        ├── subnets.tf
│        └── vpc.tf
└── README.md
8 directories, 27 files
</pre>
