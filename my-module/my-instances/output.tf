output "instance_info" {
    value = [for instance in aws_instance.this:
        "${instance.tags["Name"]} | ID: ${instance.id} | IP: ${instance.public_ip}"
    ]
}