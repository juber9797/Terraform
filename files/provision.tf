# PROVIDERS

provider "aws" {
	access_key = "AKIAJVWBJ6WNOCY2IVVA"
	secret_key = "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"
	region = "us-west-2"
	}

# RESOURCES

resource "aws_instance" "nginx" {
	ami = "ami-e689729e"
	instance_type = "t2.micro"
	key_name = "ansible-key"
}

	

