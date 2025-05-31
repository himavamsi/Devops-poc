# Provide the machine  type details  which you wanted to use in vm

variable "machine_type" {
  default = "e2-medium"
}

# Provide zone name in which you  want  to create vm
variable "zone_name" {
  default = "us-west1-a"
}

#  Provide the vm name

variable "vm_name" {
  default = "devops-poc-vm"
}

# Check the subnet details in your project and provide it.

variable "subnet_name" {
  default = "devops-poc-subnet"
}
