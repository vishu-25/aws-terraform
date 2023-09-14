# Terrafrom Small Utility Project

## Problem Statement:

- We are not able to create EC2 Instances in all the subnets of our VPC which are spread across all availability zones in that region.

### Approach towards Solution

- We need to find a solution to say that our desired EC2 Instance Type, for example: `t2.micro` is supported in the AZ or not. 
- In simple terms, give me the availability zone list in a particular region where by desired EC2 Instance Type `t3.micro` is supported.

### Why utility project ?

- In Terraform, we should not go and try things directly in large code base.
- First try your requirements in small chunks and integrate that to main code base.
- We are going to do the same now.

## Solution

- Determine which Availability Zones support your instance type

```
aws ec2 describe-instance-type-offerings --location-type availability-zone  --filters Name=instance-type,Values=t3.micro --region us-east-1 --output table
```