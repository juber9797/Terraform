# PROVIDERS

provider "aws" {
	access_key = "${var.access_key_aws}"
	secret_key = "${var.secret_key_aws}"
	region = "us-west-2"
	}

# RESOURCES CREATION NETWORK

resource "aws_vpc" "JA1_VPC" {

	cidr_block = "10.1.0.0/16"
	tags {
	
		name = "JA1_VPC"
		
		}
}

resource "aws_subnet" "sub1" {

	vpc_id = "${aws_vpc.JA1_VPC.id}"
	cidr_block = "10.1.1.0/24"

}
	
	

# RESOURCES CREATION INSTANCE

resource "aws_instance" "server1" {
	ami = "ami-e689729e"
	instance_type = "t2.micro"
	key_name = "ansible-key"
	tags {
		name = "server1"
		
	}
}

resource "aws_instance" "server2" {
	ami = "ami-e689729e"
	instance_type = "t2.micro"
	key_name = "ansible-key"
	tags {
		name = "server2"
		
	}
}

	

