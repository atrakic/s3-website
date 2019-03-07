variable "tags"            { default = { created_by = "terraform" } }

variable "index_page"      { default = "index.html" }
variable "error_page"      { default = "error.html" }
variable "create_defaults" {}

variable "aws_region"  {}
variable "environment" {}
variable "bucket"      {}
