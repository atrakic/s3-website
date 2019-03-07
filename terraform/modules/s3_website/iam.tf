resource "aws_iam_user" "website" {
  name = "${var.bucket}"
}

resource "aws_iam_access_key" "website" {
  user = "${aws_iam_user.website.name}"
}

resource "aws_iam_user_policy" "website" {
  name = "${var.bucket}"
  user = "${aws_iam_user.website.name}"

  policy = <<EOF
{
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::${aws_s3_bucket.website.id}/*"
    }
  ]
}
EOF
}
