data "aws_availability_zones" "av_zones" {}
data "aws_region" "cr_re" {}

module "vpc" {
  source = "../../terraform-modules/aws/vpc"
  aws_region = data.aws_region.cr_re
  private_subnets = var.private_subnets
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  additional_tags = {
    More_Tags = true
  }
}