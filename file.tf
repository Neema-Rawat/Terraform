resource "aws_instance" "new1" {
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t2.micro"
    key_name = "task1"
    tags = {
        "Name" = "terraform"
    }

provisioner "file" {
        source = "/home/neema/list2.txt"
        destination = "/home/ubuntu/list2.txt"
    }

connection {
        type = "ssh"
        user = "ubuntu"
        private_key = file("/home/neema/Downloads/task1.pem")
        host = self.public_ip
    }
 }
