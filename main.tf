<<<<<<< HEAD
provider "aws" {
  region = "eu-west-1"
}

# Customize with your own S3 bucket and DynamoDB table if you want to use a Remote Backend for States
terraform {
  backend "s3" {
    bucket         = "deletetest25"     
    key            = "poc/terraform.tfstate" 
    region         = "us-east-1" 
    encrypt        = true
  }
}

resource "aws_instance" "data01" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = var.instance_type

  tags = {
    Name = "CICD"
  }
}
=======
#test
>>>>>>> 4114fa57bfd81aeaf25ae847838463228dc5637a
