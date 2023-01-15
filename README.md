# Docker Image Folder 

The link to the full tutorial that I have been reading is https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli. Terraform should be installed before running the commands listed down below.

Commands To Create Docker Image In Terraform Instructions: 

- terraform init
- terraform apply
- docker ps -> this allows you to see what is in the container
- terraform destroy -> this will stop the container that has just been created. 


# Deploy EC2 instance using Terraform 

This is an example of how to deploy infrastructure using Terraform and in this example I deployed an EC2 instance. The following link is what I used for guidance https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build. In order for this instruction set to work, I had a create an IAM user and assign the following permissions to that IAM user: 
- AmazonEC2FullAccess


# Deploy S3 Bucket Using Terraform

I was successfully able to create an S3 bucket called "my-s3bucket" by running this script. For this portion of the code I would like to give credit to Coach DevOps and the link that I followed was https://www.coachdevops.com/2021/07/terraform-create-s3-bucket-example-how_12.html. I did not specify my AWS Access Key or Secret Access Key anywhere in my files as I declared these as environment variables by using the command prompt. 
