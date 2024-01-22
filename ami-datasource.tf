data "aws_ami""amz_linux2"{
    most_recent = true
    owners = ["amazon"]
    filter{
        name="name"
        values=["ami-0e9107ed11be76fde"]
    }
    filter{
        name="root-device-type"
        values=["ebs"]
    }
    filter{
        name="virtualization-type"
        values=["hvm"]
    }
    filter{
        name="architecture"
        values=["x86_64"]
    }
}

