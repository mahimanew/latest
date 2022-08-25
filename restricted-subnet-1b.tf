resource "aws_subnet" "StudentPlacement-integration-restricted-subnet-1b" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-restricted-b
  availability_zone = var.availabilityzone-b

  tags = {
    Name = "StudentPlacement-integration-restricted-subnet-1b"
  }
}