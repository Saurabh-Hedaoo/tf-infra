resource "tls_private_key" "rsa4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.keyname
 public_key = tls_private_key.rsa4096.public_key_openssh
}
