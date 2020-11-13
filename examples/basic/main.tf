provider "aws" {
  region = "ap-southeast-1"
}

module "key" {
  source = "../../"
}
