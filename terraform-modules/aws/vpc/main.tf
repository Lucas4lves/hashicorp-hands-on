resource "aws_vpc" "standard_vpc" {
    cidr_block = var.vpc_cidr
    
    tags = merge({
        Demo = true
    }, var.additional_tags)
}

module "private_subnets" {
  source = "../subnet"
  for_each = var.private_subnets
  vpc_id = aws_vpc.standard_vpc.id
  subnet_cidr = var.subnet_cidr

  depends_on = [ aws_vpc.standard_vpc ]
}

module "public_subnets" {
  source = "../subnet"
  vpc_id = aws_vpc.standard_vpc.id
  subnet_cidr = var.subnet_cidr

  depends_on = [ aws_vpc.standard_vpc ]
}