output "vpc_id" {
  value = aws_vpc.yvn_vpc.id
  description = "The ID of the VPC"
}

output "public_subnet_id" {
  value = aws_subnet.yvn_subnet.id
  description = "The ID of the public subnet"
}

output "private_subnet_id" {
  value = aws_subnet.yvn_private_subnet.id
  description = "The ID of the private subnet"
}

output "internet_gateway_id" {
  value = aws_internet_gateway.yvn_gw.id
  description = "The ID of the Internet Gateway"
}

output "route_table_id" {
  value = aws_route_table.yvn_route_table.id
  description = "The ID of the route table"
}

output "security_group_id" {
  value = aws_security_group.yvn_security_group.id
  description = "The ID of the security group"
}

output "key_pair_name" {
  value = aws_key_pair.yvn_key.key_name
  description = "The name of the SSH key pair"
}

output "ec2_instance_id" {
  value = aws_instance.web_instance.id
  description = "The ID of the EC2 instance"
}

output "ec2_instance_public_ip" {
  value = aws_instance.web_instance.public_ip
  description = "The public IP address of the EC2 instance"
}
