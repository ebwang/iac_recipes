# terraform-aws-ec2-with-ssh
Create an EC2 with a ssh key

# Requirements
I used the oficial terraform image with the bellow instrunctions.
Run the docker in your home directory because of the main.tf is search for the id_rsa
- docker run --entrypoint="" --env AWS_ACCESS_KEY_ID=<> --env AWS_SECRET_ACCESS_KEY=<> -i -t -v `pwd`:/terraform hashicorp/terraform:latest sh

After the run you can continue to init, plan and apply
