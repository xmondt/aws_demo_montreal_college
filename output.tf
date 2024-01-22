output "instance_public_dns"{
    value = [for instance in aws.ec2aws_instance.myec2m: instance.instance_public_dns]
}
output "instance_public_dns_map"{
    value={for instance in aws.ec2aws_instance.myec2m: instance.id => instance.instance_public_dns}
}
output "instance_output_map2"{
    value={for c, instance in aws_aws_instance.myec2m: c => instance.instance_public_dns}
}
output "latest_splat_operator"{
    value=aws_instance.myec2m[*].instance_public_dns
}
