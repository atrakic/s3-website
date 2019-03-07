provider "aws" {
  region = "${var.aws_region}"
}

module "staging_s3" {
  source = "../../modules/s3_website"

  bucket      = "${var.bucket}"
  environment = "${var.environment}"
  aws_region  = "${var.aws_region}"
  create_defaults  = "${var.create_defaults}"
  create_iam_user  = "${var.create_iam_user}"
}

output "staging_endpoint" {
  value = "${module.staging_s3.endpoint}"
}
