terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
    }
  }
    cloud {
        organization = "sami123123123"
      workspaces {
        name = "aws_demo_montreal_college"
      }
    }

}
