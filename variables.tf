variable "bucket_name"{
  type = string,
  default = "tt-bucket"
}
variable "file_assets" {
  type = map(string)
}
