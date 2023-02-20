terraform {
source = "git::https://github.com/Sarathjnana/aws_vpc_network.git//modules_vpc"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "Development"
    region_name = "ap-south-1"
    public_az = ["ap-south-1a", "ap-south-1b"]
    private_az = ["ap-south-1a", "ap-south-1b"]
}