provider "aws" {
  region  = "ap-northeast-1"
  profile = "justin-ops-aws-practice"
  default_tags {
    tags = {
      project = "aws-practice"
    }
  }
}