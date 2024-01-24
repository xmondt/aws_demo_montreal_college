module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  # Include any necessary variables for the VPC module
}

module "rds" {
  source = "terraform-aws-modules/rds/aws"
  identifier = "my-rds-instance"
  # Include any necessary variables for the RDS module
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI
  instance_type = "t2.micro"  # Replace with your desired instance type

  subnet_id     = module.vpc.public_subnets[0]  # Use one of the public subnets from the VPC module
  key_name      = "your-key-pair"  # Replace with your key pair name

  # Add any other required configurations for your EC2 instance
}
