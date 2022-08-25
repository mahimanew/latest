resource "aws_subnet" "StudentPlacement-integration-connectivity-subnet-1a" {
  vpc_id     = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-connectivity-a
  availability_zone = var.availabilityzone-a

  tags = {
    Name = "StudentPlacement-integration-connectivity-subnet-1a"
  }
}

