
// To Generate Private Key
resource "tls_private_key" "aseelkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


// Create Key Pair for Connecting EC2 via SSH
resource "aws_key_pair" "aseelkey" {
  key_name   = "aseelkey"
  public_key = tls_private_key.aseelkey.public_key_openssh
}

# Save PEM file locally
resource "local_file" "aseelkey" {
  content  = tls_private_key.aseelkey.private_key_pem
  filename = "aseelkey.pem"
}

