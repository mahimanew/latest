resource "aws_subnet" "StudentPlacement-integration-restricted-subnet-1c" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-restricted-c
  availability_zone = var.availabilityzone-c

  tags = {
    Name = "StudentPlacement-integration-restricted-subnet-1c"
  }
}

