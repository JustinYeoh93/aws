terraform {
  backend "s3" {
    bucket  = "ops-aws-prj-terraform"
    key     = "aws-practice"
    region  = "ap-northeast-1"
    profile = "justin-ops-aws-practice"
  }
}