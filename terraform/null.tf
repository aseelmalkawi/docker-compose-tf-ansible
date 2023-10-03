resource "null_resource" "runtime" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = <<EOF
      echo '${tls_private_key.aseelkey.private_key_pem}' > $HOME/.ssh/key.pem && chmod 400  $HOME/.ssh/key.pem
    EOF
  }

  provisioner "local-exec" {
    command = <<EOF
      chmod +x ../ansible/config.sh && chmod +x ../terraform/aseelkey.pem
      sh ../ansible/config.sh ${aws_instance.tf-ec2.public_ip}
    EOF
  }
}