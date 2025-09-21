resource "aws_s3_bucket" "backend_s3" {
  bucket = "manu84bucketterraform-20250918"
  tags = {
    Name = "bucketbackend123654"
  }

}
terraform {
  backend "s3" {
    bucket = "manu84bucketterraform-20250918"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
   
   
  }
}
