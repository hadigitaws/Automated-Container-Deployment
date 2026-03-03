variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "public_key_path" {
  description = "Path to SSH public key"
  default     = "/home/hadi/.ssh/id_rsa.pub"
}
