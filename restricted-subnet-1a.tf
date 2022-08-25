resource "aws_subnet" "StudentPlacement-integration-restricted-subnet-1a" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-restricted-a
  availability_zone = var.availabilityzone-a

  tags = {
    Name = "StudentPlacement-integration-restricted-subnet-1a"
  }
}


