````markdown
🚀 Terraform AWS Web Server Infrastructure

📌 Project Overview

This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision and manage AWS infrastructure.

The infrastructure includes:

- ✅ AWS EC2 Instance
- ✅ AWS Security Group
- ✅ Automatic Nginx Installation using User Data
- ✅ Public IP & Public DNS Outputs
- ✅ Infrastructure Provisioning and Destruction using Terraform

The primary objective of this project is to automate the deployment of a web server on AWS while following Terraform best practices.

---

🏗️ Architecture Diagram

```
                   Terraform
                       │
                       ▼
                AWS Provider
                       │
        ┌──────────────┴──────────────┐
        │                             │
        ▼                             ▼
 Security Group                 EC2 Instance
 (SSH + HTTP)                  Amazon Linux 2023
                                        │
                                        ▼
                               User Data Script
                                        │
                                        ▼
                           Install & Configure Nginx
                                        │
                                        ▼
                            Custom HTML Welcome Page
```

---

📂 Project Structure

```
terraform-aws-webserver/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── userdata.sh
├── .gitignore
├── README.md
└── screenshots/
```

---

☁️ AWS Resources Created

This project provisions the following AWS resources:

- EC2 Instance (t3.micro)
- Security Group
- Root EBS Volume (Automatically Attached)
- Public IP Address
- Public DNS Name

---

🛠️ Technologies Used

- Terraform
- AWS EC2
- AWS Security Groups
- Amazon Linux 2023
- Nginx
- Git
- GitHub
- Linux
- Bash Scripting

---

📋 Prerequisites

Before running this project, ensure you have:

- AWS Account
- AWS CLI Configured
- Terraform Installed
- Git Installed
- AWS Key Pair
- IAM User with EC2 Permissions

---

📄 Terraform Files

## main.tf

Contains:

- Terraform Provider Configuration
- AWS Provider
- Security Group Resource
- EC2 Instance Resource

---

variables.tf

Declares all variables used in the project:

- AWS Region
- AMI ID
- Instance Type
- Instance Name

---

terraform.tfvars

Contains the values for all Terraform variables.

Example:

```hcl
aws_region    = "ap-south-1"
ami_id        = "ami-01a00762f46d584a1"
instance_type = "t3.micro"
instance_name = "Terraform-WebServer"
```

---

userdata.sh

This script automatically executes when the EC2 instance launches.

It performs the following tasks:

- Updates packages
- Installs Nginx
- Starts Nginx
- Enables Nginx Service
- Creates a Custom HTML Page

---

outputs.tf

Displays useful outputs after deployment:

- EC2 Instance ID
- Public IP
- Public DNS

---

🚀 Terraform Workflow

## Step 1 - Initialize Terraform

```bash
terraform init
```

Downloads required Terraform providers.

---

Step 2 - Format Terraform Code

```bash
terraform fmt
```

Formats Terraform configuration files.

---

Step 3 - Validate Configuration

```bash
terraform validate
```

Checks Terraform configuration for syntax errors.

---

Step 4 - Preview Infrastructure

```bash
terraform plan
```

Displays the execution plan before provisioning resources.

---

Step 5 - Deploy Infrastructure

```bash
terraform apply
```

Creates all AWS resources.

Type:

```text
yes
```

to confirm deployment.

---

Step 6 - Verify Infrastructure

Terraform displays:

- Instance ID
- Public IP
- Public DNS

Open the browser:

```
http://13.127.186.203/
```

The custom Nginx web page should appear.

---

Step 7 - Destroy Infrastructure

```bash
terraform destroy
```

Type:

```text
yes
```

to remove all AWS resources.

---

🔐 Security Group Configuration

| Port | Protocol | Purpose |
|------|----------|----------|
| 22 | TCP | SSH Access |
| 80 | TCP | HTTP Web Server |

---

📤 Terraform Outputs

After successful deployment, Terraform displays:

- EC2 Instance ID
- Public IP Address
- Public DNS Name

---

📸 Screenshots

Store screenshots inside the `screenshots/` folder.

Example:

```
screenshots/
│
├── terraform-init.png
├── terraform-plan.png
├── terraform-apply.png
├── ec2-running.png
├── nginx-homepage.png
└── terraform-destroy.png

---

🎯 Learning Outcomes

Through this project, I learned:

- Infrastructure as Code (IaC)
- Terraform Basics
- Terraform Providers
- Variables and Outputs
- AWS EC2 Provisioning
- Security Groups
- User Data Automation
- Terraform State Management
- AWS Resource Lifecycle
- Git Version Control
- GitHub Repository Management

---

💡 Future Enhancements

Future improvements for this project include:

- Custom VPC
- Public & Private Subnets
- Internet Gateway
- Route Tables
- NAT Gateway
- Application Load Balancer
- Auto Scaling Group
- Remote Terraform State (S3 + DynamoDB)
- GitHub Actions CI/CD Pipeline

---

👨‍💻 Author

**Aaron S Binu**

Aspiring DevOps Engineer

- GitHub: https://github.com/MRDOM12
- LinkedIn: www.linkedin.com/in/aaron-s-binu

---

⭐ Repository Highlights

- Infrastructure as Code using Terraform
- AWS EC2 Provisioning
- Automated Web Server Deployment
- Security Group Configuration
- User Data Automation
- Terraform Outputs
- Clean Project Structure
- Git Version Control
- GitHub Portfolio Project

---

📜 License

This project is created for learning and portfolio purposes.

Feel free to fork, clone, and enhance it for your own learning.

---

🙌 Acknowledgements

- HashiCorp Terraform
- Amazon Web Services (AWS)
- Nginx
- Git & GitHub
````
