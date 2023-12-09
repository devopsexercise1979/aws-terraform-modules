variable "region" {
  default = "us-east-2"
}

variable "ami" {
  default="ami-03657b56516ab7912"
}

variable "key_name" {
  default = "ssh_key"
  description = "the ssh key to connect to EC2 machine"
}
variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}


