##### This file contains variables that are used in the main.tf file.
##### Remove or comment the default field of the variable to input custom values at the time of running the script.


##### Initial two bytes of VPCs CIDR block

variable "vpc_count"{
  description = "Number of VPCs to be created."
  default = 4
}

variable "cidr_prefix"{
  type = "list"
  description = "The first 16 bits of the desired cidr block/s. Note: The number of elements in the list should not be less than the specified count of VPCs."
  default = ["172.16", "10.0", "143.14", "100.10"]
}

##### VPC names

variable "vpc_name"{
  type = "string"
  description = "Enter the name of vpc to be created"
  default = "my-vpc"
}


#### AWS region/regions

variable "aws_region"{
  description = "The region/s in which you want to create resources. eg: [us-east-1, us-west-2] "
  type = "list"
  default = ["us-east-2"]
}

variable "access_key"{
  type = "string"
  }

variable "secret_key"{
  type = "string"
  }
