resource "aws_instance" "new2" {
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t2.micro"
    key_name = "task1"
    tags = {
        "Name" = "terraform"
    }

 provisioner "remote-exec" {
    inline = [ 
        "mkdir hello",
        "date >>time.txt"
 ]
    }

connection {
        type = "ssh"
        user = "ubuntu"
        private_key = file("/home/neema/Downloads/task1.pem")
        host = self.public_ip
    }
 }