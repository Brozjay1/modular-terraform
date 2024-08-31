provider "aws" {
    region = "us-east-1"
}

module "instance" {
    source = "./my-module/my-instances"
    ami_id = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"
    instance_names = ["Frontend", "Backend", "Database"]
}