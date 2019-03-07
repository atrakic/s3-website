terraform {
  required_version = ">= 0.11.10"
}

provider "aws" {
  version = ">= 2.0.0"
  region  = "${var.aws_region}"
}

provider "random" {
  version = ">= 2.0.0"
}

/*
provider "external" {
  version = "1.0.0"
}

provider "local" {
  version = "1.0.0"
}

provider "null" {
  version = "1.0.0"
}

provider "template" {
  version = "1.0.0"
}
*/
