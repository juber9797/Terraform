#VARIABLES

variable "access_key_aws" {
	description = " access key aws"
	
	}

variable "secret_key_aws" {

	description = "secret_key_aws"
	
}

variable "vpc" {

	type = "map"
	default = {
	
		"tag" = "unknown"
		"cidr_block" = "unknown"
		"subnet_bits" = "unknown"
	}
}
	
variable "azs" {
    type = "map"
    default = {
        "ap-southeast-2" = "ap-southeast-2a,ap-southeast-2b,ap-southeast-2c"
        "eu-west-1"      = "eu-west-1a,eu-west-1b,eu-west-1c"
        "us-west-1"      = "us-west-1b,us-west-1c"
        "us-west-2"      = "us-west-2a,us-west-2b,us-west-2c"
        "us-east-1"      = "us-east-1c,us-west-1d,us-west-1e"
    }
}

variable "instance_type" {
    default = "t1.micro"
}
