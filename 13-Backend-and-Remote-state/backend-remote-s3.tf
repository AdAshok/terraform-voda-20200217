# Use AWSCLI instead of defining Keys here

terraform {   
    backend "s3" { 
     bucket = "terraform-demo-amitvashist"     
      key    = "network/terraform.tfstate"     
      region = "us-east-2"   
#      access_key = ""
#      secret_key = "" 
    } 
}

provider "aws" {
  region = "us-east-2"
 # access_key = ""
 # secret_key = "" 
}

resource "aws_instance" "example" {
  ami           = "ami-0fc20dd1da406780b"
  instance_type = "t2.micro"
}
