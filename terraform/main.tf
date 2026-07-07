resource "aws_security_group" "devops_sg" {

  name = "production-devops-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "production-devops-sg"
  }

}

resource "aws_instance" "jenkins_server" {

  ami                    = var.ami_id
  instance_type          = var.jenkins_instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "jenkins-server"
  }

}

resource "aws_instance" "k8s_master" {

  ami                    = var.ami_id
  instance_type          = var.kubernetes_instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "k8s-master"
  }

}

resource "aws_instance" "k8s_worker" {

  ami                    = var.ami_id
  instance_type          = var.kubernetes_instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "k8s-worker"
  }

}