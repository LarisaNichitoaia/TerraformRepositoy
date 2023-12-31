resource "aws_s3_bucket" "tt-bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "my-first-obj" {
  bucket = aws_s3_bucket.tt-bucket.id
  key    = each.key
  source = "${path.module}/${each.value}"
  
  for_each = var.file_assets
}