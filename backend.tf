terraform {
  backend "s3" {
    bucket = "apoorvbirje7"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "apoorvbirjetable"
  }
}
