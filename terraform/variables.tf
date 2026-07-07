variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-01a00762f46d584a1"
}

variable "key_name" {
  default = "Private-Key"
}

variable "jenkins_instance_type" {
  default = "t3.micro"
}

variable "kubernetes_instance_type" {
  default = "m7i-flex.large"
}

variable "root_volume_size" {
  default = 30
}