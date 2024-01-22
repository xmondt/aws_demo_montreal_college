data "aws_ami""amz_linux2"{
    most_recent = true
    owners = ["amazon"]
    filter{
        name="name"
        values=["ami-06ca3ca175f37dd66*"]
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
