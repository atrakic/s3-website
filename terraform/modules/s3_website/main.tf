resource "random_pet" "bucket" {
  keepers = {
    aws_region = "${var.aws_region}"
  }
}

locals {
  bucket        = "${var.bucket}.${random_pet.bucket.id}"
}

resource "aws_s3_bucket" "website" {
  bucket        = "${local.bucket}"
  acl           = "public-read"
  force_destroy = true

  website {
    index_document = "${var.index_page}"
    error_document = "${var.error_page}"
  }

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${local.bucket}/*"
    }
  ]
}
EOF

  tags = "${merge(var.tags,map(
    "Name","${format("%s-%s", local.bucket, lower(var.environment))}"
  ))}"
}
