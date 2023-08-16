resource "aws_instance" "new2" {
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t2.micro"
    key_name = "task1"
    tags = {
        "Name" = "terraform"
    }

    provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
    }
 }