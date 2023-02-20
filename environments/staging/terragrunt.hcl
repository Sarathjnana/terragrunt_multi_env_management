terraform {
source = "git::https://github.com/Sarathjnana/aws_vpc_network.git//modules_vpc"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "Staging"
    region_name = "ap-south-2"
    public_az = ["ap-south-2a", "ap-south-2b"]
    private_az = ["ap-south-2a", "ap-south-2b"]
}