module "acm_backend" {
  source      = "terraform-aws-modules/acm/aws"
  version     = "4.0.1"
  domain_name = "daws38sat.fun"
  subject_alternative_names = [
    "*.daws38sat.fun"
  ]
  zone_id             = data.aws_route53_zone.main.id
  validation_method   = "DNS"
  wait_for_validation = true
  tags = {
    Name = "${local.project}-${local.env}-backend-validation"
  }
}

data "aws_route53_zone" "main" {
  name = "daws38sat.fun." # Ensure the domain name ends with a dot

}
