# terraform-eks

Terraform repository for production-grade management of cloud services, specifically for EKS.

## Project tree

<pre>
```
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
│       ├── routes.tf
│       ├── subnets.tf
│       └── vpc.tf
├── production
│   └── vpc
│       ├── backend.tf
│       ├── igw.tf
│       ├── locals.tf
│       ├── nat.tf
│       ├── routes.tf
│       ├── subnets.tf
│       └── vpc.tf
├── staging
│    └── vpc
│        ├── backend.tf
│        ├── igw.tf
│        ├── locals.tf
│        ├── nat.tf
│        ├── routes.tf
│        ├── subnets.tf
│        └── vpc.tf
└── README.md
8 directories, 27 files
```
</pre>
