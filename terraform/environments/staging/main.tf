provider "aws" {
  region = "${var.aws_region}"
}

module "staging_s3" {
  source = "../../modules/s3_website"

  bucket      = "${var.bucket}"
  environment = "${var.environment}"
  aws_region  = "${var.aws_region}"
  create_defaults  = "${var.create_defaults}"
}

output "staging_endpoint" {
  value = "${module.staging_s3.endpoint}"
}
