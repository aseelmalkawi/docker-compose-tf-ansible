
#Create public ec2
resource "aws_instance" "aseel-ec2" {
    
    ami                     = var.ami
    instance_type           = "t2.micro"
    # VPC
    subnet_id               = var.subnet
    # Security Group
    vpc_security_group_ids  = [var.sg_ec2]
    # the Public SSH key
    key_name                = aws_key_pair.aseelkey.key_name
  
    # connection {
    #     user = "ubuntu"
    #     private_key = "${file("tfproject.pem")}"
    # }

    tags = {
        Name = "aseel-ec2"
    }
}
