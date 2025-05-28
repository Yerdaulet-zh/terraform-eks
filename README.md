# terraform-eks
Terraform repository for production grade managament of cloud services specifically for EKS

Project tree:

├── bootstrap
│   ├── backend.tf
│   ├── dynamodb.tf
│   ├── provider.tf
│   ├── s3.tf
│   └── variables.tf
├── development
│   └── vpc
│       └── backend.tf
├── production
│   └── vpc
│       └── backend.tf
├── README.md
└── staging
    └── vpc
        └── backend.tf