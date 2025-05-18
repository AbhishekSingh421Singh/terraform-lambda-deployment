Hello World in the Cloud: A DevOps Pipeline for AWS Lambda Containers.

Project Summary: Terraform-Lambda-Deploy
This project demonstrates a complete DevOps pipeline for deploying a containerized "Hello World" microservice using AWS Lambda and API Gateway, with infrastructure provisioned via Terraform and automated workflows powered by GitHub Actions.
Key Features:
•	Containerization: The microservice is packaged using a Dockerfile optimized for AWS     Lambda.
•	Infrastructure as Code (IaC): Terraform is used to provision AWS resources including:
•	VPC with public/private subnets
•	IAM roles and security groups
•	ECR repository for container images
•	Lambda functions configured for container image deployment
•	API Gateway for HTTP access
•	Terraform State Management:
•	Remote backend using S3
•	State locking with DynamoDB
•	Workspace separation for dev, staging, and prod environments
•	CI/CD with GitHub Actions:
•	Terraform linting, validation, plan, and apply workflows
•	Docker image build and push to ECR
•	Lambda function update automation
•	Monitoring & Logging:
•	AWS CloudWatch for logs and metrics
•	AWS X-Ray for distributed tracing

Repository Structure:
•	app/: Microservice code and Dockerfile
•	modules/: Reusable Terraform modules (Lambda, IAM, API Gateway)
•	.github/workflows/: CI/CD pipelines
•	policies/: Optional policy definitions (e.g., Rego)
•	README.md: Setup instructions and architecture overview
Objective:
To showcase a scalable, secure, and automated deployment pipeline for serverless containerized applications using modern DevOps practices and AWS services.
