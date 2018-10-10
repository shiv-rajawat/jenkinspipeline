###################################
# @uthor: Shiv Mangal Singh Rajawat
# Contributor: Anuj Sehgal
###################################
provider "aws" {
  region = "${var.aws_region[0]}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

}

terraform {
  backend "s3" {
    access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
    
    encrypt = true
    bucket = "shiv-terraform-state"
    dynamodb_table = "terraform-state-lock"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
  }
}

#####Configuring the provider as AWS.



##### Creating a VPC in user specified region.

resource "aws_vpc" "main" {
  count = "${var.vpc_count}"
  cidr_block           = "${element(var.cidr_prefix, count.index)}.0.0/16"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags {
    Name = "${var.vpc_name}${count.index}"
  }
}
