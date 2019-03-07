variable "environment" {}
variable "aws_region"  { default = "eu-west-1" }

# CHANGE_me:
variable "bucket"      { default = "trakic.io.circleci" }

variable "create_defaults" { default = false   }
variable "create_iam_user" { default = false   }
