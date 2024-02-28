# SSH Public Key
resource "aws_key_pair" "ssh_key" {
  key_name   = "terraform_ssh_key"
  public_key = file("${var.aws_ssh_public_key_file_path}")
}

# Security Group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH access to host"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0",]
  }

  vpc_id = var.aws_vpc_id
}

# Instance
resource "aws_instance" "app_server" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  key_name      = aws_key_pair.ssh_key.key_name
  subnet_id     = var.aws_subnet_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = var.aws_instance_tag
  }
}
