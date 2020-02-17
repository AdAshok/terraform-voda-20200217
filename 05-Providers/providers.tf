provider "aws" {
  access_key = "XXXXX"
  secret_key = "XXXXX"
  region     = "us-east-2"
}

provider "aws" {
  access_key = "XXXXX"
  secret_key = "XXXXX"
  alias      = "myregio"
  region     = "us-west-2"
}

resource "aws_instance" "us_west_example" {
  provider      = "aws.myregio"
  ami           = "ami-02d0ea44ae3fe9561"
  instance_type = "t2.micro"
}

resource "aws_instance" "us_east_example" {
  ami           = "ami-0e38b48473ea57778"
  instance_type = "t2.micro"
}
