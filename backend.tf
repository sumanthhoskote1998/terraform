terraform {
  backend "s3" {
    bucket         = "terraform-state-sumanth1998"     # your S3 bucket name
    key            = "vpc/terraform.tfstate"       # file path inside the bucket
    region         = "us-east-1"                   # region of the bucket
    dynamodb_table = "terraform-locks"             # your DynamoDB table name
    encrypt        = true                          # enable server-side encryption
  }
}