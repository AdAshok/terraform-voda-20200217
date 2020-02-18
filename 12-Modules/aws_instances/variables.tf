variable "amis" {
  type = "map"
  default = {
    us-east-2 = "ami-0fc20dd1da406780b"
    ap-south-1 = "ami-0fc20dd1da406780b"
  }
}

variable "region" {
  default="us-east-2"
}

variable "total_instances" {
  default=1
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
