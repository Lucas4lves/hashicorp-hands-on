resource "aws_subnet" "standard_subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr

  tags = merge({
    Demo = true
  }, var.additional_tags)
}