provider "aws" {
  access_key = "AWS-ACCESS"
  secret_key = "Key"
  region     = "us-west-2"
}
resource "aws_instance" "example" {
  ami           = "ami-02d0ea44ae3fe9561"
  instance_type = "t2.micro"
}
