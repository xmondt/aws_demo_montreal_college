terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
    cloud {
        organization = "sami123123123"
      workspaces {
        name = "aws_demo_montreal_college"
      }
    }

}
