resource "aws_instance" "this" {
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = var.instance_type

    tags =  {
        Name = var.instance_names[count.index]
    }
}