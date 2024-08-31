variable "ami_id" {
    type = string
    description = "AMI ID to use for the instances" 
}

variable "instance_type" {
    type = string
    description = "This is the type of instance to use"
    default = "t2.micro"  
}

variable "instance_names" {
    type = list(string)
    description = "List of instance names"
}