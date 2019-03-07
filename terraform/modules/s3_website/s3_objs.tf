resource "aws_s3_bucket_object" "index" {
  count = "${var.create_defaults}"

  bucket = "${aws_s3_bucket.website.id}"
  key    = "${var.index_page}"

  content = <<EOF
Default ${local.bucket} index page
EOF

  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "error" {
  count = "${var.create_defaults}"
  
  bucket = "${aws_s3_bucket.website.id}"
  key    = "${var.error_page}"

  content = <<EOF
Default ${local.bucket} error page
EOF

  content_type = "text/plain"
}
