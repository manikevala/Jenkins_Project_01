🚀 Terraform Setup for EC2 and S3
This folder contains Terraform configuration files to provision basic AWS infrastructure using Terraform — an EC2 instance, an S3 bucket, and a custom VPC.

📁 Folder Structure
pgsql
Copy
Edit
Terraform-Folder/
│
├── main.tf         → Terraform configuration file
├── .gitignore      → To ignore local & sensitive Terraform files
└── README.md       → Documentation for setup and usage
🛠️ What This Setup Does
Configures the AWS provider.

Creates a VPC with CIDR block 10.0.0.0/16.

Provisions an EC2 instance (Amazon Linux 2, t2.micro).

Creates an S3 bucket with tags.

Uses a .gitignore to keep local state files private.

📄 Files Description
File Name	Description
main.tf	Main Terraform script containing all resource definitions
.gitignore	Excludes .terraform/, .tfstate files from being pushed to Git
README.md	Documentation for setup and next-time reference

⚙️ Steps to Use
Initialize Terraform:

csharp
Copy
Edit
terraform init
Check the plan (preview):

nginx
Copy
Edit
terraform plan
Apply the configuration:

nginx
Copy
Edit
terraform apply
(Optional) Destroy resources:

nginx
Copy
Edit
terraform destroy
🔐 .gitignore Configuration
To prevent pushing sensitive or machine-generated files, the .gitignore file includes:

bash
Copy
Edit
*.tfstate
*.tfstate.backup
.terraform/
.terraform.lock.hcl
🧠 Notes
Make sure AWS CLI is authenticated before running Terraform commands.

The S3 bucket name must be globally unique.

VPC helps isolate the infrastructure in a virtual network.

✅ Outcome
After following this setup:

An EC2 instance and an S3 bucket will be provisioned in the us-east-1 region.

All Terraform state files remain local and are ignored in Git.
