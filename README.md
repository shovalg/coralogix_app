# coralogix_app_deployment
Get your environment ready
You'll need a desktop or laptop computer (you will need to use Linux in order to the wrapper file) with the following:

Setup an AWS free tier account.
Install awscli, the AWS command line tool. You can find the instructions in the AWS documentation.
Install Terraform (>= v1.0.0). Hashicorp, which makes Terraform, has an installation guide.
Install nodejs (>= v14.0.0), either from the official website or from your operating system's package manager.
Open your browser, go to the dns record of the ALB (shown as output to terminal), and you should get some information about Coralogix from the webapp.js service you just executed.

# Brief Description

A verified module vpc is imported from Terraform Registry (under file named vpc.tf), other resources are created in relevant files.

In file asg.tf we create:

* launch configuration
* security groups for EC2 instances
* auto-scaling group

In file alb.tf we create Application Load Balancer with target groups, security group and listener.


## Notes
1. If you decide not to use the wrapper file you will need to execute the following commands:
    * terraform init
    * terraform plan (optional)
    * terraform apply -auto-approve
2. If dns record of the ALB failed to appear in the terminal, copy the record from your aws account.
