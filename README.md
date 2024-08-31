PROJECT OVERVIEW
- Terraform configuration is use in a module directory structure, to create a reusable module that provisions instances,
- then reference this module from your root module. Here's the structure:

terraform-module-project/
├──init-main.tf
├── modules/
│   └── instances/
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
└── init-outputs.tf

ROLES OF DIRECTORIES AND FILES
	Module Directory (modules/instances/):
- main.tf: This file defines the "aws_instance" resource and uses the count parameter to create three instances, 
  the "instance_names" variable is used to set the Name tag for each instance.
- variables.tf: This file defines the variables for the AMI ID, instance type, and instance names.
- outputs.tf: This file defines the output that includes the instance names, IDs, and public IPs.

	Root Directory (terraform-module-project/)
- init-main.tf: the file calls the instances module, passing in the required variables like the AMI ID, instance type, and a list of instance names.
- init-outputs.tf: the file defines an output that references the output from the instances module.

STEPS
- After writing your codes and arranging your directories and files in a modular structure
- I run the terraform codes
- Initializing Terraform: "terraform init"
- confirming the stages terrafrom will excutes the task: "terraform plan"
- Applying the Configuration: "terraform apply"

- NOTE:The output will display the names, IDs, and public IP addresses of the three instances on each lines.


