provider "aws" {
    access_key = ""
    secret_key = ""
    region = "eu-north-1"
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "kakashka"

  tags = {
    Name        = "My Terraform Bucket"
    Environment = "Production"
  }
}
resource "aws_s3_bucket_object" "my_folder" {
  bucket = "kakashka"
  key    = "files/"
  source = "/home/kaka/S3/files/lapka.txt"
}
resource "aws_s3_bucket_object" "my_object" {
  bucket = "kakashka"
  key    = "files/lapka.txt"
  source = "files/lapka.txt"
}
output "presigned_url" {
  value = "https://kakashka.s3.eu-north-1.amazonaws.com/files/lapka.txt"
}
