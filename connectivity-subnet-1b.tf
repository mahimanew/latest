resource "aws_subnet" "StudentPlacement-integration-connectivity-subnet-1b" {
  vpc_id     = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-connectivity-b
  availability_zone = var.availabilityzone-b

  tags = {
    Name = "StudentPlacement-integration-connectivity-subnet-1b"
  }
}
