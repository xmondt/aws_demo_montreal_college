resource "aws_s3_bucket" "bucket1" {
    count=2
    tags = {
        name="test-bucket-${count.index}"
        }
}

#Create 5 buckets and disable versioning for all
variable "bucket_count"{
    type=number
    default=5
}
resource "aws_s3_bucket" "bucket_test" {
    count=var.bucket_count
    tags = {
        name="tst-bucket-${count.index}"
        }
}
 
resource "aws_s3_bucket_versioning" "versioning_example_test" {
  count = var.bucket_count
  bucket = aws_s3_bucket.bucket_test[count.index].id
  versioning_configuration {
    status = "Disabled"
  }
}
