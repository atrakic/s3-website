# s3_website

[![CircleCI](https://circleci.com/gh/atrakic/s3-website.svg?style=svg)](https://circleci.com/gh/atrakic/s3-website)

This repository demostrates deploying a static website on [AWS S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html), by using CircleCI and Terraform.

### Requirements
- [AWS account](https://aws.amazon.com/account/)
- [CircleCI account](https://circleci.com/signup/)
- [terraform](https://www.terraform.io)

### How to use
- Create AWS user and grant least privilege IAM policy [policy.json] and export credentials on your computer.
- Fork this repository, and edit contents of [terraform/shared/variables.tf].
- Commit your changes.

Within CircleCi project, create new [context](https://circleci.com/docs/2.0/contexts/) and populate environment variables used by [terraform aws provider](https://www.terraform.io/docs/providers/aws/).
If neccesery adjust CirleCi context-name found at [.circleci/config.yml].

### Deploy
Follow CircleCI workflow and approve terraform plan on master branch.

### Cleanup
```aws s3 rb s3://yourbucket --force```

## License

s3_website is licensed under the MIT license.

See [LICENSE.md](https://github.com/atrakic/s3_website/blob/master/LICENSE.md) for the full license text.
