provider "aws" {
    alias = "west"
    region = "us-west-1"
}
resource "aws_instance" "inst1" {
    provider = aws.west
    ami = "ami-0f8e81a3da6e2510a"
    instance_type = "t2.micro"
    tags = {
        "Name" = "instance1"
    } 
}
provider "aws" {
    alias = "east"
    region = "us-east-1"
}
resource "aws_instance" "inst2" {
    provider = aws.east
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    tags = {
        "Name" = "instance2"
    } 
}