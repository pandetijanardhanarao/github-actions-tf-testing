resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      Name="DEV_VPC"
    }
  
}
resource "aws_subnet" "public_subnet" {
    cidr_block = var.public_subnet_cidr
    vpc_id = aws_vpc.vpc.id
    tags ={
        Name="public_subnet"
    }
  
}
resource "aws_subnet" "private_subnet" {
    cidr_block = var.private_subnet_cidr
    vpc_id = aws_vpc.vpc.id
    tags={
        Name="private-subnet"
    }
  
}
