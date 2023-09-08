# AWS Terraform

Welcome to the **AWS Terraform** repository! This is a practical space for learning and implementing Infrastructure-as-Code (IaC) concepts using Terraform on the AWS cloud platform.

## Prerequisites

Before you get started, please ensure you have the following tools and resources set up:

1. **Terraform**: Terraform is an open-source IaC tool. If you don't have it installed, you can find installation instructions in the [Terraform Documentation](https://learn.hashicorp.com/tutorials/terraform/install-cli).

2. **AWS CLI**: The AWS Command Line Interface (CLI) allows you to interact with AWS services. If you haven't already, follow the installation guide available in the [AWS CLI User Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).

3. **AWS Provider for Terraform**: Terraform relies on providers to interact with cloud platforms. You'll need the AWS provider for Terraform. Refer to the [official Terraform AWS provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) for more details.

## Getting Started

To begin your IaC journey with Terraform on AWS:

1. Clone this repository to your local machine:
     `git clone https://github.com/vishu-25/aws-terraform.git`

2. Navigate to the cloned repository directory.

3. Start experimenting with Terraform configurations by creating and managing AWS resources.

4. Don't forget to check out the provided examples and tutorials in this repository to accelerate your learning process.

## Executing Terraform commands
Initialize your Terraform working directory
```
terraform init
```

Check your Terraform configuration files for syntax errors and other issues.
```
terraform validate
```
Preview the changes Terraform will make to your infrastructure before applying them.
```
terraform plan
```
Apply the planned changes to create or update your infrastructure.
```
terraform apply
```

## Clean-Up 

Delete the resources created by Terraform.
```
terraform destroy
```

Clean up local files: Remove Terraform-specific files and state files from your local directory.
```
rm -rf .terrafrom.*
rm -rf terrafrom.tfstate.*
```