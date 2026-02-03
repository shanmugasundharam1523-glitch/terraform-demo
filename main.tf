resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "jenkins-terraform-demo-${random_id.suffix.hex}"

  tags = {
    Name = "jenkins-terraform-demo"
    Env  = "dev"
  }
}
